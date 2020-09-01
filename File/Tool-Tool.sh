# Kiểm tra cập nhật
echo
echo " Kiểm tra cập nhật..."
echo
kiemtra=`curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/README.md | egrep "Version="`
if [ "$kiemtra" == "Version=1.2" ];then
echo "
 Mới nhất
 "
else
curl -# https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/Tool-Tool.sh -o /sdcard/Tool-Tool2
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
cp -rf /sdcard/Tool-Tool2 /bin
chmod -R 777 /bin/Tool-Tool2
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
rm -rf /sdcard/Tool-Tool2
su -c "Tool-Tool"
fi
if [ -e /sdcard/Tool-Tool ];then
echo
else
curl -# https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/Tool-Tool.txt -o /sdcard/TT2
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
tar -jxf /sdcard/TT2 -C /
rm -rf /sdcard/TT2
chmod -R 777 /bin/7za
chmod -R 777 /bin/Tool-Tool
chmod -R 777 /bin/Tool-Chmod
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
if [ -e /bin/zip ];then
echo
else
curl -# https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/zip.7z -o /sdcard/TT3
cd /storage/emulated/0/Tool-Tool/.tmp
7za x -y /sdcard/TT3
cp -rf /sdcard/Tool-Tool/.tmp/zip/* /bin
chmod -R 777 /bin/zip
chmod -R 777 /bin/zipsigner-3.0-dexed.jar
chmod -R 777 /bin/zipsigner
chmod -R 777 /bin/zipalign
rm -rf /sdcard/Tool-Tool/.tmp/zip
rm -rf /sdcard/TT3
fi
fi

Tool ()
{
clear
#Mặc định – 0 Đen – 30 Đỏ – 31 Xanh lá – 32 Vàng – 33
#Xanh dương – 34 Hồng – 35 Xanh lam – 36 Trắng – 37
echo
echo
echo
echo -e "\e[32;1m TOOL TOOL MIUI \e[0m" 
echo 
echo
echo 
echo -e "\e[31;1;2m Nhập số tương ứng với các hành động bên dưới \e[0m"
echo
echo -e "\e[32;1;2m Menu Chính: \e[0;1;2m"
echo "
 1) Cài đặt Tool Mod
 
 2) Mod Theme Mtz
 
 3) Cài File và Apk
 
 4) Xoá App và File
 
 5) Thanh trạng thái
 
 6) Màn hình chính và Tiện ích
 
 7) Apktool X
 
 8) Nhiều tính năng khác
 
 9) Xoá Tool Mod
 
 10) Đăng nhập Tài khoản
 
 11) Khởi động lại máy
 
 12) Thoát khỏi Tool-Tool"
echo
echo -e "\e[32;1m Phát triển bởi kakathic - Chúc các bạn vui vẻ."
close ()
{
echo -e "\e[36;1m\c"
echo -e "\c Nhập số sai vui lòng nhập lại."
}
echo -e "\e[31;5m"
echo -e "\c Nhập số: \c"
echo -en "\e[33;1m"
read kk
echo
echo -en "\e[0m"
if [ "$kk" == "1" ];then
sgmegne ()

{
clear
echo
echo -e "\e[32;1m Mod Giao diện \e[0;1m"
echo
echo
echo "\c > Nó sẽ thay icon của nga thành icon Mod lại nhìn

 đẹp hơn, thêm âm lịch ở trên thanh trạng thái
 
 thêm menu nguồn tiện ích hơn, thêm ảnh đẹp
 
 thêm một số theme.
 
 
 1) Tiếp tục
 
 2) Trở lại Menu chính
 
 
 Nhập: "
 read theme

if [ "$theme" == "1" ];then
echo
echo " Đang tải dữ liệu..."
echo
if [ -e /storage/emulated/0/Tool-Tool/.tmp/Toolmod ];then
echo
else
curl -# --limit-rate 10000k http://www.mediafire.com/file/y2u7xvsrddj6gwj/Tool-Mod.7z/file -o /sdcard/filetmp.k
link1=`grep "http://download" /sdcard/filetmp.k`
link2=`echo $link1 | sed -e 's/href="//g' -e 's/">//g'`
curl -# $link2 -o /sdcard/Tool-Tool/.tmp/Toolmod
rm -rf /sdcard/filetmp.k
fi
check=`getprop "ro.build.host"`
if [ "$check" == "xiaomi.eu" ];then
echo
else
curl -# http://www.mediafire.com/file/9ktktwdvdk1upwe/fonts.7z/file -o /sdcard/filetmp.k
link11=`grep "http://download" /sdcard/filetmp.k`
link22=`echo $link11 | sed -e 's/href="//g' -e 's/">//g'`
curl -# $link22 -o /sdcard/Tool-Tool/.tmp/Font
rm -rf /sdcard/filetmp.k
fi

cd /storage/emulated/0/Tool-Tool/.tmp
7za x -y /storage/emulated/0/Tool-Tool/.tmp/Toolmod
7za x -y /storage/emulated/0/Tool-Tool/.tmp/Font
cp -rf /storage/emulated/0/Tool-Tool/.tmp/fonts /storage/emulated/0/Tool-Tool/.tmp/system
rm -rf /storage/emulated/0/Tool-Tool/.tmp/fonts
clear
echo
echo " Tiến hành cài đặt..."
echo
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
rm -rf /system/media/theme/default
rm -rf /system/etc/precust_theme
rm -rf /system/media/theme/miui_mod_icon
rm -rf /system/media/theme/.data
rm -rf /system/media/wallpaper
rm -rf /data/system/theme_magic/customized_icons
cp -rf /storage/emulated/0/Tool-Tool/.tmp/sdcard/* /sdcard
cp -rf /storage/emulated/0/Tool-Tool/.tmp/system/* /system
rm -rf /storage/emulated/0/Tool-Tool/.tmp/sdcard
rm -rf /storage/emulated/0/Tool-Tool/.tmp/system
su -c "Tool-Chmod"
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a Xong.

 Chat chữ bất kỳ để Reset lại máy."
 read
reboot
clear
sgmegne return
elif [ "$theme" == "2" ];then
Tool return
else
echo -n "\c
 Sai số vui lòng nhập lại."
sleep 2
sgmegne return
fi
}
sgmegne return

elif [ "$kk" == "2" ];then
echo " Đúng"
elif [ "$kk" == "3" ];then
clear
echo
echo
echo -e "\e[31;1m Cài đặt hoặc Cập nhật App, tệp vào hệ thống\e[0;1m



"

echo "\c Chép file từ /sdcard/Tool-Tool/ system và vendor
 
 vào hệ thống.
 

 1) Tiếp tục
 
 2) Trở lại Menu chính
 
 
 Nhập: "
read app
if [ "$app" == "1" ];then
clear
echo
echo
echo "\c Đang tiến hành sao chép";sleep 1;echo "\c.";sleep 1;echo "\c.";sleep 1;echo "\c.";
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mount -o rw,remount /vendor 2> /dev/null
cp -rf /sdcard/Tool-Tool/system/* /system
cp -rf /sdcard/Tool-Tool/vendor/* /vendor
su -c "Tool-Chmod"
mount -o ro,remount /vendor 2> /dev/null
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a - Xong.

 Chat chữ bất kỳ để khởi động lại máy."
read
reboot
else
menu return
fi
elif [ "$kk" == "4" ];then
adxoa ()
{
clear
echo "
"
echo -e "\e[32;1m Xoá ứng dụng tự động hoặc đường dẫn \e[0;1m



"
echo "\c Kiểu xoá dữ liệu App và file

 Lên khởi động lại máy khi xoá xong



 1) Xoá đề xuất
 
 2) Xoá theo đường dẫn
 
 3) Trở lại



 Nhập: "
 read xoa
if [ "$xoa" == "1" ];then
clear
echo -e "\c 
 \e[31;1mXoá đề xuất gồm các ứng dụng sau: \e[0;1mGia đình, Email
 
 Thanh toán China, Mi Browser, Âm thanh Google, 

 Dịch vụ in Google, Mi Drive, Google, Sức khỏe, Lens
  
 MiMover.
 
 
 1) Tiếp tục

 2) Quay lại
 
 
 Nhập: "
read xoa1
if [ "$xoa1" == "1" ];then
clear
echo "\c
 Đang tiến hành dọn dẹp app.";sleep 1;echo "\c.";sleep 1;echo "\c.";sleep 1;echo "\c.";
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mount -o rw,remount /cust 2> /dev/null
rm -fr /system/priv-app/MiBrowser
rm -fr /system/app/PaymentService
rm -fr /system/app/greenguard
rm -fr /system/app/Email
rm -fr /system/app/MiDrive
rm -fr /system/product/app/CloudPrint2
rm -fr /system/product/app/SoundPickerGoogle
rm -fr /cust/app
rm -fr /system/priv-app/Browser
rm -fr /system/app/Health
rm -fr /system/priv-app/MiMover
rm -fr /system/app/Lens
rm -fr /system/product/priv-app/Velvet
pm disable com.google.android.googlequicksearchbox
pm disable com.miui.huanji
pm disable com.mi.health
pm disable com.android.email
pm disable com.android.browser
mount -o ro,remount /cust 2> /dev/null
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a

 Xong.
 
 Chat phím bất kỳ để quay lại."
read
adxoa return
else
adxoa return
fi



elif [ "$xoa" == "2" ];then
echo "\c
 Xoá ứng dụng hoặc tệp tin theo đường dẫn


 Ví dụ: /system/app/Email

 0) Trở lại
  
  
 Nhập: "
read xoa2
if [ "$xoa2" == "0" ];then
adxoa return
else
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mount -o rw,remount /vendor 2> /dev/null
mount -o rw,remount /cust 2> /dev/null
rm -rf $xoa2
mount -o ro,remount /cust 2> /dev/null
mount -o ro,remount /vendor 2> /dev/null
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a
 Xong.
 
 Chat phím bất kỳ để quay lại."
read
adxoa return
fi

elif [ "$xoa" == "3" ];then
clear
Tool return
else
echo "\c
 Nhập số sai vui lòng nhập lại."
sleep 2
adxoa return
fi
}
adxoa return
elif [ "$kk" == "5" ];then
echo " Đúng"
elif [ "$kk" == "6" ];then
echo " Đúng"
elif [ "$kk" == "7" ];then
# Mount rw
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
# Tải 7za
if [ -e /system/bin/7za ];then
echo
else
curl -# https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/bin/7za -o /system/bin/7za
chmod -R 777 /system/bin/7za
fi
# Tải Apktool
if [ -e /sdcard/Tool-Tool/.tmp/Apktool ];then
echo
else
echo
echo "> Tải dữ liệu có thể mất đến vài phút..."
echo
curl -# http://www.mediafire.com/file/lycmt3rgxrnfyzo/Apktool.7z/file -o /sdcard/filetmp.k
link1=`grep "http://download" /sdcard/filetmp.k`
link2=`echo $link1 | sed -e 's/href="//g' -e 's/">//g'`
curl -# $link2 -o /sdcard/Tool-Tool/.tmp/Apktool
rm -rf /sdcard/filetmp.k
fi
# Giải nén Apktool và Cấp quyền hoạt động
if [ -e /bin/apktool ];then
echo
else
cd /sdcard/Tool-Tool/.tmp
7za x -y /sdcard/Tool-Tool/.tmp/Apktool
cp -rf data /
cp -rf system /
rm -rf data
rm -rf system
chmod -R 777 /bin/apktool
chmod -R 777 /data/data/per.pqy.openjdk
chmod -R 777 /data/local/Tool-Apk
fi
# Cài đặt thành công
if [ -e /data/data/per.pqy.openjdk ];then
echo
else
cp -rf /data/local/Tool-Apk/per.pqy.openjdk /data/data
chmod -R 777 /data/data/per.pqy.openjdk
fi
if [ -e /data/local/Tool-Apk/16.apk ];then
echo
else
apktool if /system/app/miui/miui.apk
apktool if /system/app/miuisystem/miuisystem.apk
apktool if /system/framework/framework-res.apk
apktool if /system/framework/framework-ext-res/framework-ext-res.apk
fi
# Mount ro
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo
apktool ()
{
clear
clear
echo
echo
echo -e "\e[32;1m Apktool X 8.7.7 Mod by kakathic \e[0;1m"
echo
echo
echo "\c Vui lòng chọn các bước sau đây:
 
 
 1) Apktool decompile
 
 2) Apktool recompile

 3) Import framework
 
 4) Trở lại Menu chính
 
 
 Nhập: "
 read apk2
if [ "$apk2" == "1" ];then
clear
echo
echo -e "\e[32;1m Apktool decompile \e[0;1m"
echo 
echo
echo "\c Vui lòng nhập đường dẫn đến file apk

 lưu ý: Tên của file không được có dấu

 nên viết liền không dấu.


 ví dụ: /sdcard/a123.apk
 
 Nhập 0) Trở lại
 
 
 Nhập: "
 read apkd
if [ "$apkd" == "0" ];then
apktool return
else
cd /sdcard/Tool-Tool/Apk-d
echo
echo "\c Chọn cách decompile apk


 1) Decompile res

 2) Decompile All
 
 
 Nhập: "
 read apbb
 echo
if [ "$apbb" == "2" ];then
su -c "apktool d -sf $apkd"
else
su -c "apktool d -f $apkd"
fi
echo
echo "\c Được lưu ở: "
echo -e "\e[33;1m/sdcard/Tool-Tool/Apk-d \e[0;1m"
echo
echo
echo "\c Chat phím bất kỳ để trở lại."
read
apktool return
fi
elif [ "$apk2" == "2" ];then
clear
echo
echo -e "\e[32;1m Apktool recompile \e[0;1m"
echo 
echo
echo " Vui lòng nhập tên thư mục vừa bung

 ví dụ: Miuihome
 
 Thư mục có sẵn:"
echo
echo -e "\e[31;1m"
cd /sdcard/Tool-Tool/Apk-d
echo "\c "
ls -p
echo -e "\e[0;1m"
echo
echo "\c Nhập 0) Trở lại
 
 
 Nhập: "
 read apkd
if [ "$apkd" == "0" ];then
apktool return
else
echo
echo "\c Nhập tên Apk
 
 ví dụ: Miuihome
 
 
 Nhập: "
 
 read tenapk
apkd2=/sdcard/Tool-Tool/Apk-d/$apkd
echo
cd /sdcard/Tool-Tool/Apk-b
su -c "apktool b -f $apkd2 -o $tenapk.apk"
echo
echo "\c Bạn có muốn Sign Apk không ?
 
 
 1) Có

 2) Không


 Nhập: "
 read signd
echo
if [ "$signd" == "1" ];then
sh /data/local/Tool-Apk/apktool/dex2jar/d2j-apk-sign.sh -f /sdcard/Tool-Tool/Apk-b/$tenapk.apk -o /sdcard/Tool-Tool/Apk-b/$tenapk.sign.apk
echo
echo
echo "\c Được lưu ở "
echo -e "\e[33;1m/sdcard/Tool-Tool/Apk-b/$tenapk.sign.apk \e[0;1m"
echo
echo
echo "\c Chat phím bất kỳ để trở lại."
read
apktool return
else
echo
echo "\c Được lưu ở "
echo -e "\e[33;1m/sdcard/Tool-Tool/Apk-b/$tenapk.apk \e[0;1m"
echo
echo
echo "\c Chat phím bất kỳ để trở lại."
read
apktool return
fi

fi
elif [ "$apk2" == "3" ];then
clear
echo
echo -e "\e[32;1m Import framework \e[0;1m"
echo 
echo "\c Nhập đường dẫn tới apk mún thêm.

 ví dụ: /system/app/miui/miui.apk
 
 Nhập 0) Trở lại

 
 Nhập: "
 read importf
if [ "$importf" == "0" ];then
apktool return
else
echo
su -c "apktool if $importf"
echo
echo
echo "\c Chat phím bất kỳ để trở lại."
read
apktool return
fi
elif [ "$apk2" == "4" ];then
clear
Tool return
else
echo
echo "\c Nhập số sai vui lòng nhập lại:"
sleep 2
apktool return
fi
}
apktool return
elif [ "$kk" == "8" ];then
echo " Đúng"
elif [ "$kk" == "9" ];then
echo
elif [ "$kk" == "10" ];then
echo
elif [ "$kk" == "11" ];then
su -c "reboot"
elif [ "$kk" == "12" ];then
clear
exit
else
close return; sleep 2;Tool return
fi
}
Tool return

