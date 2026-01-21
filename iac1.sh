#!/bin/bash

echo "Iniciando provisionamento..."

echo "1. Limpeza..."
rm -rf /publico /adm /ven /sec
userdel -r carlos 2> /dev/null
userdel -r maria 2> /dev/null
userdel -r joao 2> /dev/null
userdel -r debora 2> /dev/null
userdel -r sebastiana 2> /dev/null
userdel -r roberto 2> /dev/null
userdel -r josefina 2> /dev/null
userdel -r amanda 2> /dev/null
userdel -r rogerio 2> /dev/null
groupdel GRP_ADM 2> /dev/null
groupdel GRP_VEN 2> /dev/null
groupdel GRP_SEC 2> /dev/null

echo "2. Criando diretórios..."
mkdir /publico /adm /ven /sec

echo "3. Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "4. Criando usuários..."

SENHA=$(openssl passwd -6 Senha123)

# GRP_ADM
useradd carlos -m -s /bin/bash -p $SENHA -G GRP_ADM
useradd maria -m -s /bin/bash -p $SENHA -G GRP_ADM
useradd joao -m -s /bin/bash -p $SENHA -G GRP_ADM

# GRP_VEN
useradd debora -m -s /bin/bash -p $SENHA -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $SENHA -G GRP_VEN
useradd roberto -m -s /bin/bash -p $SENHA -G GRP_VEN

# GRP_SEC
useradd josefina -m -s /bin/bash -p $SENHA -G GRP_SEC
useradd amanda -m -s /bin/bash -p $SENHA -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $SENHA -G GRP_SEC

echo "5. Permissões..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!"
