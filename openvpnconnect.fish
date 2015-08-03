function printusage
       echo "Usage:"
       echo "    openvpnconnect start|stop"
       echo "Assumes '~/.config/openvpn/openvpnconifg.ovpn' file exists"
       echo "Also assumes executable `waitforvpn` on the path"
end

function setstate
   set state $argv[1]
   if [ $state = 'start' ]
       sudo openvpn --config ~/.config/openvpn/openvpnconfig.ovpn --daemon vpndaemon
   else if [ $state = 'stop' ]
       # be careful here -- the awk command will fail with double
       # quotes for some reason   
       ps -e | grep openvpn | awk '{ print $1 }' | xargs sudo kill
   else
       printusage
   end
end

function openvpnconnect
   if test -n $argv
       setstate $argv
       echo "Waiting for the VPN"
       # this assumes the ``waitforvpn`` command is defined somewhere
       # (mine is a python command)
       waitforvpn
   else
       printusage
   end
end
