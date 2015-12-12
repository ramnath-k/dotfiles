#!/bin/bash
# in the installer choose to edit the option for install ubuntu by pressing e and remove 'quiet splash' and add 'nomodeset' to the line with linux
# do not choose wifi or any other option and let the install complete normally
# turn on wifi
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install -y ubuntu-restricted-addons
sudo apt-get install -y ubuntu-restricted-extras
sudo apt-get install -y nvidia-352
sudo apt-get install -y git 
sudo apt-get install -y vim
# for compiling python from source
sudo apt-get install -y build-essential zlib1g-dev gcc-multilib g++-multilib libffi-dev libffi6 libffi6-dbg python-crypto python-mox3 python-pil python-ply libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libgdbm-dev dpkg-dev quilt autotools-dev libreadline-dev libtinfo-dev libncursesw5-dev tk-dev blt-dev libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libsqlite3-dev libgpm2 mime-support netbase net-tools bzip2 libpng12-dev
# for numpy
sudo apt-get install -y libatlas-base-dev liblapack-dev gfortran cython
sudo apt-get install -y python-pip
# for scikit-image and opencv
sudo apt-get install -y libjpeg-dev libtiff5-dev
# opencv dependencies https://help.ubuntu.com/community/OpenCV
sudo apt-get remove ffmpeg x264 libx264-dev
sudo apt-get install -y checkinstall cmake pkg-config yasm libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 unzip
# download latest python from python.org and cd to download directory
tar -xf Python-2.7.11.tar.xz
cd Python-2.7.11
./configure --prefix /usr/local/lib/python2.7.11 --enable-ipv6
make
sudo make install
cd ~/Documents
wget https://bootstrap.pypa.io/ez_setup.py
sudo /usr/local/lib/python2.7.11/bin/python ez_setup.py
sudo /usr/local/lib/python2.7.11/bin/easy_install pip
sudo /usr/local/lib/python2.7.11/bin/pip install virtualenv virtualenvwrapper
# add 'export PATH=$PATH:/usr/local/lib/python2.7.11/bin/' to ~/.bashrc
# add 'source /usr/local/bin/virtualenvwrapper.sh' to ~/.bashrc
source ~/.bashrc
mkvirtualenv opencv2
workon opencv2
pip install numpy 
pip install scipy 
pip install matplotlib
# verify that a simple snippet like plt.plot([1,2,3]) produces a plot when executed as a python script
pip install scikit-learn
pip install -U scikit-image
# download opencv 2.4.11 source from opencv.org
unzip opencv-2.4.11.zip
cd opencv-2.4.11
mkdir release
cd release
cmake -D MAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=$VIRTUAL_ENV/local/ -D PYTHON_EXECUTABLE=$VIRTUAL_ENV/bin/python -D PYTHON_PACKAGES_PATH=$VIRTUAL_ENV/lib/python2.7/site-packages -D INSTALL_PYTHON_EXAMPLES=ON ..
make -j7
make install
pip install ipython
# vim dependencies
sudo apt-get remove vim vim-runtime gvim
sudo apt-get remove vim-tiny vim-common vim-gui-common
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev git
# vim compile from source
export LD_LIBRARY_PATH=$VIRTUAL_ENV/lib/
cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=$VIRTUAL_ENV/lib/python2.7/config \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-gui=gtk2 --enable-cscope --prefix=$VIRTUAL_ENV	
make VIMRUNTIMEDIR=$VIRTUAL_ENV/share/vim/vim74
make install

