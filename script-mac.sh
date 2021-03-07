# disable spotlight indexing
sudo mdutil -i off -a
#curl -s https://install.zerotier.com | sudo bash
echo Edit script-mac.sh in your fastmac repo to auto-run commands in your Mac instances
hdiutil create -type SPARSE -fs 'Case-sensitive Journaled HFS+' -size 300g ~/android.dmg.sparseimage
mkdir -p ~/aosp
hdiutil attach -mountroot ~/aosp ~/android.dmg.sparseimage &
#mountAndroid() { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }
#mountAndroid &
mkdir ~/bin
PATH=~/bin:$PATH
ulimit -S -n 20480
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git config --global user.name "Apon77"
git config --global user.email "khalakuzzamanapon5@gmail.com"
git config --global color.ui false
git clone https://github.com/Apon77/linux ~/linux --depth 1
source ~/linux/others/append_bashrc.sh
