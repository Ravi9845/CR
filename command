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

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':buildContainerBuilderImage'.
> Could not build image: The command '/bin/sh -c curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&     unzip awscliv2.zip &&     sudo ./aws/install &&     sudo yum groupinstall "Development Tools" &&     sudo yum install gettext-devel libffi-devel glibc-devel zlib-devel &&     wget http://ftp.gnome.org/pub/gnome/sources/glib/2.28/glib-2.28.8.tar.xz &&     tar -xf glib-2.28.8.tar.xz &&     cd glib-2.28.8 &&     ./configure &&     make &&     sudo make install &&     glib-config --version' returned a non-zero code: 1

* Try:
> Run with --stacktrace option to get the stack trace.
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.
