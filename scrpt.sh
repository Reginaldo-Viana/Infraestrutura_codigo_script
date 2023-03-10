echo "Criar diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /secretariado

echo "Grupos..."

groupadd GRP_ADM
groupadd GRP_VENDAS
groupadd GRP_SEC

echo "Usuários..."

echo "Administrativo..."
useradd carlos -m -c "Carlos_Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd carlos -e
useradd maria -m -c "Maria_Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd maria -e
useradd joao -m -c "João do setor Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd joao -e

echo "Setor de vendas..."
useradd debora -m -c "Débora_Vendas" -s /bin/bash -G GRP_VENDAS -p $(openssl passwd -crypt 1234)
passwd debora -e
useradd sebastiana -m -c "Sebastiana_Vendas" -s /bin/bash -G GRP_VENDAS -p $(openssl passwd -crypt 1234)
passwd sebastiana -e
useradd roberto -m -c "Roberto_Vendas" -s /bin/bash -G GRP_VENDAS -p $(openssl passwd -crypt 1234)
passwd roberto -e

echo "Secretariado"
useradd josefina -m -c "Josefina_Secretariado" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd josefina -e
useradd amanda -m -c "Amanda_Secretariado" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd amanda -e
useradd rogerio -m -c "Rogério_Secretariado" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd rogerio -e

echo "Novo usuário deverá realizar alteração da senha padrão no primeiro acesso"

echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VENDAS /vendas
chown root:GRP_SEC /secretariado

chmod 777 /publico
chmod 770 /adm
chmod 770 /vendas
chmod 770 /secretariado

echo "Infraestrutura concluída 🔧"
