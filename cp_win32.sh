# /bin/sh

# copy a file to the XP machine for testing

#ftp xp << EOT
#cd /Users/me/Desktop/xplane/Resources/plugins
#bin
#put $1
#EOT

WINDOWS_SHARE="\\\\jb-notebook3\Users\jblie_000\Desktop\X-Plane 10\Resources\plugins"
MOUNTPOINT=/mnt/windows

mountpoint -q $MOUNTPOINT
if [ $? -ne 0 ]; then
	sudo mount -t cifs -o user="Jorg Bliesener",uid=jbliesener,gid=jbliesener "$WINDOWS_SHARE" "$MOUNTPOINT"
fi

unzip -o -d "$MOUNTPOINT" target/TeensyControls.zip
