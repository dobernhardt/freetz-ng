FROM ubuntu:20.04
RUN apt-get update
RUN dpkg --add-architecture i386
RUN apt-get -y update
RUN apt -y install rsync kmod execstack sqlite3 libsqlite3-dev 
RUN apt -y install libzstd-dev:i386 libzstd-dev cmake 
RUN apt -y install lib32z1-dev unar inkscape imagemagick subversion git bc wget
RUN apt -y install sudo ccache gcc g++ binutils autoconf automake autopoint libtool-bin make bzip2 libncurses5-dev libreadline-dev zlib1g-dev flex bison patch texinfo tofrodos gettext pkg-config ecj fastjar perl libstring-crc32-perl ruby gawk python libusb-dev unzip intltool libacl1-dev libcap-dev libc6-dev-i386 lib32ncurses5-dev gcc-multilib lib32stdc++6 libglib2.0-dev 
RUN apt -y install iputils-ping
RUN apt -y install bsdmainutils
RUN apt -y install net-tools
RUN apt -y install ncftp
RUN useradd -m -u 1000 -g sudo -s /bin/bash freetz
COPY ./ /freetz
RUN chown -R freetz /freetz
RUN echo freetz:freetz | chpasswd