# T2. Instalación y configuración de sistemas ERP-CRM

## 2.1- Tipos de licencias de software

Todo producto industrial se desarrollará bajo un contrato entre creador y comprador. En este contrato se detallará el tipo de licencia implícita en el que se explicará las obligaciones del desarrollador y el usuario.
El tipo de licencia bajo el que se distribuya el software va a determinar las posibilidades de su uso, modificación y distribución del software. Una primera clasificación que podemos hacer sobre las licencias será sobre las licencias de código abierto y de código cerrado.

* Licencias de código abierto: Las licencias de código abierto suelen permitir su uso sin ningún tipo de restricciones y a su vez las podremos subdividir:
  * Licencias permisivas: Son aquellas que no imponen ningún tipo de limitación respecto a su uso, modificación o distribución del software.
  * Licencias Robustas: Este tipo de licencias tienen algunas limitaciones. Principalmente no van a dejar lucrarnos realizando modificaciones sobre ellas.
  * Fuertes: Este tipo de licencia obliga a que el software derivado tenga que ser distribuido bajo la misma licencia que el original.
  * Débiles: El software originado se distribuye igual que el original, pero las obras escritas derivadas podrán tener una licencia diferente.
* Licencias de código cerrado

Si clasificamos el software según la licencia con la que distribuye, tendremos software de código abierto y software propietario. El software de código abierto es el que se comercializará bajo una licencia de código abierto, lo que significa el acceso al código fuente y poder modificarlo. Entenderemos como software libre  aquel que se puede implantar para cualquier propósito.

## 2.2- Tipos de instalación: Organización por capas

* Monopuesto: En este tipo de instalaciones de va a instalar todo el software en un mismo ordenador, de forma que tenga acceso a el únicamente el usuario del sistema. Es frecuente en entornos de desarrollo y aprendizaje.
* Cliente servidor. En este tipo de distribución se instalan los datos y la gestión de estos en un ordenador, pudiendo acceder al control y administración de dichos datos desde diferentes puntos externos. También se instalará además en estas máquinas una aplicación cliente con la que nos podamos conectar al ordenador que contiene o sirve los datos. Esta configuración presenta gran flexibilidad con que habrá algún problema que habrá que considerar como la infraestructura de comunicaciones y los posibles fallos que pueda surgir de esta, ya que si fallara podría parar todo el funcionamiento de la empresa. También hay que mantener todos aquellos equipos pertenecientes a la red.
* Cliente servidor web: Aquí vamos a usar el modelo anterior, pero el interfaz sobre el que se accede a s servidor correrá sobre aplicaciones web. Como ventaja tiene que gana accesibilidad al ser accesible desde cualquier navegador web.
* SOAs: en este modelo se trabaja también sobre la filosofía cliente servidor y el servidor reside en una empresa externa encargada de la gestión del software y mantenimiento del sistema. Como ventajas tendremos la externalización del mantenimiento de los sistemas, pero como inconveniente, se pierde el control total sobre los servidores, ya que no residen en el ámbito de la empresa.
