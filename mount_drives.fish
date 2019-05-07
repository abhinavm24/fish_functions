function mount_drives
 echo "PCloud"
 cryfs ~/pCloudDrive/encrypted ~/documents/pcloud_drive
 echo
 echo "Data HP"
 cryfs ~/data/hp ~/documents/data/hp
 echo
 echo "Drop Box"
 cryfs ~/Dropbox/encrypted ~/documents/drop_box
end
