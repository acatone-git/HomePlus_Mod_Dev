echo "Remounting the product partition as rw"
mount -o remount,rw /
echo "Copying Modified Layout"
cp /storage/emulated/0/HomePlus_Layout.kl /storage/emulated/0/Generic.kl 
cp /storage/emulated/0/Generic.kl /system/usr/keylayout
echo "Activating Modified Layout"
chmod 644 /system/usr/keylayout/*
echo "Removing the Limited Layout"
ls /storage/emulated/0/Generic.kl && rm -R /system/usr/keylayout/Vendor_202*
echo "Removing Temp Files"
rm /storage/emulated/0/Generic.kl
echo "Rebooting"
reboot
