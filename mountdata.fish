function mountdata
 sudo cryptsetup open /dev/sdb1 wddata
 sudo mount /dev/mapper/wddata /media/data
end
