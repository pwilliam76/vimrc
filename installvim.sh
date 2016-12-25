sudo apt-get install	build-essential \
			python-dev \
			python3-dev \
			libncurses5-dev \
			liblua5.1-dev \
			libgnome2-dev \
			libgnomeui-dev \
			libgtk-3-dev \
			libatk1.0-dev \
			libbonoboui2-dev \
			libcairo2-dev \
			libx11-dev \
			libxpm-dev \
			libxt-dev 
./configure	--with-features=huge \
		--enable-gui=gtk3 \
		--enable-cscope \
		--prefix=~/vim8.0/ \
		--enable-python3interp=yes \
		--with-python3-config-dir=/us/lib/python3.5/config-3.5m-x86_64-linux-gnu/ \
		--enable-pythoninterp=yes \
		--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ \
		--enable-perlinterp=yes \
		--enable-luainterp=yes \
		--with-lua-prefix=/usr/ \

