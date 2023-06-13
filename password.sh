echo "Enter your password"
read password
len="${#password}"
if test $len -ge 8;
then
echo "$password" | grep -q [0-9]
if test $? -eq 0
then
echo "$password" | grep -q [A-Z]
if test $? -eq 0
then
echo "$password" | grep -q [a-z]
if test $? -eq 0
then
echo "Strong password"
else
echo "Weak password -> should include a lower case letter"
fi
else
echo "Weak password -> should include a uppercase letter"
fi
else
echo "Weak password -> should include number in password"
fi 
else
echo "Weak password -> password length should have atleast 8 characters"
fi
