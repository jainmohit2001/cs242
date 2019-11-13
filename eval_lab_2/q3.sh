a=0 
b=1  
read -p "Enter the number: " n 
   
for (( i=0; i<$n; i++ )) 
do
    echo -n "$a "
    fn=$((a + b)) 
    a=$b 
    b=$fn 
done
echo