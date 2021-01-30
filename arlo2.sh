#later

T=1576688520733
D=$(date -j -f %s  $(($T/1000)) '+%Y:%m:%d:%H:%M:%S')



variable=$(date '+%Y%m%d')

variableH=$(date '+%H')

variableM=$(date '+%M')

echo $variable


echo $variableH


echo $variableM




















curl -H "Content-Type: application/json;charset=UTF-8" -d '{"email":"userid@gmail.com","password":"userpw"}' -X POST "https://arlo.netgear.com/hmsweb/login" > token-out.txt


echo
echo


awk -F "\"" '{print $14}' token-out.txt > setv.txt
auth=$(cat setv.txt)
echo auth = $auth
sleep 2



curl -H "Content-Type: application/json;charset=UTF-8" -H "Authorization: $auth" -d '{"dateFrom":"20200323","dateTo":"20200330"}' -X POST "https://my.arlo.com/hmsweb/users/library" > libraryx.txt

curl -H "Content-Type: application/json;charset=UTF-8" -H "Authorization: $auth" -d '{"dateFrom":"'"$variable"'","dateTo":"'"$variable"'"}' -X POST "https://my.arlo.com/hmsweb/users/library" > library.txt














echo Steven@30 | sudo -S cat library.txt | jq . > library2.txt 
echo Steven@30 | sudo -S awk '/presignedContentUrl/ {print} ' library2.txt > library3.txt   
echo Steven@30 | sudo -S awk  -F "\"" '{print $4}'  library3.txt > library4.txt     



# old stuff
#rm library4jpg.txt
#touch library4jpg.txt
#rm library4mp4.txt
#touch library4mp4.txt








grep '.mp4' library4.txt > library4.mp4.txt
grep '.jpg' library4.txt > library4.jpg.txt




cat library4.jpg.txt
cat library4.mp4.txt






rm librarycrlj.sh
touch librarycrlj.sh
chmod 755 librarycrlj.sh







input="library4.jpg.txt"
i=0
date=$(date '+%Y.%m.%d.%H.%M.%S')
while IFS= read -r line
do
  
let i++
date=$(date '+%Y.%m.%d.%H.%M.%S')

#echo $i $date
#sleep 1




 echo $line | awk  -F "/" '{print $8}' | awk  -F "?" '{print $1}' > libraryfname.txt

cat libraryfname.txt














fname=$( cat libraryfname.txt )
echo $fname

echo $fname | awk  -F "." '{print $1}' >librarydname.txt
dname=$( cat librarydname.txt )
echo "************* " $dname

D=$(date -j -f %s  $(($dname/1000)) '+%Y:%m:%d:%H:%M:%S')
 echo $D
 
echo $D.$fname
 




echo " curl "\""$line"\"" -o $D.$fname"
echo " curl "\""$line"\"" -o House/$D.$fname" >> librarycrlj.sh
done < "$input"


input="library4.mp4.txt"
i=0
date=$(date '+%Y.%m.%d.%H.%M.%S')
while IFS= read -r line
do
  
let i++
date=$(date '+%Y.%m.%d.%H.%M.%S')

#echo $i $date
#sleep 1




 echo $line | awk  -F "/" '{print $8}' | awk  -F "?" '{print $1}' > libraryfname.txt


cat libraryfname.txt


fname=$( cat libraryfname.txt )
echo $fname
 
echo $fname | awk  -F "." '{print $1}' >librarydname.txt
dname=$( cat librarydname.txt )
echo "************* " $dname
 
D=$(date -j -f %s  $(($dname/1000)) '+%Y:%m:%d:%H:%M:%S')
 echo $D
 
echo $D.$fname







echo " curl "\""$line"\"" -o $D.$fname"
echo " curl "\""$line"\"" -o House/$D.$fname" >> librarycrlj.sh
done < "$input"




#chmod 755 librarycrlj.sh

./librarycrlj.sh

exit






















rm crl.sh
touch crl.sh
chmod 755 crl.sh


 







echo
echo
echo
echo
echo
echo
echo
echo
echo
                                                                                               

input="library4.jpg.txt"
i=0
date=$(date '+%Y.%m.%d.%H.%M.%S')
while IFS= read -r line
do
  
let i++
date=$(date '+%Y.%m.%d.%H.%M.%S')

#echo $i $date
#sleep 1

echo " curl "\""$line"\"" -o House.$date.$i.jpg"
echo " curl "\""$line"\"" -o House.$date.$i.jpg" >> crl.sh
done < "$input"




input="library4.mp4.txt"
j=0
date=$(date '+%Y.%m.%d.%H.%M.%S')
while IFS= read -r line
do
  
let j++
date=$(date '+%Y.%m.%d.%H.%M.%S')

echo $date




echo " curl "\""$line"\"" -o House.$date.$j.mp4"
echo " curl "\""$line"\"" -o House.$date.$j.mp4" >> crl.sh
done < "$input"



#zsh crl.sh











