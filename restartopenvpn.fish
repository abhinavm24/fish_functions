function restartopenvpn
    if [ (count $argv) -gt 1 ]
       echo "Removing shared connection"
       set SSHCONNECTION /tmp/openvpn*:22
       if test -f $SSHCONNECTION
	  rm $SSHCONNECTION
        end
    end
    echo "Killing sshfs"    
    pkill -9 sshfs
    echo "Unmounting sshfs mount"
    fusermount -uz $LOCALMOUNT
    echo "Restarting openvpn"
    openvpnconnect start
end
