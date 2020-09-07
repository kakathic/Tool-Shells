# Kiểm tra cập nhật
clear
echo "

\e[0;1mKiểm tra cập nhật...
"
kiemtra=`curl -0# https://raw.githubusercontent.com/kakathic/tool-tool/master/README.md | egrep "Version="`
if [ "$kiemtra" == "Version=1.5" ];then
echo "
Mới nhất
 "
elif [ $kiemtra ];then
# kakathic - Tool Mod - Hiếu Tools
curl -0# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Tool.sh -o /sdcard/MIUI/Tool-Tool
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mv -f /sdcard/MIUI/Tool-Tool /bin/Tool-Tool
chmod -R 777 /bin/Tool-Tool
rm -fr /data/local/Tool-Apk
rm -fr /bin/Tool-Chmod
rm -fr /storage/emulated/0/Tool-Tool/.tmp/*
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
su -c "Tool-Tool"
else
echo 'Không có mạng'
fi
if [ $kiemtra ];then
if [ -e /bin/Tool-Chmod ];then
echo
else
curl -0# https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/Tool-Tool.txt -o /sdcard/TT2
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
tar -jxf /sdcard/TT2 -C /
rm -fr /sdcard/TT2
chmod -R 777 /bin/7za
chmod -R 777 /bin/Tool-Chmod
curl -0# https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/zip.7z -o /sdcard/TT3
cd /storage/emulated/0/Tool-Tool/.tmp
7za x -y /sdcard/TT3
cp -rf /sdcard/Tool-Tool/.tmp/zip/* /bin
chmod -R 777 /bin/zip
chmod -R 777 /bin/zipsigner-3.0-dexed.jar
chmod -R 777 /bin/zipsigner
chmod -R 777 /bin/zipalign
rm -fr /sdcard/Tool-Tool/.tmp/zip
rm -fr /sdcard/TT3
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
fi
fi

Tool ()
{
clear
pbv=`echo $kiemtra | sed -e "s/Version=//g"`
#Mặc định – 0 Đen – 30 Đỏ – 31 Xanh lá – 32 Vàng – 33
#Xanh dương – 34 Hồng – 35 Xanh lam – 36 Trắng – 37
echo -e "\e[32;1m

 
 
 TOOL TOOL MIUI $pbv\e[0m
  
  
  "
echo -e "\e[31;1m Nhập số tương ứng với các hành động bên dưới \e[0m

"
echo -e "\e[32;1m Menu Chính: \e[0;1;2m"
echo -e "
 (\e[0m\e[33;1m1\e[0;1;2m) Cài đặt Tool Mod (\e[0m\e[33;1m2\e[0;1;2m) Mod Theme Mtz
 
 (\e[0m\e[33;1m3\e[0;1;2m) Cài File và Apk (\e[0m\e[33;1m4\e[0;1;2m) Xoá App và File

 (\e[0m\e[33;1m5\e[0;1;2m) Thanh trạng thái (\e[0m\e[33;1m6\e[0;1;2m) Màn hình chính
 
 (\e[0m\e[33;1m7\e[0;1;2m) Apktool X (\e[0m\e[33;1m8\e[0;1;2m) Tính năng tiện ích
 
 (\e[0m\e[33;1m9\e[0;1;2m) Dọn dẹp (\e[0m\e[33;1m10\e[0;1;2m) Đăng nhập Tài khoản 
 
 (\e[0m\e[33;1m11\e[0;1;2m) Power và Reset (\e[0m\e[33;1m12\e[0;1;2m) Thoát Tool-Tool"
echo -e "\e[0m"
echo -e "\e[32;1m Phát triển bởi kakathic - Chúc các bạn vui vẻ"
close ()
{
echo -en "\e[36;1m"
echo -en "\a\a\a\a Nhập số sai vui lòng nhập lại.\a"
}
echo -e "\e[31;5m"
echo
echo -n " Nhập số: "
echo -en "\e[33;1m"
read kk
echo
echo -en "\e[0m"
if [ "$kk" == "1" ];then
# kk1
sgmegne ()

{
clear
echo
echo -e "\e[32;1m Mod Giao diện \e[0;1m"
echo
echo
echo -n " > Nó sẽ thay icon của nga thành icon Mod lại nhìn

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
Link="https://drive.google.com/file/d/111CzstXPhZ1SwotTQJXMa0Xv0K1bxYKa/view?usp=drivesdk"
Get=`echo $Link | cut -d '/' -f 6`
curl -L# 'https://drive.google.com/uc?authuser=0&id='$Get'&export=download' -o /storage/emulated/0/Tool-Tool/.tmp/Toolmod
fi
check=`getprop "ro.build.host"`
if [ "$check" == "xiaomi.eu" ];then
echo
else
Link="https://drive.google.com/file/d/10t_iiGE3__59jed77eicGLvoP33-S4Fx/view?usp=drivesdk"
Ten=`curl -0#G $Link | grep 'itemJson' | cut -d '"' -f 2`
Get=`echo $Link | cut -d '/' -f 6`
curl -L# 'https://drive.google.com/uc?authuser=0&id='$Get'&export=download' -o /storage/emulated/0/Tool-Tool/.tmp/Font
fi

cd /storage/emulated/0/Tool-Tool/.tmp/
7za x -y Toolmod
7za x -y Font
cp -rf fonts /storage/emulated/0/Tool-Tool/.tmp/system
rm -fr fonts
clear
echo
echo " Tiến hành cài đặt..."
echo
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
rm -fr /system/media/theme/default
rm -fr /system/etc/precust_theme
rm -fr /system/media/theme/miui_mod_icons
rm -fr /system/media/theme/.data
rm -fr /system/media/wallpaper
rm -fr /data/system/theme_magic/customized_icons
rm -fr /data/system/theme/*
cp -rf /storage/emulated/0/Tool-Tool/.tmp/sdcard/* /sdcard
cp -rf /storage/emulated/0/Tool-Tool/.tmp/system/* /system
su -c "Tool-Chmod"
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
rm -fr /storage/emulated/0/Tool-Tool/.tmp/sdcard
rm -fr /storage/emulated/0/Tool-Tool/.tmp/system
echo -n "\a Xong.

 Bạn nên khởi động lại máy để hoàn
 
 tất quá trình cài đặt Tool Mod.
 

 Nhập chữ bất kỳ để trở lại.\a"
 read
Tool return
clear
sgmegne return
elif [ "$theme" == "2" ];then
Tool return
else
echo -n "
 Sai số vui lòng nhập lại."
sleep 2
sgmegne return
fi
}
sgmegne return

elif [ "$kk" == "2" ];then
# kk2
themepro ()

{
clear
clear


echo
echo -e "\e[32;1m Mod Theme Mtz \e[0;1m"
echo
echo
echo
echo -n " Vui lòng chọn các tiện ích sau:


 1) Chuyển theme Mtz thành theme mặc định
 
 2) Chuyển Clock thành Gadget Widget
 
 3) Tách Clock từ Mtz thành clock riêng

 4) Trở lại Menu Chính 
 

  
 Nhập: "

  read vipclock






if [ "$vipclock" == "1" ];then
themes ()
{
echo " 
 Chuyển Theme Mtz thành Theme Mặc định


"
echo -n " Vui lòng điền đường dẫn đến file Mtz.

 Nhập 0) để trở lại
 

 Nhập: "
read themc 
if [ "$themc" == "0" ];then
themepro return
fi



mkdir -p /sdcard/MIUI/kakathic
mv -f "$themc" /sdcard/MIUI/kakathic/kk.zip
unzip -oq /sdcard/MIUI/kakathic/kk.zip -d /sdcard/MIUI/kakathic
rm -fr /sdcard/MIUI/kakathic/*.xml
mkdir -p /sdcard/MIUI/.wallpaper
cp -rf /sdcard/MIUI/kakathic/wallpaper/* /sdcard/MIUI/.wallpaper
rm -fr /sdcard/MIUI/kakathic/wallpaper
su -c "cp -rf /sdcard/MIUI/kakathic/preview/* /system/media/theme/.data/preview/default
rm -fr /sdcard/MIUI/kakathic/preview
cp -rf /sdcard/MIUI/kakathic/boots/* /system/media
rm -fr /sdcard/MIUI/kakathic/boots
curl -0# https://raw.githubusercontent.com/kakathic/clock_pro/master/font.txt -o /sdcard/font
tar -xf /sdcard/font -C /sdcard/MIUI
cp -rf /sdcard/MIUI/kakathic/fonts/Roboto-Regular.ttf /sdcard/MIUI
mv -f /sdcard/MIUI/kakathic/fonts/Roboto-Regular.ttf /sdcard/MIUI/theme/.data/content/fonts/font-mod.mrc
mv -f /sdcard/MIUI/Roboto-Regular.ttf /sdcard/MIUI/theme/.data/content/fonts_fallback/font-mod2.mrc
rm -fr /sdcard/MIUI/kakathic/fonts
mv -f /sdcard/MIUI/kakathic/clock_2x4 /system/media/theme/.data/content/clock_2x4/clock.mrc
mv -f /sdcard/MIUI/kakathic/clock_3x4 /system/media/theme/.data/content/clock_3x4/clock.mrc
cp -rf /sdcard/MIUI/kakathic/* /system/media/theme/default
rm -fr /sdcard/MIUI/kakathic"
echo "\a
 Xong.
 
 Chat phím bất kỳ trở lại Menu chính.

 
 "
read
Tool return
}
themes return

elif [ "$vipclock" == "2" ];then
clgg ()
{
echo " 
 Chuyển Clock thành file Gadgets


"
echo -n " Vui lòng điền đường dẫn đến file Mtz.

 Nhập 0) để trở lại

 Nhập: "
read clock 
if [ "$clock" == "0" ];then
themepro return
fi

mkdir -p /sdcard/MIUI/kakathic
mv -f "$clock" /sdcard/MIUI/kakathic/kk.zip
unzip -oq /sdcard/MIUI/kakathic/kk.zip -d /sdcard/MIUI/kakathic
if [ -e /sdcard/MIUI/kakathic/clock_2x4 ];then
echo "
 >  Tải dữ liệu Online...

"
curl -0# https://raw.githubusercontent.com/kakathic/clock_pro/master/gadget.txt -o /sdcard/gadg
cp -rf /sdcard/MIUI/kakathic/clock_2x4 /sdcard/MIUI
cp -rf /sdcard/MIUI/kakathic/preview/preview_clock_2x4_0.png /sdcard/MIUI
rm -fr /sdcard/MIUI/kakathic/*
tar -xf /sdcard/gadg -C /sdcard/MIUI/kakathic
unzip -oq /sdcard/MIUI/clock_2x4 -d /sdcard/MIUI/kakathic/content
mv -f /sdcard/MIUI/preview_clock_2x4_0.png /sdcard/MIUI/kakathic/preview/preview_0.jpg
sed -i -e 's/Clock/Gadget/g' /sdcard/MIUI/kakathic/content/manifest.xml
rm -fr /sdcard/MIUI/clock_2x4
rm -fr /sdcard/gadg
else
echo " 
 >  Lỗi Theme không có clock_2x4...
 
 Chat phím bất kỳ trở lại.

"
rm -fr /sdcard/MIUI/kakathic
read
clgg return
fi
echo -n "
 Vui lòng nhập tên Clock
 
 Nhập: "
 read tencl
sed -i -e "s/Clock Mod/$tencl/g" /sdcard/MIUI/kakathic/description.xml
echo -n "
 Vui lòng chọn chiều rộng và dài Clock
 
 
 mặc định 4x6 thì điền 4:2
 
 lớn hơn 6x7 thì điền 6:3


 Nhập: "
read sizecl
sed -i -e "s/4:2/$sizecl/g" /sdcard/MIUI/kakathic/description.xml
echo "
 Đóng gói thành Mtz...
"
cd /sdcard/MIUI/kakathic
zip -q -r9 /sdcard/MIUI/$tencl.mtz *

echo -n "
 Bạn có muốn sao chép Clock vào hệ thống luôn không ?
 
 
 1) Có
 
 2) Không
 
 
 Nhập: "
 read fwwnwt
if [ "$fwwnwt" == "1" ];then
su -c "cp -rf /sdcard/MIUI/$tencl.mtz /system/media/theme/default/gadgets"
echo "
 Vào /sdcard/MIUI/ sẽ thấy $tencl.mtz của bạn
 "
killall com.miui.home
else
echo "
 Vào /sdcard/MIUI/ sẽ thấy $tencl.mtz của bạn
 "
fi
rm -fr /sdcard/MIUI/kakathic
echo "\a
 Xong.
 
 Chat phím bất kỳ trở lại Menu chính.

 
 "
read
Tool return
}
clgg return


elif [ "$vipclock" == "3" ];then
hhakd ()
{
echo " 
 Tách Clock 2x4 khỏi Theme Mtz


"
echo -n " Vui lòng điền đường dẫn đến file Mtz.


 Nhập 0) để trở lại

 Nhập: "
read clock2 
if [ "$clock2" == "0" ];then
themepro return
fi

mkdir -p /sdcard/MIUI/kakathic
unzip -oq "$clock2" -d /sdcard/MIUI/kakathic
if [ -e /sdcard/MIUI/kakathic/clock_2x4 ];then
echo "
 >  Tải dữ liệu Online...

"
curl -0# https://raw.githubusercontent.com/kakathic/clock_pro/master/clock_mod.txt -o /sdcard/clock_mod.txt
echo
tar -xf /sdcard/clock_mod.txt -C /sdcard/MIUI
cp -rf /sdcard/MIUI/kakathic/clock_2x4 /sdcard/MIUI
if [ -e /sdcard/MIUI/kakathic/preview/preview_clock_2x4_0.png ];then
cp -rf /sdcard/MIUI/kakathic/preview/preview_clock_2x4_0.png /sdcard/MIUI
else
echo "
 Không có ảnh có sẵn
 "
 fi
mv /sdcard/MIUI/clock_2x4 /sdcard/MIUI/theme/.data/content/clock_2x4/55741d25-eb4e-4c17-8f8e-b6640107def9.mrc
rm -fr /sdcard/MIUI/kakathic
rm -fr /sdcard/clock_mod.txt
else
echo " 
 >  Lỗi Theme không có clock_2x4...

 Chat phím bất kỳ trở lại.
 
"
rm -fr /sdcard/MIUI/kakathic
read
hhakd return
fi

echo -n "
 Vui lòng nhập đường dẫn đến file ảnh .png
 
 
 Nhập 0)
 
 để dùng ảnh mặc định của theme
 
 nếu không có ảnh mặc định sẽ dùng ảnh
 
 mặc định file online.

 Nhập: "
read pngcl
if [ "$pngcl" == "0" ];then
echo "
 >  Dùng ảnh mặc định...

"
mv /sdcard/MIUI/preview_clock_2x4_0.png  /sdcard/MIUI/theme/.data/preview/theme/8c3ab570-3711-48db-be6d-99c9992cdb0c/preview_clock_2x4_0.png
else
mv $pngcl /sdcard/MIUI/theme/.data/preview/theme/8c3ab570-3711-48db-be6d-99c9992cdb0c/preview_clock_2x4_0.png
echo "
 >  Cài ảnh preview thành công...

"
fi
echo "
 Clock của bạn đã được thêm vào tiện ích.
 
 "
sleep 1
echo "\a >  Tools Tách Clock_2x4 by kakathic...

"
echo "\a
 Xong.
 
 Chat phím bất kỳ trở lại Menu chính.

 
 "
read
Tool return
}
hhakd return

elif [ "$vipclock" == "4" ];then
Tool return
else
echo -n "
 Nhập số sai vui lòng nhập lại."
sleep 2
themepro return
fi
}
themepro return
elif [ "$kk" == "3" ];then
# kk3
vksj ()
{
clear
echo
echo
echo -e "\e[31;1m Cài đặt hoặc Cập nhật App, tệp vào hệ thống\e[0;1m



"

echo -n " Chép file từ /sdcard/Tool-Tool/ system và vendor
 
 vào hệ thống.
 

 1) Tiếp tục
 
 2) Trở lại Menu chính
 
 
 Nhập: "
read app
if [ "$app" == "1" ];then
clear
echo
echo
echo -n " Đang tiến hành sao chép";sleep 1;echo -n ".";sleep 1;echo -n ".";sleep 1;echo -n ".";
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mount -o rw,remount /vendor 2> /dev/null
cp -rf /sdcard/Tool-Tool/system/* /system
su -c "Tool-Chmod"
mount -o ro,remount /vendor 2> /dev/null
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a - Xong.

 Vui lòng khởi động lại để hoàn tất.
 

 Chat chữ bất kỳ để trở về."
read
Tool return
elif [ "$app" == "2" ];then
Tool return
else
echo -n "\a
 Nhập sai vui lòng nhập lại."
 sleep 2
vksj return
fi
}
vksj return
elif [ "$kk" == "4" ];then
# kk4
adxoa ()
{
clear
echo "
"
echo -e "\e[32;1m Xoá ứng dụng tự động hoặc đường dẫn \e[0;1m



"
echo -n " Kiểu xoá dữ liệu App và file

 Lên khởi động lại máy khi xoá xong



 1) Xoá đề xuất
 
 2) Xoá theo đường dẫn
 
 3) Trở lại



 Nhập: "
 read xoa
if [ "$xoa" == "1" ];then
clear
echo -e -n " 
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
echo -n "
 Đang tiến hành dọn dẹp app.";sleep 1;echo -n ".";sleep 1;echo -n ".";sleep 1;echo -n ".";
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
echo -n "
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
rm -fr $xoa2
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
echo -n "
 Nhập số sai vui lòng nhập lại."
sleep 2
adxoa return
fi
}
adxoa return
elif [ "$kk" == "5" ];then
# kk5
clear
home ()
{
clear
Http='https://raw.githubusercontent.com/kakathic/Tool-Tool/master/App/Systemui'
Ten='com.android.systemui'
echo "\e[32;1m

 Tùy chỉnh thanh trạng thái

\e[0;1m
"
echo -n " Vui lòng chọn số:


 1) Tùy chỉnh
 
 2) Khôi phục như ban đầu
 
 3) Trở lại
 
 
 Nhập: "
 read lmtc
echo
if [ "$lmtc" == "3" ];then
Tool return
elif [ "$lmtc" == "2" ];then
if [ -e "/system/media/theme/default/$Ten.bak" ];then
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
rm -fr "/system/media/theme/default/$Ten"
mv "/system/media/theme/default/$Ten.bak" "/system/media/theme/default/$Ten"
chmod -R 755 "/system/media/theme/default/$Ten"
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
killall "$Ten"
else
echo " Chưa có sao lưu.
"
fi
echo -n "\a Xong.
 
 Nhập bất kỳ để trở về.\a"
read
home return
elif [ "$lmtc" == "1" ];then
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mkdir -p /storage/emulated/0/Tool-Tool/.tmp/tmp
if [ -e "/system/media/theme/default/$Ten" ];then
unzip -oq "/system/media/theme/default/$Ten" -d /storage/emulated/0/Tool-Tool/.tmp/tmp
cp -rf "/system/media/theme/default/$Ten" "/sdcard/$Ten"
mv -f "/sdcard/$Ten" "/system/media/theme/default/$Ten.bak"
else
curl -0# "$Http/$Ten" -o "/sdcard/$Ten"
unzip -oq "/sdcard/$Ten" -d /storage/emulated/0/Tool-Tool/.tmp/tmp
mv -f "/sdcard/$Ten" "/system/media/theme/default/$Ten.bak"
fi

clear
# Pin vông
echo -n "

  Hiện icon pin vông của Rom beta 


 1) Hiện
 
 2) Bỏ qua


 Nhập: "
 read pin
 echo
if [ "$pin" == "1" ];then
Code0='<bool name="battery_meter_use_legacy_drawable">false</bool>'
else
echo "
 Bỏ qua
 "
fi
clear
echo -n "

  Hiện lịch Âm trên thanh trạng thái


 1) Hiện
 
 2) Bỏ qua


 Nhập: "
 read stt3
 echo
if [ "$stt3" == "1" ];then
# Lịch âm
Code1='<string name="status_bar_clock_date_weekday_format">E, dd.MM - (e.N)</string>
<string name="status_bar_clock_date_weekday_format_12">a E, dd - MM</string>
<string name="status_bar_clock_date_time_format">H:mm - E, dd.MM - (e.N)</string>
<string name="status_bar_clock_date_time_format_12">h:mm a - E, dd.MM - (e.N)</string>
<string-array name="chinese_leap_months"package="miui">
<item></item><item></item></string-array>'
else
echo "
 Bỏ qua
 "
fi
clear
echo -n "

  Làm cho % pin to = số pin


 1) Có
 
 2) Bỏ qua


 Nhập: "
 read ptpin
 echo
if [ "$ptpin" == "1" ];then
# % pin to = số
Code2='<dimen name="battery_percent_mark_view_padding_top">1.5dip</dimen>
<dimen name="battery_percent_mark_view_text_size">11.9dip</dimen>
<dimen name="battery_percent_mark_view_width">11.2dip</dimen>'
else
echo "
 Bỏ qua
 "
fi
clear
echo -n "

  Chỉnh sửa biểu tượng 4G 5G v.v


 1) Thay 4G thành LTE
 
 2) Tự sửa tất cả

 3) Bỏ qua
 
 
 Nhập: "
 read btm
 echo
if [ "$btm" == "1" ];then
# Sửa Chữ 4G
Code3='<string-array name="data_network_type_name_default"><item></item>
<item>G</item>
<item>E</item>
<item>3G</item>
<item>H</item>
<item>H+</item>
<item>LTE</item>
<item>LTE+</item>
<item></item>
<item>LTE</item>
<item>5G</item>
</string-array>'
elif [ "$btm" == "2" ];then
echo "
 Sửa biểu tượng chi tiết

  
 ? có nghĩa là không biết, không cần điền, sau dấu . là chữ số mặc định khi chưa thay
 
 1. G, 2. E, 3. 3G, 4. H, 5. H+, 6. 4G, 7. 4G+, 8. ?, 9. LTE, 10. 5G.


 Nhập Theo số:"
 
echo -n "

1. ";read a1
echo -n "
2. ";read a2
echo -n "
3. ";read a3
echo -n "
4. ";read a4
echo -n "
5. ";read a5
echo -n "
6. ";read a6
echo -n "
7. ";read a7
echo -n "
8. ";read a8
echo -n "
9. ";read a9
echo -n "
10. ";read am

Code3='<string-array name="data_network_type_name_default"><item></item><item>'$a1'</item><item>'$a2'</item><item>'$a3'</item><item>'$a4'</item><item>'$a5'</item><item>'$a6'</item><item>'$a7'</item><item>'$a8'</item><item>'$a9'</item><item>'$am'</item></string-array>'
else
echo "
 Bỏ qua
 "
fi
clear

echo -n "

 Chỉnh sửa chữ KB/s hay MB/s


 1) Sửa
 
 2) Bỏ qua 
 
 Nhập: "
 read kbs
 echo
if [ "$kbs" == "1" ];then

echo -n "
 MB: ";read mb
echo -n "
 KB: ";read kb
# Sửa chữ kb mb
Code4='<string name="megabyte_per_second">'$mb'</string>
<string name="kilobyte_per_second">'$kb'</string>'
else
echo "
 Bỏ qua
 "
fi
Code5=''
Code6=''
Code7=''
Code8=''
Code9=''

clear
# Sáng
cd /storage/emulated/0/Tool-Tool/.tmp/tmp
sed -i -z 's|<|\n<|g' theme_values.xml
sed -i 's/^ *//; s/ *$//; /^$/d; /^\s*$/d' theme_values.xml
sed -i -z 's|\n</s|</s|g;s|<!--\n<|<!-- <|g;s|\n</d|</d|g;s|\n</b|</b|g;s|\n</c|</c|g;s|\n</i|</i|g' theme_values.xml
sed -i '1,2d' theme_values.xml
Tim=`grep '<' -m1 theme_values.xml`
Dan="<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<MIUI_Theme_Values>
$Code0
$Code1
$Code2
$Code3
$Code4
$Code5
$Code6
$Code7
$Code8
$Code9
$Tim"
sed -i "s|$Tim|$Dan|g" theme_values.xml
Xoa=`wc -l theme_values.xml | sed 's| theme_values.xml||g'`
sed -i ''$Xoa'd' theme_values.xml
echo '</MIUI_Theme_Values>' | tee -a theme_values.xml

# Tối
cd /storage/emulated/0/Tool-Tool/.tmp/tmp/nightmode
sed -i -z 's|<|\n<|g' theme_values.xml
sed -i 's/^ *//; s/ *$//; /^$/d; /^\s*$/d' theme_values.xml
sed -i -z 's|\n</s|</s|g;s|<!--\n<|<!-- <|g;s|\n</d|</d|g;s|\n</b|</b|g;s|\n</c|</c|g;s|\n</i|</i|g' theme_values.xml
sed -i '1,2d' theme_values.xml
Tim=`grep '<' -m1 theme_values.xml`
Dan="<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<MIUI_Theme_Values>
$Code0
$Code1
$Code2
$Code3
$Code4
$Code5
$Code6
$Code7
$Code8
$Code9
$Tim"
sed -i "s|$Tim|$Dan|g" theme_values.xml
Xoa=`wc -l theme_values.xml | sed 's| theme_values.xml||g'`
sed -i ''$Xoa'd' theme_values.xml
echo '</MIUI_Theme_Values>' | tee -a theme_values.xml

# Đóng gói

cd /storage/emulated/0/Tool-Tool/.tmp/tmp
zip -r -0 "$Ten" *
mv -f "$Ten" "/system/media/theme/default/$Ten"
chmod -R 755 "/system/media/theme/default/$Ten"
rm -fr /storage/emulated/0/Tool-Tool/.tmp/tmp

mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null

killall "$Ten"
echo -n "\a
 Xong.
 
 khởi động lại để hiển thị đầy đủ vừa mod
 
 Nhập bất kỳ để trở về.\a"
read
home return
else
echo -n "\a
 Nhập sai vui lòng nhập lại.\a"
 sleep 2
home return
fi
}
home return
elif [ "$kk" == "6" ];then
# kk6
clear
home ()
{
clear
Http='https://raw.githubusercontent.com/kakathic/Tool-Tool/master/App/Home'
Ten='com.miui.home'
echo "\e[32;1m

 Tùy chỉnh màn hình chính Miui Launcher

\e[0;1m
"
echo -n " Vui lòng chọn số:


 1) Tùy chỉnh
 
 2) Khôi phục như ban đầu
 
 3) Trở lại
 
 
 Nhập: "
 read lmtc
echo
if [ "$lmtc" == "3" ];then
Tool return
elif [ "$lmtc" == "2" ];then
if [ -e "/system/media/theme/default/$Ten.bak" ];then
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
rm -fr "/system/media/theme/default/$Ten"
mv "/system/media/theme/default/$Ten.bak" "/system/media/theme/default/$Ten"
chmod -R 755 "/system/media/theme/default/$Ten"
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
killall "$Ten"
else
echo " Chưa có sao lưu.
"
fi
echo -n "\a Xong.
 
 Nhập bất kỳ để trở về.\a"
read
home return
elif [ "$lmtc" == "1" ];then
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mkdir -p /storage/emulated/0/Tool-Tool/.tmp/tmp
if [ -e "/system/media/theme/default/$Ten" ];then
unzip -oq "/system/media/theme/default/$Ten" -d /storage/emulated/0/Tool-Tool/.tmp/tmp
cp -rf "/system/media/theme/default/$Ten" "/sdcard/$Ten"
mv -f "/sdcard/$Ten" "/system/media/theme/default/$Ten.bak"
else
curl -0# "$Http/$Ten" -o "/sdcard/$Ten"
unzip -oq "/sdcard/$Ten" -d /storage/emulated/0/Tool-Tool/.tmp/tmp
mv -f "/sdcard/$Ten" "/system/media/theme/default/$Ten.bak"
fi

clear
# Pin vông
echo -n "

  Thêm bố cục 15x15 và Miui Home


 1) Có
 
 2) Bỏ qua


 Nhập: "
 read pin
 echo
if [ "$pin" == "1" ];then
Code0='<integer name="config_cell_count_y_max">15</integer>
<integer name="config_cell_count_x_max">15</integer>'
else
echo "
 Bỏ qua
 "
fi
clear
echo -n "

  Tùy chỉnh màu chữ ở màn hình chính


 1) Sửa
 
 2) Bỏ qua


 Nhập: "
 read stt3
 echo
if [ "$stt3" == "1" ];then
echo ' Chỉnh màu chữ ở màn hình chính


 Ví dụ: #00000000 là trong suốt, #ffffffff là màu trắng
 
 #ff000000 là màu đen


 Điền mã màu:'

echo -n "
 Màu đen: "
 read icon1
echo -n "
 Màu trắng: "
 read icon2
# Màu sắc
Code1='<color name="icon_title_text_dark">'$icon1'</color>
<color name="icon_title_text">'$icon2'</color>'
else
echo "
 Bỏ qua
 "
fi

Code5=''
Code6=''
Code7=''
Code8=''
Code9=''

clear
# Sáng
cd /storage/emulated/0/Tool-Tool/.tmp/tmp
sed -i -z 's|<|\n<|g' theme_values.xml
sed -i 's/^ *//; s/ *$//; /^$/d; /^\s*$/d' theme_values.xml
sed -i -z 's|\n</s|</s|g;s|<!--\n<|<!-- <|g;s|\n</d|</d|g;s|\n</b|</b|g;s|\n</c|</c|g;s|\n</i|</i|g' theme_values.xml
sed -i '1,2d' theme_values.xml
Tim=`grep '<' -m1 theme_values.xml`
Dan="<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<MIUI_Theme_Values>
$Code0
$Code1
$Code2
$Code3
$Code4
$Code5
$Code6
$Code7
$Code8
$Code9
$Tim"
sed -i "s|$Tim|$Dan|g" theme_values.xml
Xoa=`wc -l theme_values.xml | sed 's| theme_values.xml||g'`
sed -i ''$Xoa'd' theme_values.xml
echo '</MIUI_Theme_Values>' | tee -a theme_values.xml

# Tối
cd /storage/emulated/0/Tool-Tool/.tmp/tmp/nightmode
sed -i -z 's|<|\n<|g' theme_values.xml
sed -i 's/^ *//; s/ *$//; /^$/d; /^\s*$/d' theme_values.xml
sed -i -z 's|\n</s|</s|g;s|<!--\n<|<!-- <|g;s|\n</d|</d|g;s|\n</b|</b|g;s|\n</c|</c|g;s|\n</i|</i|g' theme_values.xml
sed -i '1,2d' theme_values.xml
Tim=`grep '<' -m1 theme_values.xml`
Dan="<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<MIUI_Theme_Values>
$Code0
$Code1
$Code2
$Code3
$Code4
$Code5
$Code6
$Code7
$Code8
$Code9
$Tim"
sed -i "s|$Tim|$Dan|g" theme_values.xml
Xoa=`wc -l theme_values.xml | sed 's| theme_values.xml||g'`
sed -i ''$Xoa'd' theme_values.xml
echo '</MIUI_Theme_Values>' | tee -a theme_values.xml

# Đóng gói

cd /storage/emulated/0/Tool-Tool/.tmp/tmp
zip -r -0 "$Ten" *
mv -f "$Ten" "/system/media/theme/default/$Ten"
chmod -R 755 "/system/media/theme/default/$Ten"
rm -fr /storage/emulated/0/Tool-Tool/.tmp/tmp

mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null

killall "$Ten"
echo -n "\a
 Xong.
 
 khởi động lại để hiển thị đầy đủ vừa mod
 
 Nhập bất kỳ để trở về.\a"
read
home return
else
echo -n "\a
 Nhập sai vui lòng nhập lại.\a"
 sleep 2
home return
fi
}
home return
elif [ "$kk" == "7" ];then
# kk7
# Mount rw
if [ -e /data/local/Tool-Apk ];then
echo
else
echo -n "\e[0;1m Tải dữ liệu Apktool X


 Nó sẽ tải 1 lượng dữ liệu lớn khoảng 50MB

 nếu quá trình cài đặt bị lỗi vui lòng vào

 Dọn dẹp và chọn dọn dẹp .tmp và chạy

 lại bước này.
 
 0) Trở lại
 
 1) Tiếp tục
 
 
Nhập: "
read kkdh
if [ "$kkdh" == "0" ];then
Tool return
fi
fi
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
# Tải Apktool
if [ -e /data/local/Tool-Apk ];then
echo
else
echo
echo "> Tải dữ liệu có thể mất đến vài phút..."
echo
Link='http://www.mediafire.com/file/crrruqf3az51ctt/Apktool/file'
Get=`curl -0#G "$Link" | grep http://download | cut -d '"' -f 2`
curl -0L# "$Get" -o "/sdcard/Tool-Tool/.tmp/Apktool"
fi


AT='/data/local/Tool-Apk/apktool/dex2jar/apktool5.sh'
# Giải nén Apktool và Cấp quyền hoạt động
if [ -e /data/local/Tool-Apk ];then
echo
else
cd /sdcard/Tool-Tool/.tmp
7za x -y /sdcard/Tool-Tool/.tmp/Apktool
cp -rf data/* /data
rm -fr data
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
$AT if /system/app/miui/miui.apk
$AT if /system/app/miuisystem/miuisystem.apk
$AT if /system/framework/framework-res.apk
$AT if /system/framework/framework-ext-res/framework-ext-res.apk
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
echo -n " Vui lòng chọn các bước sau đây:
 
 
 1) Apktool Decompile
 
 2) Apktool Recompile

 3) Import Framework
 
 4) Khởi động lại SystemUi
 
 5) Khởi động lại Settings
 
 6) Khởi động lại Miui Home
 
 7) Trở lại Menu chính
 
 
 Nhập: "
 read apk2
if [ "$apk2" == "1" ];then
clear
echo
echo -e "\e[32;1m Apktool decompile \e[0;1m"
echo 
echo
echo -n " Vui lòng nhập đường dẫn đến file apk

 lưu ý: Tên của file không được có dấu

 nên viết liền không dấu.


 ví dụ: /sdcard/a123.apk
 
 Nhập 0) Trở lại
 
 
 Nhập: "
 read apkd
if [ "$apkd" == "0" ];then
apktool return
else
cd /sdcard/Tool-Tool/Apk-decom
echo
echo -n " Chọn cách decompile apk


 1) Decompile Res

 2) Decompile Dex

 3) Decompile All
 
 
 Nhập: "
 read apbb
 echo
if [ "$apbb" == "1" ];then
$AT d -s -f -m "$apkd"
elif [ "$apbb" == "2" ];then
$AT d -r -f -m "$apkd"
else
$AT d -f -m "$apkd"
fi
echo
echo -n " Được lưu ở: "
echo -e "\e[33;1m/sdcard/Tool-Tool/Apk-decom \e[0;1m"
echo
echo
echo -n " Chat phím bất kỳ để trở lại."
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
cd /sdcard/Tool-Tool/Apk-decom
echo -n " "
ls -p
echo -e "\e[0;1m"
echo
echo -n " Nhập 0) Trở lại
 
 
 Nhập: "
 read apkd
if [ "$apkd" == "0" ];then
apktool return
else
echo
apkd2=/sdcard/Tool-Tool/Apk-decom/$apkd
echo
Tenapk=`cat "$apkd2 | grep 'apkFileName:' | sed 's|apkFileName: ||g;s|.apk||g'`
cd /sdcard/Tool-Tool/Apk-build
$AT b -f -c "$apkd2" -o "$Tenapk_${RANDOM}.apk"
echo
echo "\c Bạn có muốn Sign Apk không ?
 
 
 1) Có

 2) Không


 Nhập: "
 read signd
echo
if [ "$signd" == "1" ];then
sh /data/local/Tool-Apk/apktool/dex2jar/d2j-apk-sign.sh -f /sdcard/Tool-Tool/Apk-build/$tenapk.apk -o /sdcard/Tool-Tool/Apk-build/$tenapk.sign.apk
echo
echo
echo -n " Được lưu ở "
echo -e "\e[33;1m/sdcard/Tool-Tool/Apk-build/$Tenapk_${RANDOM}.sign.apk \e[0;1m"
echo
echo
echo -n " Chat phím bất kỳ để trở lại."
read
apktool return
else
echo
echo -n " Được lưu ở "
echo -e "\e[33;1m/sdcard/Tool-Tool/Apk-build/$Tenapk_${RANDOM}.apk \e[0;1m"
echo
echo
echo -n " Chat phím bất kỳ để trở lại."
read
apktool return
fi

fi
elif [ "$apk2" == "3" ];then
clear
echo
echo -e "\e[32;1m Import framework \e[0;1m"
echo 
echo -n " Nhập đường dẫn tới apk muốn thêm.

 ví dụ: /system/app/miui/miui.apk
 
 Nhập 0) Trở lại

 
 Nhập: "
 read importf
if [ "$importf" == "0" ];then
apktool return
else
echo
su -c "$AT if $importf"
echo
echo
echo -n " Chat phím bất kỳ để trở lại."
read
apktool return
fi
elif [ "$apk2" == "4" ];then
echo "\a
 Reset Systemui..."
killall com.android.systemui
echo -n "
 Xong.

 Nhập bất kỳ để trở về."
read
Tool return
elif [ "$apk2" == "5" ];then
echo "\a
 Reset System..."
killall com.android.settings
echo -n "
 Xong.

 Nhập bất kỳ để trở về."
read
Tool return
elif [ "$apk2" == "6" ];then
echo "\a
 Reset Miui Home..."
killall com.miui.home
echo -n "
 Xong.

 Nhập bất kỳ để trở về."
read
Tool return
elif [ "$apk2" == "7" ];then
clear
Tool return
else
echo
echo -n " Nhập số sai vui lòng nhập lại:"
sleep 2
apktool return
fi
}
apktool return
elif [ "$kk" == "8" ];then
# kk8

back ()
{
clear
echo "\e[32;1m

 Tiện ích
 
 
\e[0;1m"
echo -n "
 Chọn các tính năng mở rộng ở Menu
 
 
 1) Get Link Download

 2) Thay Boot Animation
 
 3) Crack App cài Apk
 
 4) Chuyển nền Quốc tế sang China
 
 5) Cài đặt YouTube Root
 
 0) Trở lại
 
 
 Nhâp: "
 read tck

if [ "$tck" == "0" ];then
Tool return
elif [ "$tck" == "5" ];then
clear
echo -n "\e[32;1m

 Cài đặt YouTube Root\e[0;1m


 1) Tiếp tục
 
 2) Trở lại
 
 
 Nhập: "
read yt
echo
if [ "$yt" == "1" ];then
if [ -e /sdcard/Tool-Tool/.tmp/YouTube.apk ];then
echo
else
Link='http://www.mediafire.com/file/5fwv5pcp1vd4el1/YouTube-Root.apk/file'
Get=`curl -0#G "$Link" | grep http://download | cut -d '"' -f 2`
curl -0L# "$Get" -o "/sdcard/Tool-Tool/.tmp/YouTube.apk"
fi

mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mkdir -p /system/priv-app/YouTube
cp -af /storage/emulated/0/Tool-Tool/.tmp/YouTube.apk /system/priv-app/YouTube
chmod -R 755 /system/priv-app/YouTube
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo "\a
 Cài đặt thành công khởi động lại để hiện YouTube.
 
 
 Nhập bất kỳ để trở về."
back return
else
back return
fi
elif [ "$tck" == "1" ];then


qv ()
{
mkdir -p /sdcard/Download/Tai-Ve
clear
echo -n "

\e[32;1m Chọn kiểu Get Link Download
\e[0;1m


 1) Google Diver
 
 2) Mediafire

 3) Trở lại


\e[31;1m
 Nhập: \e[0;1m"
 read getk
 if [ "$getk" == "1" ];then

clear
echo -e -n " \e[32;1m

 Nhập Link Google Diver
\e[0;1m

 Nhập đường dẫn chia sẻ của Google Diver để tải

 về trực tiếp.


 0) Trở lại

\e[31;1m
 Nhập: \e[0;1m"
read Link
if [ "$Link" == "0" ];then
qv return
fi
Ten=`curl -0#G $Link | grep 'itemJson' | cut -d '"' -f 2`

if [ $Ten ];then
sleep 1
else
echo -n "
 Vui lòng nhập tên File

 Ví dụ: kkk.zip
 
 
 Nhập: "
read Ten
fi

Get=`echo $Link | cut -d '/' -f 6`
clear
echo "\e[31;1m

 Đang tải: \e[36;1m$Ten

\e[0;1m"
curl -L# 'https://drive.google.com/uc?authuser=0&id='$Get'&export=download' -o "/sdcard/Download/Tai-Ve/$Ten"

cd /sdcard/Download/Tai-Ve
ktm=`cat "$Ten" | cut -d '<!' -f 2 | sed -e 's|/||g' -e 's|>||g'`
if [ $ktm ];then
rm -fr "$Ten"
echo -n "
 Xin lỗi không tải được File vì file này
 
 không quét virus được.
 
 
 Chat phím bất kỳ để trở lại."
 read
qv return
else
echo -n "

 Lưu ở: \e[33;1m/sdcard/Download/Tai-Ve/$Ten\e[0;1m


 Chat phím bất kỳ để trở lại."
 read
qv return
fi

elif [ "$getk" == "2" ];then
 
clear
echo -n " \e[32;1m

 Get link Mediafire.com 
\e[0;1m

 Nhập đường dẫn chia sẻ của Mediafire để tải

 về trực tiếp.


 0) Trở lại

\e[31;1m
 Nhập: \e[0;1m"
read Link
if [ "$Link" == "0" ];then
qv return
fi
echo -en "\e[0;8m"
Ten=`curl -0#G "$Link" | grep -m 1 'div class="filename' | cut -d '>' -f 2 | cut -d '<' -f 1`
echo -e "\e[0m"
Size=`curl -0#G "$Link" | grep "File size:" | cut -d '>' -f 3 | cut -d '<' -f 1`
clear
echo "\e[31;1m

 Đang tải: \e[36;1m$Ten ($Size)

\e[0;1m"
Get=`curl -0#G "$Link" | grep http://download | cut -d '"' -f 2`
curl -L# "$Get" -o "/sdcard/Download/Tai-Ve/$Ten"
echo -en "

 Lưu ở: \e[33;1m/sdcard/Download/Tai-Ve/$Ten\e[0;1m

 
 Chat phím bất kỳ để trở lại."
read
qv return
 elif [ "$getk" == "3" ];then
back return
 else
 echo -n -n " \e[36;1m
 Nhập sai vui lòng nhập lại."
sleep 2
qv return
 fi

}
qv return
elif [ "$tck" == "2" ];then
boot ()
{
clear
echo "\e[32;1m

 Thay đổi Boot Animation"
 
 echo -n "\e[0;1m 
 
 
 
 Chọn các tính năng ở Menu
 
 
 
 1) Xem thử Boot Animation
 
 2) Thay Boot Animation
 
 3) Trở lại
 
 
 Nhập: "
 read tek
 if [ "$tek" == "3" ];then
 back return
elif [ "$tek" == "1" ];then
echo -n " "
bootanimation
clear
boot return
elif [ "$tek" == "2" ];then
echo -n "
 
 Nhập đường dẫn đến file zip vd: /sdcard/1.zip
 
 
 Nhập: "
 read Test
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mv -f $Test /system/media/bootanimation.zip
chmod -R 755 /system/media/bootanimation.zip
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a
 Thành công.
 
 Nhập bất kỳ để trở lại."
 read
boot return
else
echo -n "
 Nhập sai vui lòng nhập lại."
sleep 2
boot return
fi
}
boot return
elif [ "$tck" == "3" ];then


clear
echo "\e[32;1m

 Mở khóa cập nhật App hệ thống
 
 \e[0;1m"



if [ -e /data/local/Tool-Apk ];then
echo -n "
 0) Trở lại
 
 1) Tiếp tục
 
 
 Nhập: "
 
read ttcj
 if [ "$ttcj" == "0" ];then
 back return
 fi
else
echo -n "
 Nó sẽ tải 1 lượng dữ liệu lớn khoảng 50MB
 
 nếu quá trình cài đặt bị lỗi vui lòng vào
 
 Dọn dẹp và chọn dọn dẹp .tmp và chạy
 
 lại bước này.
 


 0) Trở lại
 
 1) Tiếp tục tải
  
 
 Nhập: "
 read ttcj
 if [ "$ttcj" == "0" ];then
 back return
 fi
 fi

mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
# Tải Apktool
if [ -e /data/local/Tool-Apk ];then
echo
else
echo
echo "> Tải dữ liệu có thể mất đến vài phút..."
echo
Link='http://www.mediafire.com/file/crrruqf3az51ctt/Apktool/file'
Get=`curl -#G "$Link" | grep http://download | cut -d '"' -f 2`
curl -L# "$Get" -o "/sdcard/Tool-Tool/.tmp/Apktool"
fi
# Giải nén Apktool và Cấp quyền hoạt động
at='/data/local/Tool-Apk/apktool/dex2jar/apktool5.sh'
if [ -e /data/local/Tool-Apk ];then
echo
else
cd /sdcard/Tool-Tool/.tmp
7za x -y /sdcard/Tool-Tool/.tmp/Apktool
cp -rf data/* /data
rm -fr data
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
$at if /system/app/miui/miui.apk
$at if /system/app/miuisystem/miuisystem.apk
$at if /system/framework/framework-res.apk
$at if /system/framework/framework-ext-res/framework-ext-res.apk
fi
# Mount ro

cp -rf /system/priv-app/MiuiPackageInstaller/MiuiPackageInstaller.apk /sdcard/Tool-Tool/Apk-decom
mv -f /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller.apk /system/priv-app/MiuiPackageInstaller/MiuiPackageInstaller.apk.bak
cp -rf /system/priv-app/MiuiPackageInstaller/MiuiPackageInstaller.apk /sdcard/Tool-Tool/Apk-decom

mkdir -p /sdcard/Tool-Tool/Apk-decom/Apk
cd /sdcard/Tool-Tool/Apk-decom

unzip -oq MiuiPackageInstaller.apk -d /sdcard/Tool-Tool/Apk-decom/Apk

cp -rf /sdcard/Tool-Tool/Apk-decom/Apk/META-INF /sdcard/Tool-Tool/Apk-build
cp -rf /sdcard/Tool-Tool/Apk-decom/Apk/AndroidManifest.xml /sdcard/Tool-Tool/Apk-build
rm -fr /sdcard/Tool-Tool/Apk-decom/Apk

$at d -r -f -m /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller.apk


Vb=`grep -h "iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I" /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller/smali/com/android/packageinstaller/*.smali`

Ten=`grep -lrw "iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I" /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller/smali/com/android/packageinstaller/*.smali`

Vb2="    const/4 v0, 0x0

    return v0

$Vb"

sed -i -e "s|$Vb|$Vb2|g" $Ten



cd /sdcard/Tool-Tool/Apk-build
$at b -f -c /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller -o MiuiPackageInstaller.apk

cp -rf /sdcard/Tool-Tool/Apk-build/MiuiPackageInstaller.apk /system/priv-app/MiuiPackageInstaller
chmod -R 755 /system/priv-app/MiuiPackageInstaller

mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
rm -fr /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller
rm -fr /sdcard/Tool-Tool/Apk-build/MiuiPackageInstaller.apk

killall com.miui.packageinstaller

echo "
 Xong.\a
 "

echo -n " Hãy tạm dừng ở bước này, bạn lên tải 1 apk

 App bất kỳ để kiểm tra xem có cài đặt
 
 được không nếu không bị Tạm dừng
 
 và cập nhật được App hệ thống
 
 thì chúc mừng bạn đã thành công.
 
 \e[31;1mCòn nếu bị Tạm dừng thì 
 
 bạn hãy nhập (\e[0;1m1\e[31;1m) để có
 
 thể khôi phục app như cũ và có
 
 nghĩa là quá trình cài đặt đã thất bại
 
 Xin lỗi bạn.
 
 
 1) Khôi phục
 
 2) Hoàn thành
 
 
 Nhập: "
 read odk
 if [ "$odk" == "1" ];then
 mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
 cp -rf /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller.apk /system/priv-app/MiuiPackageInstaller
 rm -fr /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller.apk
 mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
 else
 rm -fr /sdcard/Tool-Tool/Apk-decom/MiuiPackageInstaller.apk
 fi
 back return
 elif [ "$tck" == "4" ];then
clear
echo "\e[32;1m

 Chuyển nền Quốc tế sang nền China
 
\e[0;1m "
echo -n "
 Tính năng này có thể rất nguy hiểm với 1 số

 máy nếu bị treo logo bạn vào twrp Bật Mount
 
 system lên Vào system đổi tên cái build.prop.bak
 
 thành build.prop nó sẽ hết bị treo logo 
 
 
 0) Trở lại

 1) Tiếp tục cài
 

 Nhập: "
 read china
 if [ "$china" == "0" ];then
 back return
 fi
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
sed -i.bak -e "s/ro.product.mod_device/#ro.product.mod_device/g" /system/build.prop
chmod -R 600 /system/build.prop
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a
 Xong.

 Bạn nên khởi động lại máy để hoàn
 
 tất quá trình chuyển đổi nền China.
 

 Nhập chữ bất kỳ để trở lại.\a"
 read
back return

# dấu mốc
else
echo -n "\a
 Nhập sai vui lòng nhập lại.\a"
sleep 2
back return
fi
}
back return
elif [ "$kk" == "9" ];then
# kk9
xomk ()
{
clear
echo "\e[31;1m

 Dọn dẹp Tool Tool \e[0;1m



"

echo -n " Chọn phần để dọn dẹp của Tool Tool
 

 1) Dọn dẹp .tmp
 
 2) Gỡ bỏ Tool Tool
 
 3) Trở lại
 
 
 Nhập: "
read Xox
if [ "$Xox" == "1" ];then
clear
echo -n '

 Đang tiến hành dọn dẹp .tmp';sleep 1;echo -n '.';sleep 1;echo -n '.';sleep 1;echo -n '.';

rm -fr /sdcard/Tool-Tool/.tmp/*

echo -n "\a - Xong.

 Chat chữ bất kỳ để quay lại."
read
xomk return
elif [ "$Xox" == "2" ];then
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
rm -fr /bin/Tool-Tool
rm -fr /bin/Tool-Chmod
rm -fr /sdcard/Tool-Tool
rm -fr /data/local/Tool-Apk
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
echo -n "\a - Xong.

 Chat chữ bất kỳ để khởi động lại máy."
read
clear
reboot
elif [ "$Xox" == "3" ];then
Tool return
else
echo -n "\a Nhập sai vui lòng nhập lại."
sleep 2
xomk return
fi
}
xomk return
elif [ "$kk" == "10" ];then
# kk10
qq ()
{
clear
ee ()
{
echo "\e[0;1m1"
echo "\e[0;2m2"
echo "\e[0;3m3"
echo "\e[0;4m4"
echo "\e[0;5m5"
echo "\e[0;6m6"
echo "\e[0;7m7"
echo "\e[0;8m8"
echo "\e[0;9m9"
}


echo "\e[32;1m

 Chào bạn đến với khu vực đăng nhập\e[0;1m

"


echo -n " Vui lòng điền TK và MK.

 0) Trở lại
 
 
 TK: \e[31;1m"
 read TK
 if [ "$TK" == "0" ];then
 Tool return
 fi
HH=`curl -#G https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/$TK`
 clear 
 echo -n "\e[0;1m
 MK: \e[0;8;7;m"
 read MK
 echo "\e[0;1m"

echo "\e[36;1m
 Xin chào $TK\e[0;1m"
 if [ "$MK" == "$HH" ];then
gdy ()
{
echo
echo -n "
 Vui lòng chọn tính năng cài đặt
 
 
 1) Cài đặt tự động
 
 2) Trở lại
 
 
 Nhập: "
 read Vip
 echo
 if [ "$Vip" == "1" ];then
Link='https://drive.google.com/file/d/10wAz8Rl6w1aVL_j1FLWGXydff5ti6L6w/view?usp=drivesdk'
Get=`echo $Link | cut -d '/' -f 6`
echo -n " "
curl -L# 'https://drive.google.com/uc?authuser=0&id='$Get'&export=download' -o /sdcard/kaka
unzip -oq /sdcard/kaka -d /sdcard/Tool-Tool/.tmp
cp -rf /sdcard/Tool-Tool/.tmp/sdcard/.1ka /sdcard
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
cp -rf /sdcard/Tool-Tool/.tmp/system/* /system
su -c "Tool-Chmod"
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
rm -fr /sdcard/Tool-Tool/.tmp/sdcard
rm -fr /sdcard/Tool-Tool/.tmp/system
rm -fr /sdcard/kaka
killall com.android.systemui
killall com.miui.home
echo -n "
 Chúc bạn may mắn lần sau."
 read
 Tool return
 elif [ "$Vip" == "2" ];then
 gdy return
 else
 echo -n "\a
 Nhập sai vui lòng nhập lại."
 sleep 2
 gdy return
 fi
 }
 gdy return
 else
 echo -n "\a
 Sai Mật khẩu\a"
 sleep 2
 qq return
 fi
 }
 qq return
elif [ "$kk" == "11" ];then
rbtt ()
{
clear
echo -n "\e[32;1m Menu Nguồn Và Reset App
\e[0;1m

 1) Khởi động lại
 
 2) Tắt nguồn
 
 3) Chế độ Fast Boot

 4) Chế độ Recovery
 
 5) Trở lại
 
 
 Nhập: "
 read Kbg
echo
echo
clear
if [ "$Kbg" == "1" ];then
echo -n " Khởi động lại sau 5 giây";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;
su -c "reboot"
elif [ "$Kbg" == "2" ];then
echo -n " Tắt nguồn sau 5 giây";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;
su -c "reboot -p shutdown"
elif [ "$Kbg" == "3" ];then
echo -n " Vào chế độ Fast Boot sau 5 giây";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;
su -c "reboot bootloader"
elif [ "$Kbg" == "4" ];then
echo -n " Vào chế độ khôi phục sau 5 giây";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;echo -n "\a.";sleep 1;
su -c "reboot recovery"
elif [ "$Kbg" == "5" ];then
Tool return
else
echo -n "\a Nhập sai vui lòng nhập lại\a"
sleep 2
rbtt return
fi
}
rbtt return
elif [ "$kk" == "12" ];then
clear
exit
else
close return; sleep 2;Tool return
fi
}
Tool return

