
#!/bin/bash

echo "Enter first number:"
read n1
echo "Enter second number:"
read n2

fact1=1
for ((i=1; i<=n1; i++)); do
  fact1=$((fact1 * i))
done

fact2=1
for ((i=1; i<=n2; i++)); do
  fact2=$((fact2 * i))
done

echo "Factorial of $n1 = $fact1"
echo "Factorial of $n2 = $fact2"
