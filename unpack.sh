ba() {
tof unpack
}
sp() {
	git clone https://github.com/rooted-cyber/setup
	cd ~/setup
	bash set.sh
	cd ~
	mkdir ~/Unpack ~/Repack
	}
unp() {
	cd  ~/Unpack
	if [ -e ramdisk ];then
	random
	printf "\n Now repacking....\n"
	cd  ~/Unpack
	bash .repac*img*
	cp *new* ~/Repack /sdcard
	exit
	fi
	random
	cd ~
	cp -rf A*I*K ~/Unpack
	printf "copy \033[0m boot.img/recovery.img in ~/Unpack\n"
	cd  ~/Unpack
	if [ -e *img ];then
	cd ~/Unpack
	random
	printf "\nNow unpacking....\n"
	bash .unp*img.sh *img
	else
	unp
	fi
	if [ -e ramdisk ];then
	random
	printf "\n Successfully unpacked\n\n Now run again for Repack\n"
	fi
	}
men() {
ba
printf "\n\033[1;92m [\033[0m1\033[1;92m]\033[1;91m Unpack or repack .img file.\n"
printf "\n\033[1;92m [\033[0m2\033[1;92m]\033[1;91m setup \n\n"
echo -e -n "Select >> "
read u
case $u in
1)unp ;;
2)sp ;;
*)men ;;
esac
}
men