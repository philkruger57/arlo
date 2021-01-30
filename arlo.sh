#!/bin/sh



echo "$(date) " >>log2.txt

curl "https://api.sunrise-sunset.org/json?lat=30.642444&lng=-97.708488&date=today" | /usr/local/Cellar/jq/1.6/bin/jq | grep "sunrise" > sunrise.dat
curl "https://api.sunrise-sunset.org/json?lat=30.642444&lng=-97.708488&date=today" | /usr/local/Cellar/jq/1.6/bin/jq | grep "sunset" > sunset.dat


d=$(date +%H)       
echo "$d"

if [ "$d" = "00" ]
then
exit
fi


if [ "$d" = "01" ]
then
exit
fi

if [ "$d" = "02" ]
then
exit
fi

if [ "$d" = "03" ]
then
exit
fi


if [ "$d" = "04" ]
then
exit
fi

if [ "$d" = "05" ]
then
exit
fi

if [ "$d" = "06" ]
then
exit
fi


#if [ "$d" = "20" ]
#then
#exit
#fi


if [ "$d" = "21" ]
then
exit
fi


if [ "$d" = "22" ]
then
exit
fi


if [ "$d" = "23" ]
then
exit
fi











#date>>log.txt



curl -H "Content-Type: application/json;charset=UTF-8" -d '{"email":"userid@gmail.com","password":"userpw"}' -X POST "https://arlo.netgear.com/hmsweb/login" > token-out.txt


echo
echo


awk -F "\"" '{print $14}' token-out.txt > setv.txt
auth=$(cat setv.txt)
echo auth = $auth
echo $auth


echo
echo




awk -F "\"" '{print $6}' token-out.txt > setv.txt
aruserid=$(cat setv.txt)
echo aruserid  = $aruserid
wb="_web"

echo '"'from'"':'"'$aruserid$wb'"' 





echo
echo
awk -F "\"" '{print $4}' token-out.txt 
awk -F "\"" '{print $6}' token-out.txt 



echo
awk -F "\"" '{print $8}' token-out.txt 
awk -F "\"" '{print $10}' token-out.txt 



echo
awk -F "\"" '{print $12}' token-out.txt 
awk -F "\"" '{print $14}' token-out.txt 


echo
echo
echo
echo





#https://arlo.netgear.com/hmsweb/users/library/





curl -v -H "Authorization: $auth" -X GET "https://arlo.netgear.com/hmsweb/users/devices" > devices.txt









































#curl -H "Content-Type: application/json;charset=UTF-8" -H "Authorization: $auth" -d '{"dateFrom":"20191211","dateTo":"20191211"}' -X POST "https://my.arlo.com/hmsweb/users/library" > library.txt







































echo
echo
awk -F "\"" '{print $4}' devices.txt
awk -F "\"" '{print $6}' devices.txt
echo 
echo 
echo 
echo 

awk -F "\"" '{print $8}' devices.txt
awk -F "\"" '{print $10}' devices.txt
echo 

awk -F "\"" '{print $10}' devices.txt > setv.txt
ardeviceid=$(cat setv.txt)
echo ardeviceid = $ardeviceid
echo 
echo 
echo 
echo 






awk -F "\"" '{print $12}' devices.txt
awk -F "\"" '{print $14}' devices.txt
echo

awk -F "\"" '{print $14}' devices.txt > setv.txt
arparentid=$(cat setv.txt)
echo arparentid  = $arparentid







echo 
echo 
echo 
echo 

echo '"'to'"':'"'$arparentid'"'
echo '"'from'"':'"'$aruserid$wb'"' 
t='"'$aruserid$wb'"' 
echo $t

echo '"'resource'"':'"'cameras/$ardeviceid'"'



parm='{ "'"to"'":"'"$arparentid"'","'"from"'":"'"$aruserid$wb"'", "'"resource"'":"'"cameras/$ardeviceid"'","'"action"'":"'"set"'","'"publishResponse"'":True,"'"transId"'":"'"web!8e3a372f.8adff!1509302776732"'","'"properties"'": { "'"activityState"'":"'"fullFrameSnapshot"'"}}'
#,,"action":"set","publishResponse":True,"transId":"web!8e3a372f.8adff!1509302776732","properties": { "activityState":"fullFrameSnapshot"}}


echo $parm
























echo 
echo 
echo 
echo 









awk -F "\"" '{print $16}' devices.txt
awk -F "\"" '{print $18}' devices.txt
echo

awk -F "\"" '{print $18}' devices.txt > setv.txt
aruniqueid=$(cat setv.txt)
echo aruniqueid  = $aruniqueid
echo 
echo 
echo 
echo 


awk -F "\"" '{print $34}' devices.txt
awk -F "\"" '{print $36}' devices.txt
echo

awk -F "\"" '{print $36}' devices.txt > setv.txt
arcloudid=$(cat setv.txt)
echo arcloudid  = $arcloudid
echo 
echo 
echo 
echo 






awk -F "\"" '{print $20}' devices.txt
awk -F "\"" '{print $22}' devices.txt
echo

awk -F "\"" '{print $24}' devices.txt
awk -F "\"" '{print $26}' devices.txt
echo

awk -F "\"" '{print $28}' devices.txt
echo

awk -F "\"" '{print $30}' devices.txt
awk -F "\"" '{print $32}' devices.txt
echo

awk -F "\"" '{print $34}' devices.txt
awk -F "\"" '{print $36}' devices.txt
echo
echo
echo










echo
echo














curl  -v -H 'Content-Type: application/json;charset=UTF-8' -H "Authorization: $auth" -H 'xcloudId: V6YTKPV-1700-336-109805793' -d '{"to":"4YY2937WA040B","from":"6V959-336-51357377_web","resource":"cameras/4YY2937WA040B","action":"set","responseUrl":"","publishResponse":true,"transId":"web!a92a7542.907a68!1575809686169","properties":{"activityState":"startUserStream","cameraId":"4YY2937WA040B"}}
' -X POST https://my.arlo.com/hmsweb/users/devices/startStream 


echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'



























sleep 1

curl  -v -H 'Content-Type: application/json;charset=UTF-8' -H "Authorization: $auth" -H 'xcloudId: V6YTKPV-1700-336-109805793' -d '{ "parentId":"4YY2937WA040B","deviceId":"4YY2937WA040B","olsonTimeZone":"America/Chicago" }' -X POST https://my.arlo.com/hmsweb/users/devices/takeSnapshot 


echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'
echo '********************'




sleep 1

curl  -v -H 'Content-Type: application/json;charset=UTF-8' -H "Authorization: $auth" -H 'xcloudId: V6YTKPV-1700-336-109805793' -d '{"to":"4YY2937WA040B","from":"6V959-336-51357377_web","resource":"cameras/4YY2937WA040B","action":"set","responseUrl":"","publishResponse":true,"transId":"web!a92a7542.907a68!1575809686169","properties":{"activityState":"stopUserStream","cameraId":"4YY2937WA040B"}}
' -X POST https://my.arlo.com/hmsweb/users/devices/stopStream 


sleep 10

/bin/zsh -c ./arlo2.sh