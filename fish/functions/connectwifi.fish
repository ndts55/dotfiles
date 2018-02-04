function connectwifi --description "connect to wifi network via command line"
	if count $argv == 2
		nmcli dev wifi connect $argv[1] password $argv[2]
	else
		echo "usage is connectwifi <ssid> <passwd>"
	end
end
