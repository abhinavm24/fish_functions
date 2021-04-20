function mountdata --argument-names "device"
  if test -n "$device"
    sudo cryptsetup open /dev/$device wddata
  else
    sudo cryptsetup open /dev/sdb1 wddata
  end
 sudo mount /dev/mapper/wddata /media/data
end
