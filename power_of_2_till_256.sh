n=$1
power=1
while [ $power -le 256 ]; do
    echo $power
    power=$((power * 2))
    if [ $power -gt $((2**n)) ]; then
        break
    fi
done
