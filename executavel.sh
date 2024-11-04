#!/bin/bash

echo "------------------------"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "------------------------"

echo "Criando Diretorios"
mkdir /publico
chmod 777 /publico/

mkdir /adm
chmod 770 /adm/

mkdir /ven
chmod 770 /ven/

mkdir /sec
chmod 770 /sec/

echo "Finalizando a criação de diretorios"

echo "-----------------------------------------"

echo "Criando Grupo AMD"
useradd carlos -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
passwd maria -e

useradd joao -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
passwd joao -e

echo
echo "Criando Grupo VEN"
useradd debora -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
passwd roberto -e

echo
echo "Criando Grupo SEC"
useradd josefina -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Usuario ADM" -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
passwd rogerio -e

echo
echo "Criando donos"
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/
echo "Finalizando processo!!"









