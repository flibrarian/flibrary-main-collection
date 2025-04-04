if ! command -v  mega-whoami &> /dev/null
then
	wget https://mega.nz/linux/repo/Debian_12/amd64/megacmd-Debian_12_amd64.deb
	sudo dpkg -i megacmd-Debian_12_amd64.deb
	sudo apt --fix-broken install -y
	rm megacmd-Debian_12_amd64.deb
	read -p 'Enter email: ' m
	echo
	read -sp 'Enter password: ' p
	echo
	mega-login $m $p
fi


mega-put library.dump /flibrary/main_collection
mega-deleteversions -f /flibrary/main_collection/library.dump
if [ -f "beta.dump" ]; then
	mega-put beta.dump /flibrary/main_collection
	mega-deleteversions -f /flibrary/main_collection/beta.dump
else 
	mega-rm -f /flibrary/main_collection/beta.dump
fi


