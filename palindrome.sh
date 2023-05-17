n=12321
rev=$(echo $n | rev)
if [ $n -eq $rev ]
then
echo "number is palindrome"
else
echo "number is not palindrome"
fi

