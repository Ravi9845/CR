RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install && \
    sudo yum groupinstall "Development Tools" && \
    sudo yum install gettext-devel libffi-devel glibc-devel zlib-devel && \
    wget http://ftp.gnome.org/pub/gnome/sources/glib/2.28/glib-2.28.8.tar.xz && \
    tar -xf glib-2.28.8.tar.xz && \
    cd glib-2.28.8 && \
    ./configure && \
    make && \
    sudo make install && \
    glib-config --version
