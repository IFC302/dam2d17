# T3. Organización y consulta de la información

## 3.1- Introducción

La base de datos de un sistema ERP es de gran envergadura, almacena las tablas con todos los datos de la aplicación, con las vistas de las diferentes tablas y otros elementos como funciones o disparadores que realizan operaciones sobre los datos. Por ello, debido de esta gran cantidad de información almacenada es necesario la organización de todos sus componentes.
Lo que se hace es establecer una serie de normativas o nomenclaturas para organizar la información, que los desarrolladores deberán seguir a la hora de modificar el código fuente o el esquema de la base de datos. por ejemplo, incluir un prefijo en los componentes de la base de datos para saber a que módulo pertenece, o establecer una serie de campos dentro de una tabla como obligatorios para poder asegurar el funcionamiento de la aplicación. En los sistemas de planificación empresarial desarrollados en un lenguaje orientado a objetos cualquier datos es accesible a través de los objetos.
Cualquier método que quiera activar sobre un objeto deberá de tener un parámetro que indique sobre que recurso o registro dentro de dicho objeto se quiere actuar, por ejemplo, si queremos enviar un correo electrónico en todos los colaboradores indicados en el rango del 1 al 5 según su id que sabemos que están dentro de la tabla `res_partner` utilizaremos una instrucción como la siguiente.
Podemos decir, en resumen, que un objeto es un concepto amplio que engloba a todo elemento que forma parte de la aplicación y que permite además acceder a los datos de esta.

### 3.1.1- Seleccionado de tablas y vistas de la base de datos

Como ya sabemos, un objeto va  a guardar todo elemento que forma parte de la aplicación. Como elementos de la aplicación tendremos la propia base de datos con sus tablas, disparadores y acciones sobre dichas tablas además de sus informes y ventanas. Vamos a entender como una tabla una estructura de datos organizada en filas y columnas, de manera que cada columna es un campo y cada fila un registro.
En ocasiones la base de datos está formada por tantas tablas y objetos que se vuelve difícil de manejar. En estos casos interesa que algunos grupos o perfiles de usuarios tengan una vista parcial de esos datos. En estos casos utilizamos las vistas, donde una vista es una tabla virtual a donde podremos acceder como si se tratase de una tabla de esquema, pero que realmente no lo es. Tiene la misma estructura que las tablas (filas y columnas) y podremos acceder a ellas a través de la misma forma.
Para administrar la base de datos nos conectaremos directamente al gestor de base de datos a través de una herramienta como por ejemplo pgAdmin. Para realizar la conexión en pgAdmin necesitaremos los campos:

* Nombre: Nombre de la conexión
* Servidor: Dirección de nombre de servidor (`localhost`)
* Puerto: Número de puerto de conexión (`5432`)
* Base de datos de mantenimiento: Normalmente `postgres`
* Nombre de usuario: Usuario de conexión al entorno (`openpg`)
* Contraseña (`admin`)

### 3.1.2- Consultas de acceso a datos

Las consultas de acceso a datos nos van a permitir acceder a la información que se guarda en las tablas y las vistas. Las consultas de acceso a datos sirven para indicar al sistema de gestión de la base de datos que devuelva una serie de información en un conjunto de registros. los pasos que utilizaremos para crear una consulta serán:

1. Seleccionar las tablas o vistas sobre las que va a actuar la consulta.
2. Establecer la relación entre las tablas y vistas.
3. Seleccionar los campos que queramos mostrar en la consulta.
4. Ejecutar dicha consulta.

Las consultas de acceso a datos se pueden construir escribiendo el código en lenguaje SQL, aunque también podríamos utilizar asistentes y constructores gráficos si las consultas no son muy complejas.

## 3.2- Visualización de la información

Dado que todos los datos del programa están almacenados en objetos, tanto la información de las tablas como las de cualquier otro objeto de la aplicación se van a mostrar a través de interfaces.
Cada objeto va a tener su propio interfaz, por ejemplo no se va a mostrar de la misma manera los datos de una empresa que los datos de una factura. Las interfaces van a poder ser:

* Interfaces estáticas: Se crean dentro del código de la aplicación y no pueden ser modificadas.
* Interfaces dinámicas: No pueden ser modificadas por parte del usuario, por lo cual se almacena la descripción de la vista en un lenguaje de descripción de datos que permita su modificación, como es el XML. Por tanto, las interfaces dinámicas son construidas de forma dinámica a través de su descripción XML de forma que genere la pantalla del cliente. Así se pueden hacer objetos sencillos simplemente tomando como ejemplos otros objetos que ya hayan sido creados por la aplicación.

El siguiente código es un ejemplo de construcción de un objeto en Odoo:

```xml
<?xml version="1.0" encoding="utf-8"?>
<form string="partner">
    <field name="name"/>
    <field name="title"/>
    <field name="ref"/>
    <field name="lang"/>
    <field name="customer"/>
    <field name="supplier"/>
</form>
```

En el código anterior se esta definiendo una interfaz, en esta se va a poder introducir y consultar datos. Y mas concretamente se muestran 6 campos correspondiente al nombre, al titulo, a la referencia, al lenguaje, y dos boolean que guardan si se trata de un cliente o de un proveedor. Esta definición se almacenara a través de un fichero xml que al abrirlo desde la aplicación mostraría el objeto resultante. Ruta de vistas XML en Odoo:

`C:\Program Files (x86)\Odoo 13.0\server\odoo\addons\sale\views`

<div style="display: none">

```txt
PASOS

1. Ajustes
2. Activar Modo Desarrollador
3. Formulario (Un producto por ejemplo)
4. Botón debug: EDITAR VISTA / FORMULARIO
```

</div>

* Nombre de la vista: Determina la vista modificada
* Tipo de vista: Determina como se muestra la información
  
Ejemplo: `product.template.product.form`

Vista heredada: `product.template.common.form -> product.template.product.form`

```sql
// Ejemplo para consiltar en la base de datos db01 donde están las vistas.
SELECT name, model, type, arch_db FROM ir_ui_view;
```

<div style="display: none">

```txt
RUTA DE DIRECTORIOS

project
│   README.md
│   file001.txt
│
└───folder1
│   │   file011.txt
│   │   file012.txt
│   │
│   └───subfolder1
│       │   file111.txt
│       │   file112.txt
│       │   ...
│
└───folder2
    │   file021.txt
    │   file022.txt
```

</div>

### 3.2.1- Interfaces de entrada de Datos y procesos

Podemos definir una o varias interfaces para cada objeto o tipo de recurso, para describir que campos se muestran y como se van a mostrar. Dependiendo de como e distribuyan los campos nos podemos encontrar los siguientes tipos de interfaces:

* Formularios: Se muestra un solo registro cuyos campos se distribuyen en la pantalla siguiendo siempre el mismo criterio. Normalmente la información se mostrará de izquierda a derecha y de arriba a abajo, de acuerdo con el orden en el que son descritos en la vista.
* Árboles: Este tipo de interfaces se va a utilizar cuando queramos mostrar un conjunto de registros en modo lista, y será útil para mostrar varios registros a la vez y realizar búsquedas sobre ellos.
* Gráficos (KANBAN): Los gráficos son otra forma de ver los datos de un formulario, pueden mostrarse de varias formas para una mejor visualización de la información.

### 3.2.2- Definición de campos

Al principio del apartado vimos un ejemplo de definición de un objeto. Decíamos que los objetos están definidos en archivos XML. Como ya sabemos un objeto está formado por campos, que son la información que mostraremos por pantalla. Por ejemplo, una vista de un tipo formulario con dos campos llamados nombre y título la podríamos definir de la siguiente forma:

```xml
<?xml version="1.0"?>
<form string="empresa">
    <field name="name">
    <field name="title">
</form>
```

la etiqueta `form` nos indica que vamos a describir un formulario. Dentro de ella tenemos la etiqueta `field` para cada uno de los campos que la componen. Cada etiqueta debe empezar con el símbolo `<` y acabar con el símbolo `>`. En las vistas de formulario los campos van predefinidos por una etiqueta con su nombre y se colocan de izquierda a derecha con el nombre que se declara en el fichero XML.
Hay un tipo especial de campo que son los campos con relación que son los campos one2many. Estos campos se utilizan para reflejar una relación uno a varios entre dos objetos. Por ejemplo, el campo `address` dentro del objeto `res.partner` es un campo one2many lo cual quiere decir que ese campo está enlazado con otro objeto (`res.partner.address`), Lo que quiere decir que un registro de `res.partner` podrá tener muchas registros del otro objeto. 
En el menú de campos vamos a poder ver los campos del objeto del formulario que estemos usando.
Además de los campos existen varios tipos de elemento de diseño que nos van a permitir personalizar las vistas de tipo form y las vistas de tipo tree. Alguno de ellos serán:

* `mode`: Nos va a determinar el tipo de vistas que va a permitir el objeto.
* `name`: Es el nombre del campo en el objeto
* `separator`: Agrega una línea de separación en el formato. El atributo `string` define la etiqueta del tipo separador y `colspan` define su tamaño, generando en la visualización del archivo XML un línea de arriba a bajo.
  
```xml
<table>
    <separator string="link" colspan="4"/>
</table>
```

* `notebook`: Nos va a permitir distribuir los campos de la vista en diferentes pestañas que van definidas por páginas.

```xml
<notebook colspan="4"/>
    //Stuff
<notebook/>
```

* `field`: Por otra parte, a la etiqueta `field` se le pueden añadir:
* `colspan = 4`: Alguno de estos atributos serán el  numero de columnas por las que se puede extender un campo
* `readonly = 1` establece un campo como solo de lectura.
* `invisible = true`: Nos va a ocultar el campo y su etiqueta.
* `password = true`: Va a reemplazar la entrada de un campo por el símbolo `*`.
* `string = ""`: Nos va a determinar la etiqueta que aparece junto al campo.

### 3.2.3- Menús

Para acceder a los objetos que creamos en la aplicación deberemos definir previamente los menús como las acciones asociadas a estos.
Los menús pueden ser editados desde la opción de cambiar menú, de forma que podamos modificar el menú y generar nuevos submenús. A la hora de definir menús secundarios deberemos definir el menú padre del que depende. Los menús tienen asociada la acción que van a realizar. Hay diferentes tipos de acciones y las mas importantes son:

* `window`: Va a abrir una vista en una nueva ventana.
* `report`: Va a imprimir un informe.
* `wizard`: Va a ejecutar un asistente para realizar un determinado trabajo o proceso.

Por tanto, cuando creamos un menú tenemos que indicarle el tipo de acción asociada que queremos que tenga. Si la acción no está creada utilizaremos el botón nuevo para crearla. Los campos a introducir van a variar según la acción que se trate. Por ejemplo, para crear una opción que nos abra una vista introduciremos como mínimo nombre de la acción, tipo de la acción (`ir.actions.act_window`) y datos de la vista (tipo árbol, form, etc.).

### 3.2.4- Informes y listados de la aplicación

Los informes y listados son una forma de listar datos mejorando su visualización. Muchos de ellos están creados y son accesibles desde los diferentes menús de nuestra aplicación. Algunos de los más típicos son:

* Informes contables (ingresos y gastos, facturación, etc.)
* Albaranes
* Pedidos
* Recibos
* Reclamaciones de/a proveedores/clientes
* Informes estadísticos
* Impresión de documentos del sistema (uso del ERP, numero usuarios, flujo de trabajo)

Los informes y listados que incorpora la aplicación se pueden utilizar directamente, también podremos adaptar el diseño y la información para obtener listados personalizados. A parte de esto podremos generar nuevos informes instalándolos como módulos independientes. en el caso de Odoo los módulos extra que contiene exclusivamente informes llevarán en el nombre la etiqueta `report`.
