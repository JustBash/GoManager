reset

echo "GoManager"
echo "By Justman10000"
sleep 1

reset

version=$(curl -s https://go.dev/dl/ | grep -oP 'go([0-9]+(\.[0-9]+)+)\.linux-amd64\.tar\.gz' | sort -rV | head -n 1 | grep -oP '[0-9]+\.[0-9]+\.[0-9]+')

echo "[1] Getting..."
sleep 1
wget https://go.dev/dl/go$version.linux-amd64.tar.gz

reset

echo "[2] Unpacking..."
sleep 1
gunzip go$version.linux-amd64.tar.gz
tar xvf go$version.linux-amd64.tar

reset

echo "[3] Moving..."
sleep 1
mv go /usr/local

reset

echo "[4] Linking..."
sleep 1
ln -s /usr/local/go/bin/* /usr/bin

reset

echo "[5] Removing archive..."
sleep 1
rm -r go$version.linux-amd64.tar

reset

echo "DONE"
go version