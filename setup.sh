#/bin/bash
case "$1" in
        -i)
		case "$2" in
			amd64)
				dpkg -i all/fontconfig-config_2.12.3-0.2_all.deb
				dpkg -i amd64/libfontconfig1_2.12.3-0.2_amd64.deb
				dpkg -i amd64/libhunspell-1.6-0_1.6.1-2_amd64.deb
				dpkg -i amd64/thunderbird_52.2.1-4_amd64.deb
				dpkg -i amd64/lightning_52.2.1-4_amd64.deb
				dpkg -i all/calendar-google-provider_52.2.1-4_all.deb
			;;
			i386)
				dpkg -i all/fontconfig-config_2.12.3-0.2_all.deb
				dpkg -i i386/libfontconfig1_2.12.3-0.2_i386.deb
				dpkg -i i386/libhunspell-1.6-0_1.6.1-2_i386.deb
				dpkg -i i386/thunderbird_52.2.1-4_i386.deb
				dpkg -i i386/lightning_52.2.1-4_i386.deb
				dpkg -i all/calendar-google-provider_52.2.1-4_all.deb
			;;
			*) 
				echo "Option unrecognized (amd64 or i386 expected)"
				echo "Use \"-h\" option to have help."
		esac
	;;
	-r)
		apt-get update
		apt-get purge thunderbird
	;;
        -v)
		echo "Setup ver. 1.0"
		echo "Thunderbird ver. 52.2.1-4"
	;;
	-h)
		echo "To install Thunderbird (64-bit), you have to enter:"
		echo "\"setup -i amd64\""
		echo "To install Thunderbird (32-bit), you have to enter:"
		echo "\"setup -i i386\""
		echo "You can remove Thunderbird by the command:"
		echo "\"setup -r\""
	;;
		
        *)
		echo "Option unrecognized"
		echo "Use -h argument to have help."
	;;
esac
