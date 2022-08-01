mkdir "carine"
cd "carine"
mkdir "resultado"
cd..
sudo apt-install wget
wget https://vanilton.net/v1/download/zip.zip
unzip "zip.zip"
mv "zip" "resultado"
rmdir "zip.zip"