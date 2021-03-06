cd Telegram && \
mkdir includes &&\
wget "https://www.openssl.org/source/openssl-1.0.2o.tar.gz" &&\
tar -xzvf openssl-1.0.2o.tar.gz &&\
rm -rf openssl-1.0.2o.tar.gz &&\
mv openssl-1.0.2o openssl &&\
cd openssl &&\
./config &&\
make &&\
make install &&\
cd .. &&\
openssl req -newkey rsa:2048 -sha256 -nodes -keyout private.pem -x509 -days 365 -out public.pem &&\
echo "Install complete."
