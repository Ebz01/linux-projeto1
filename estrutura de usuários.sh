#! /bin/bash


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


useradd carlos -c 'carlos adm' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd maria -c 'maria adm' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd joao -c 'joao adm' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM

chown :GRP_ADM /adm
chmod 770 /adm

useradd debora -c 'debora vendas' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
useradd sebastiana -c 'sebastiana vendas' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
useradd roberto -c 'roberto vendas' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN

chown :GRP_VEN /ven
chmod 770 /ven

useradd  josefina -c 'josefina sec' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd  amanda -c 'amanda sec' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd  rogerio -c 'rogerio sec' -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC

chown :GRP_SEC /sec
chmod 770 /sec
chmod 777 /publico

