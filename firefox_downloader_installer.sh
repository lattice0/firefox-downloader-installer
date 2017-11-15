#LucasZanella.com firefox downloader + local installer for Ubuntu

INSTALLATION_FOLDER=/home/$USER/Apps
#echo with color: https://stackoverflow.com/a/5947802
RED='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${RED} Downloading latest Firefox tar from mozilla.org through HTTPs...${NC}"
wget --progress=bar:force:noscroll -O Firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-SSL&os=linux64&lang=en-US"
echo -e "${RED}Extracting Firefox.tar.bz2...${NC}" && tar jxf Firefox.tar.bz2
rm Firefox.tar.bz2
echo -e  "${RED}Moving firefox folder to $INSTALLATION_FOLDER ${NC}"
mkdir --parents $INSTALLATION_FOLDER; mv firefox $_ #https://stackoverflow.com/a/547927
echo -e "${RED}Creating desktop entry...${NC}"
echo "[Desktop Entry]
Version=1.0
Name=Firefox
Comment=Open Source browser
Exec=$INSTALLATION_FOLDER/firefox/firefox
Path=$INSTALLATION_FOLDER/firefox/
Icon=$INSTALLATION_FOLDER/firefox/browser/icons/mozicon128.png
Terminal=false
Type=Application
Categories=Browser;" > /home/$USER/.local/share/applications/firefox.desktop
