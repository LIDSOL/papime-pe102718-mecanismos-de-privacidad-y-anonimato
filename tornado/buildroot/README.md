# Imagen de Buildroot

Si llegaste aquí es por que quieres aprender a crear tu propio Isolating Proxy
para TOR :D (si no es así, aún puedes huir ;D).

## Qué es buildroot

Buildroot es un sistema que permite construir un sistema operativo
completamente funcional basado en GNU/Linux. Buildroot permite construir el
kernel y muchas utilidades adicionales que se incluyen en las distribuciones
más comunes, todo desde la fuente. Esto permite construir imágenes muy pequeñas
y ligeras.

## Cómo replicar la imagen

Puedes adaptar fácilmente los archivos de configuración a otro dispositivo
soportado por Buildroot usando los archivos de configuración que se encuentran
en la carpeta buildroot.

### Prerequisitos

Esta guía supone familiaridad con el uso de Linux y GIT.

### Ejemplo: construyendo una imagen para la Raspberry Pi 3 B(+)

Para construir la imagen para la Raspberry Pi 3B, primero debemos descargar el
repositorio de git de Buildroot.

```shell
git clone git://git.buildroot.net/buildroot
cd buildroot
```

Una vez descargado vamos crear una nueva rama (nosotros la nombramos `rpi3`)
a partir de algún tag de buildroot en este caso el tag `2018.05`

```shell
git checkout -b rpi3 2018.05
```

Podemos listar todos los dispositivos que estan soportados oficialmente en
Buildroot escribiendo en la consola:

```shell
make list-defconfigs
```

En nuestro caso nuestro dispositivo esta asociado a `raspberrypi3_defconfig`,
entonces debemos escribir en la terminal:

```shell
make raspberrypi3_defconfig
```

Con esto se habrá configurado buildroot para crear una imagen mínima para
nuestra computadora.

*Si tu computadora no se encuentra en la lista entonces debes indicar buildroot
la forma correcta de construir un kernel y sistema de ficheros para tu
computadora, esto esta totalmente fuera del alcance de esta guía.*

Antes de proceder a configurar los paquetes para la computadora, compila la
imagen para verificar que no este rota la compilación para esta versión de
Buildroot.

```shell
make
```

Si todo salió bien ahora deberias tener un archivo .img en la carpeta
`output/images`.

Ahora podemos configurar los demás paquetes necesarios para nuestro proxy
anonimizador. 

Buildroot incluye varias interfaces de usuario para poder configurar la imagen
del sistema, nosotros usaremos la interfaz basada en terminal. Para ejecutarla
escribe en la terminal `make menuconfig`, aparecerá una pantalla como esta:








