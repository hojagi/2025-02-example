# Поднять машину в YC
1. установить YC
2. выполнить инициализацию yc init
3. создать машину в облаке 
```
cd ./compute
./instance_create.sh <vm_name> <path/to/user_data_file>
```

# Развернуть Jenkins
- Создать docker context
```
docker context create levelup --docker "host=ssh://levelup@<ip-of-server>"
docker context use levelup
docker ps
```
- Синхронизировать каталог с jenkins на ВМ в облаке
```
cd ./jenkins
./sync_folder.sh
docker compose up -d
```