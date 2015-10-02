
cd ~/
git clone https://github.com/pengwynn/grc.git

cd grc
sudo sh ./install.sh
cd ../

git clone https://github.com/nitso/colour-mysql-console.git
sudo wget -O /usr/share/grc/conf.mysql https://raw.githubusercontent.com/nitso/colour-mysql-console/master/.grcat >/dev/null 2>&1
