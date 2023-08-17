for user in $(cat /etc/passwd | cut -d: -f1) 
do 
  echo $user 
  chage -l $user | grep "Password expires" 
done | paste -d " " - - | sed 's/Password expires//g' 