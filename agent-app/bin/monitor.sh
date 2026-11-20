#!/usr/bin/env bash

AGENT_HOME="${AGENT_HOME:-/home/agent-admin/agent-app}"
APP_NAME="agent-app-linux-x86"
PORT=15034

AGENT_LOG_DIR="/var/log/agent-app"
AGENT_LOG_FILE="$AGENT_LOG_DIR/monitor.log"

MAX_LOG_SIZE=$((10*1024*1024))
MAX_LOG_FILES=10

error_exit(){
	echo "[ERROR] $1" >&2
	exit 1 
}

warning(){
	echo "[WARNING] $1"
}

check_process(){
	PID=$(pgrep -fo "$APP_NAME")
	if [ -n "$PID" ]; then
		echo "[OK] Process found (PID:$PID)"
	else
		error_exit "No Process"
	fi   
}

check_port(){
	if ss -lntH | grep -q ":${PORT}"; then
		echo "[OK] LISTENING (PORT:$PORT)"
	else 
		error_exit "No PORT"
	fi
}

check_state(){
	if systemctl is-active --quiet ufw; then
		echo "Status: Active"
	else 
		error_exit "Status: Inactive"
	fi
}

get_cpu_usage(){
	read cpu user nice system idle iowait irq softirq steal guest guest_nice < /proc/stat
	idle1=$idle
	total1=$((user + nice + system + idle + iowait + irq + softirq + steal))
	sleep 1
	read cpu user nice system idle iowait irq softirq steal guest guest_nice < /proc/stat	
	idle2=$idle
	total2=$((user + nice + system + idle + iowait + irq + softirq + steal))

	idle_diff=$((idle2-idle1))
	total_diff=$((total2-total1))
	if (( total_diff >0 )); then
		used_diff=$((total_diff - idle_diff))
		CPU_USAGE=$((100 * used_diff / total_diff))
	else
		CPU_USAGE=0
	fi
}

get_disk_usage(){
	DISK_USED=$(df -P / | awk 'NR==2 {print $5}')
	DISK_USED="${DISK_USED%\%}"
}

get_mem_usage(){
	read total used < <(free -m | awk '/^Mem:/ {print $2, $3}')
	MEM_USAGE=$((100*used/total))
}

check_thresholds(){
	if ((CPU_USAGE >= 20)); then
		warning "CPU threshold exceeded"
	fi
	if ((MEM_USAGE >= 10)); then
		warning "MEM threshold exceeded"
	fi
	if ((DISK_USED >= 80)); then
		warning "DISK threshold exceeded"
	fi	
}

rotate_log(){
    if [[ ! -f "$LOG_FILE" ]]; then
        return
    fi

    local FILE_SIZE=$(stat -c%s "$LOG_FILE")

    if (( FILE_SIZE >= MAX_SIZE )); then

        rm -f "${LOG_FILE}.9"

        for ((i=8; i>=1; i--)); do
            if [[ -f "${LOG_FILE}.${i}" ]]; then
                mv "${LOG_FILE}.${i}" "${LOG_FILE}.$((i+1))"
            fi
        done

        mv "$LOG_FILE" "${LOG_FILE}.1"

        touch "$LOG_FILE"

        echo "[INFO] Log rotated"
    fi
}

get_log(){
	TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S' )
	echo "[$TIMESTAMP] PID:$PID CPU:$CPU_USAGE% MEM:$MEM_USAGE% DISK:$DISK_USED%" >> "$AGENT_LOG_FILE"
	echo "[INFO] Log appended: $AGENT_LOG_FILE"
}

main(){
	echo "STARTING MONITORING....."
	
	check_process 
	check_port
	check_state

	get_cpu_usage
	get_mem_usage
	get_disk_usage

	check_thresholds
	rotate_log
	get_log
	echo "Monitoring completed."
}

main "$@"


