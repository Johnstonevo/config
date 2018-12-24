clear

echo
echo "Updating Attract Mode to the latest version....."
echo
sleep 2
echo

#updating sfml-pi
echo
echo "Updating SFML-PI....."
echo
sleep 2

cd ~; mkdir develop
sudo apt-get install cmake libflac-dev libogg-dev libvorbis-dev libopenal-dev libfreetype6-dev libudev-dev libjpeg-dev libudev-dev libfontconfig1-dev
cd ~/develop
git clone --depth 1 https://github.com/mickelson/sfml-pi sfml-pi
mkdir sfml-pi/build; cd sfml-pi/build
cmake .. -DSFML_RPI=1 -DEGL_INCLUDE_DIR=/opt/vc/include -DEGL_LIBRARY=/opt/vc/lib/libbrcmEGL.so -DGLES_INCLUDE_DIR=/opt/vc/include -DGLES_LIBRARY=/opt/vc/lib/libbrcmGLESv2.so
sudo make -j4 install
sudo ldconfig

#updating FFMPEG
echo
echo "Updating FFMPEG....."
echo
sleep 2

cd ~/develop
git clone --depth 1 git://source.ffmpeg.org/ffmpeg.git
cd ffmpeg
./configure --enable-mmal --disable-debug --enable-shared
make -j4
sudo make -j4 install
sudo ldconfig

#updating attract mode
echo
echo "Updating Attract Mode....."
echo
sleep 2

cd ~/develop
git clone --depth 1 https://github.com/mickelson/attract attract
cd attract
make USE_GLES=1
sudo make install USE_GLES=1

#tidy up
echo
echo "Tidying up Install files"
echo
cd ~; rm -r -f ./develop



echo
echo "Finished updating Attract Mode ..... about to reboot."
echo
sleep 5

sudo reboot now
