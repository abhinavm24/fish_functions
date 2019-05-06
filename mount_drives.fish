function mount_drives
 echo "\nPCloud"
 cryfs ~/pCloudDrive/encrypted ~/documents/pcloud_drive
 echo "\nData HP"
 cryfs ~/data/hp ~/documents/data/hp
 echo "\nDrop Box"
 cryfs ~/Dropbox/encrypted ~/documents/drop_box
end
