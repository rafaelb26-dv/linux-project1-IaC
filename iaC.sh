#!/bin/bash

echo "Criando diretórios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

userad carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
userad maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
userad joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_ADM

userad debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_VEN
userad sebastian -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_VEN
userad roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_VEN

userad josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_SEC
userad amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)    -G GRP_SEC
userad rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim do script..."
