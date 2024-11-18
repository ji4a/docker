FROM almalinux/8-base

RUN dnf install epel-release -y \
    && dnf groupinstall "Development Tools" -y \
    && dnf install wget -y
    
RUN wget https://ccrypt.sourceforge.net/download/1.11/ccrypt-1.11.tar.gz \
    && tar -xzf ccrypt-1.11.tar.gz \
    && cd ccrypt-1.11 \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -rf ccrypt-1.11 ccrypt-1.11.tar.gz

CMD ["ccrypt", "--version"]
