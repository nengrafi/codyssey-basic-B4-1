ls
export AGENT_HOME = home/agent-core/agent-app
export $AGENT_HOME = home/agent-core/agent-app
export AGENT_HOME=home/agent-core/agent-app
export AGENT_HOME=/home/agent-core/agent-app
echo $AGENT_HOME 
export AGENT_PORT=15034
echo $AGENT_PORT 
ls
mkdir upload_files
chown agent-admin:agent-common "$AGENT_HOME/upload_files"
ls
cd ..
ls
cd agent-admin/
ls
rm -r upload_files/
mkdir agent-app
ls
mkdir upload_files
chown agent-admin:agent-common "$AGENT_HOME/upload_files"
echo AGENT_HOME=/home/agent-admin/agent-app
chown agent-admin:agent-common "$AGENT_HOME/upload_files"
export AGENT_HOME=/home/agent-admin/agent-app
chown agent-admin:agent-common "$AGENT_HOME/upload_files"
echo $AGENT_HOME 
ls
rm -r upload_files/
chown agent-admin:agent-common "$AGENT_HOME/upload_files"
ls
cd agent-app/
mkdir upload_files
chown agent-admin:agent-common "$AGENT_HOME/upload_files"
export AGENT_UPLOAD_DIR=$AGENT_HOME/upload_files
chomd 2770 "$AGENT_UPLOAD_DIR"
chmod 2770 "$AGENT_UPLOAD_DIR"
setfacl -d -m g:agent-common:rwx "$AGENT_UPLOAD_DIR"
apt install acl
sudo apt insatll acl
apt install acl
exit
export AGENT_HOME=/home/agent-admin/agent-app
export AGENT_PORT=15034
export AGENT_UPLOAD_DIR=$AGENT_HOME/upload_files
setfacl -d -m g:agent-common:rwx "$AGENT_UPLOAD_DIR"
mkdir $AGENT_HOME/api_keys
chwon agent-admin:agent-core "$AGENT_HOME/api_keys"
chown agent-admin:agent-core "$AGENT_HOME/api_keys"
chmod 2770 "$AGENT_HOME/api_keys"
sefacl -d -m g:agent-core:rws "$AGENT_HOME/api_keys"
setfacl -d -m g:agent-core:rws "$AGENT_HOME/api_keys"
setfacl -d -m g:agent-core:rwx "$AGENT_HOME/api_keys"
chwon agent-admin:agent-core /var/log/agent-app
chown agent-admin:agent-core /var/log/agent-app
mkdir /var/log/agent-app
sudo mkdir /var/log/agent-app
exit
chown agent-admin:agent-core /var/log/agent-app
exit
getfacl
getfacl "$AGENT_HOME/upload_files"
echo $AGENT_HOME
export AGENT_HOME=/home/agent-admin/agent-app
echo $AGENT_HOME
getfacl "$AGENT_HOME/upload_files"
getfacl "$AGENT_HOME/api_keys"
export AGENT_PORT=15034
export AGENT_UPLOAD_DIR=$AGENT_HOME/upload_files
export AGENT_LOG_DIR=/var/log/agent-app
echo "agent_api_key_test" > "$AGENT_HOME/api_keys/t_secret.key"
export AGENT_KEY_PATH="$AGENT_HOME/api_keys/t_secret.key"
cp "/mnt/c/Users/NangR/Downloads/agent-app.zip" $AGENT_HOME/agent-app.zip
ls
unzip agent-app/
ls
cd agent-app/
ls
unzip agent-app.zip 
ls
rm -r __MACOSX/
rm -r agent-app-linux-x86 
rm -r agent-app-linux-arm64 
ls
unzip agent-app.zip 
rm -r agent-app.zip
ls
./agent-app-linux-x86 
export AGENT_HOME=/home/agent-admin/agent-app
export AGENT_PORT=15034
export AGENT_UPLOAD_DIR=$AGENT_HOME/upload_files
export AGENT_KEY_PATH=$AGENT_HOME/api_keys/t_secret.key
export AGENT_LOG_DIR=/var/log/agent-app
./agent-app-linux-x86 
export AGENT_KEY_PATH=$AGENT_HOME/api_keys
./agent-app-linux-x86 
ln -s t_secret.key "$AGENT_HOME/api_keys/secret.key"
./agent-app-linux-x86 
mkdir $AGENT_HOME/bin/monitor.sh
mkdir $AGENT_HOME/bin
su -iu agent-dev
su - agent-dev
sudo - agent-dev
exit
ls $AGENT_HOME
cd agent-app/
ls
chown g:agent-admin:agent-core
chown agent-admin:agent-core .
ls -lh
ls -lh ..
rm -r bin
exit
ls
cd agent-app/
ls
mkdir bin
ls
ls -lh bin
ls -lh 
chown agent-admin:agent-core
chown agent-admin:agent-core ./bin
ls
ls -lh
exit
ls
chown agent-admin:agent-common .
cd ..
ls -lh
chmod 770 agent-admin/
exit
crontab -e
tail -f /home/agent-admin/agent-app/monitor.log
crontab -l
crontab -e
crontab -l
tail -f /home/agent-admin/agent-app/monitor.log
sudo systemctl status cron
exit
crontab -e
crontab -l
exit
tail -n 10 /home/agent-admin/agent-app/monitor.log
tail -f /home/agent-admin/agent-app/monitor.log
nano /home/agent-admin/agent-app/bin/monitor.sh 
exit
/home/agent-admin/agent-app/bin/monitor.sh
ls
tail -f /home/agent-admin/agent-app/monitor.log
cd agent-app/
ls
cd bin/
ls
ls -lh
chown agent-dev:agent-core ./monitor.sh
id
exit
tail -f /home/agent-admin/agent-app/monitor.log
/home/agent-admin/agent-app/bin/monitor.sh
nano /home/agent-admin/agent-app/bin/monitor.sh
exit
cd agent-app/
./bin/monitor.sh 
sudo ss -lntp | grep 15034
ps -fp 8372
ss -lnt | grep 15034
su - agent-dev
./bin/monitor.sh 
grep -A 15 'check_state()' ~/agent-app/bin/monitor.sh
exit
