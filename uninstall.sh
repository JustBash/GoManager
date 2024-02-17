reset

echo "GoManager"
echo "By Justman10000"
sleep 1

reset

echo "[1] Removing Go"
sleep 1
rm -r /usr/local/go

reset

echo "[2] Removing Go linked binarys"
sleep 1
rm -r /usr/bin/go*

reset

echo "DONE"