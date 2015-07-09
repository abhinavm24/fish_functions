function printusage
       echo "Usage:"
       echo "    simplyhiredvpn start|stop"
end

function setstate
   set state $argv[1]
   if [ $state = 'start' ]
       sudo openvpn --config ~/.config/openvpn/simplyhired.ovpn --daemon simplyhiredvpn
   else if [ $state = 'stop' ]
       ps -e | grep openvpn | awk "{ print $1 }" | xargs sudo kill
    if test -f /tmp/russelln@xen-russelln-1.ksjc.sh.colo:22
	rm /tmp/russelln@xen-russelln-1.ksjc.sh.colo:22
    end
    pkill -9 sshfs
    fusermount -uz /tmp/xenbox/ad-web/

   else
       printusage
   end
end

function simplyhiredvpn
   if test -n $argv
       setstate $argv
       echo "Waiting for the VPN"
       waitforvpn.py
   else 
       printusage
   end
end
