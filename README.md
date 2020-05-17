# Terraform con Digital Ocean

## Pre-config
Para usar Terraform con Digital Ocean necesitamos un token de autenticación. Este token lo podemos conseguir en:
https://cloud.digitalocean.com/account/api/tokens

Después creamos una env en el .bashrc con lo siguiente:
```
TF_VAR_digitalocean_token= 
``` 

En los ficheros de terraform se puede leer cualquier variable de entorno siempre que empiecen por `TF_VAR_`.

En este caso `digitalocean_token` es una variable que esta dentro del fichero `_provider.tf` para autenticarnos.

## Descargar plugin de Digital Ocean
Antes de poder aplicar los cambios hay que descargarse el plugin con:
```
terraform init
```

Esto descargará el plugin de Digital Ocean.

## Check de la configuración
Antes de aplicar los cambios podemos verificar si la configuración es correcta y si lo que va a aplicar es lo deseado:
```
terraform plan
```

## Aplicar cambios
Para aplicar todos los cambios ejecutamos:
```
terraform apply
```

## Destruir todos los cambios
Para eliminar todo:
```
terraform destroy
```
