#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios e definindo senhas e grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -m -s /bins/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebatiana -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "Determinando o dono dos grupos..."

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Restrigindo e liberando permissões dos diretorios..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim do projeto linux 1"
