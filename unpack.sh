ba() {
tof unpack
}
unf() {
	random
	printf "\n Already created\n"
	}
	crf() {
		random
		printf "\n Creating your folder..\n"
		}
sp() {
	cd ~
	if [ -e setup ];then
	random
	printf "\n Already cloned\n"
	else
	random
	printf "\nCloning....\n"
	cd ~
	git clone https://github.com/rooted-cyber/setup
	cd ~/setup
	bash set.sh
	fi
	cd ~
	if [ -e Unpack ];then
	unf
	else
	crf
	mkdir ~/Unpack
	fi
	cd ~
	if [ -e Repack ];then
	unf
	else
	crf
	mkdir ~/Repack
	fi
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
	cd ~/A*I*
	cp -rf bin *sh ~/Unpack
	printf "copy \033[0m boot.img/recovery.img $(random) in ~/Unpack\n"
	cd  ~/Unpack
	read
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