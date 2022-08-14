echo "Remounting the product partition as rw"
mount -o remount,rw /
echo "Copying Standard Layout"
ls /storage/emulated/0/Remove_HP2.kl && cp /storage/emulated/0/Remove_HP1.kl /storage/emulated/0/Generic.kl 
cp /storage/emulated/0/Generic.kl /system/usr/keylayout
ls /storage/emulated/0/Remove_HP1.kl && cp /storage/emulated/0/Remove_HP2.kl /storage/emulated/0/Vendor_2020_Product_0111.kl
cp /storage/emulated/0/Vendor_2020_Product_0111.kl /system/usr/keylayout
echo "Activate Standard Layout"
chmod 644 /system/usr/keylayout/*
echo "Removing Temp Files"
rm /storage/emulated/0/Generic.kl
rm /storage/emulated/0/Vendor_2020_Product_0111.kl
echo "Rebooting"
reboot
