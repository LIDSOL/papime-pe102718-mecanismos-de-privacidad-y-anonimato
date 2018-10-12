# TORNADO: Punto de acceso inálambrico para la red TOR

Este es un subproyecto del PAPIME Mecanismos de privacidad y anonimato.

## Objetivo

El proyecto consiste en crear una imagen arrancable basada en Linux para
computadoras embebidas de bajo costo (SBCs).
Esta imagen provee de forma automática un punto de acceso inalámbrico (WiFi)
que redirige todo el tráfico que pase por él, a la red TOR.
Esto animiza el tráfico de red del usuario, sin necesidad de configuraciones
adicionales.

## Justificación

- El producto generado por este subproyecto permitirá a periodistas,
activistas y todo aquel preocupado por su privacidad en la red, navegar de
forma anónima por internet, sin necesidad de conocimientos técnicos avanzados.

- La creación de este producto permite a los alumnos de la FI UNAM, aprender:
  - El desarrollo para Linux embebido
  - La construcción de imágenes mínimas de Linux
  - Creación de paquetes para [buildroot](https://buildroot.org/)
  - Gestión de hardware en Linux
  - Manejo de redes en Linux

- La documentación generada en el desarrollo de este producto permitirá el
desarrollo de productos similares en el futuro.

## Hardware compatible

Las imágenes desarrolladas han sido probadas en las siguientes computadoras:

- Raspberry Pi 3 Modelo B
- Raspberry Pi 3 Modelo B+
- Raspberry Pi 0 Modelo W

## Cómo funciona

Descarga la imagen adecuada para tu Raspberry Pi
TODO: añadir links a imágenes

Graba el archivo `sdcard.img` en una memoria MicroSD de al menos 128MB, puedes
usar [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager)
en Windows o GNOME Discos en Linux para grabar la imagen. Una vez grabada la
imagen en la MicroSD, insértala en la Raspberry Pi.

La computadora debe ser conectada a red por medio de un cable ethernet, y la
corriente eléctrica por medio de un cable micro usb, la raspberry pi 3 {B,B+}
requiere de una fuente de poder de al menos 5V y 2.5A.

Una vez conectada iniciará el sistema operativo y tras 1 minuto
aproximadamente, será posible conectarse por WiFi a la red `torrente` usando
la contraseña `torbellino`.

Si en algún momento necesitas acceder a la consola de la Raspberry puedes
iniciar sesión usando el usuario `root` y la contraseña `tormenta`. El acceso
por SSH esta deshabilitado por defecto pero puede ser habilitado.

## Agradecimentos
Se agradece el apoyo otorgado para la realización de este proyecto a la DGAPA
UNAM, PAPIME PE102718.

