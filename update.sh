reset

echo "GoManager"
echo "By Justman10000"
sleep 1

reset

version=$(go version | grep -ioP '\d+\.\d+\.\d+')
latestVersion=$(curl -s https://go.dev/dl/ | grep -oP 'go([0-9]+(\.[0-9]+)+)\.linux-amd64\.tar\.gz' | sort -rV | head -n 1 | grep -oP '[0-9]+\.[0-9]+\.[0-9]+')

if [[ $version == $latestVersion ]]; then
    echo "You using the latest version of Go"
else
    echo "Your Go is outdated!"
fi