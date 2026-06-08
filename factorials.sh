$ cat factorial.sh
#!/bin/bash
echo "find a factorial of a given number"
echo "enter a number:"
read n
fac=1
for((i=1; i<=n; i++ ))
do
        fac=$((fac*i))
done
echo "factorial of $n is $fac"
