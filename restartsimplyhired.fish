function restartsimplyhired
    if test -f /tmp/russelln@xen-russelln-1.ksjc.sh.colo:22
	rm /tmp/russelln@xen-russelln-1.ksjc.sh.colo:22
    end
    pkill -9 sshfs
    fusermount -uz /tmp/xenbox/ad-web/
    simplyhiredvpn start
end
