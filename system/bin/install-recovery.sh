#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31421774:03bf527cb14d06f497e1b9073e9d71d728e1aa0a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:29341002:ef94aa291be2fec293c35fe040c50e006e7b2d8d EMMC:/dev/block/bootdevice/by-name/recovery 03bf527cb14d06f497e1b9073e9d71d728e1aa0a 31421774 ef94aa291be2fec293c35fe040c50e006e7b2d8d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
