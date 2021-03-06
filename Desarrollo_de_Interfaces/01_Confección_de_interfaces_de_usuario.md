# T1. Confección de interfaces de usuario

## 1.1- Lenguajes de programación

Vamos a entender como lenguaje formal a un lenguaje diseñado para expresar procesos que puedan ser llevados a cabo por ordenadores y máquinas. Se utilizan para crear programas que controlen el comportamiento físico y lógico de dicha máquina. Dicho lenguaje estará formado por una serie de símbolos que formarán un alfabeto al que se le van a aplicar una serie de reglas sintácticas y semánticas.
Diferenciaremos entre lenguaje de programación y lenguaje informático como HTML o XML en que los segundos son lenguajes que nos permiten estructurar contenidos para documentos. Un lenguaje de programación ha de ser capaz de dar una definición concreta sobre qué conjunto de datos debe trabajar, cómo ha de almacenar dichos datos y ser capaz de transmitirlos. Además debe ser capaz de acceder a los recursos necesarios tanto de software como de hardware, y ha de ser también capaz de reconocer una serie de eventos o circunstancias sobre los que pueda actuar.

### 1.1.1- Tipos de lenguajes de programación

Vamos a hacer una distinción muy clara entre lenguajes de programación, que va a depender cómo de cercano es el lenguaje a la arquitectura de hardware. Entenderemos lenguajes de bajo nivel como aquellos totalmente dependientes del hardware, que no serán funcionales en otras máquinas que no compartan la misma arquitectura de hardware.

- Lenguajes de bajo nivel:
  _ Lenguaje máquina: El lenguaje máquina ordena a la máquina las operaciones a analizar en binario y es inviable para los seres humanos a pesar de ser más rápido.
  _ Lenguaje ensamblador: Es el lenguaje mas cercano al código máquina. Esta formado a partir de un conjunto de instrucciones. Es óptimo por su proximidad al hardware y permite interactuar a muy bajo nivel con el hardware. Sigue siendo complicado en comparación de alto nivel y a su vez complicado de mantener.
- Lenguajes de alto nivel: Son aquellos que están mas cerca del lenguaje humano. Suelen ser independientes de la arquitectura del ordenador, por lo que puede ser migrado entre diferentes máquinas sin problemas. Suele situarse en una capa de abstracción superior a la capa de hardware. A parte de esto, los lenguajes de alto nivel se dividen en propósito general (C) y específico (COBOL).
- Otra clasificación
  _ Compilados: Necesitan de software concreto para realizar la compilación, asociación con las librerías y generar el objeto ejecutable.
  _ Interpretado: No necesita generar objetos ejecutables para funcionar, se interpreta línea a línea. Esto causa que en caso de error se ejecuten erróneamente algunas sentencias pero se pueda seguir ejecutando el programa.

### 1.1.2- Paradigmas de programación

Un paradigma de programación es una propuesta acogida por una comunidad de programadores, y cuyo núcleo central es incuestionable. La función del paradigma es aportar soluciones a problemas concretos. Normalmente, cuando se generan nuevos paradigmas que solucionan problemas existentes en la ingeniería del software, suelen venir acompañados por nuevos lenguajes de programación sobre los que se apoyara ese paradigma.
Uno de los paradigmas mas usados en programación es el paradigma de P.O.O. Este paradigma se fundamenta en una entidad llamada objeto, que estará formada por los datos y unidades de procesamiento da le entidad, que es a la vez relacionable con otras entidades y objetos. Como ventajas de la P.O.O. es que se corrigieron problemas de fiabilidad, mantenimiento y adaptación a cambios, gracias a que datos y procesamiento ya no estaban separados, características como el encapsulado o la herencia. En la P.O.O.:

- Definimos 'Clases' (Características de los objetos)
- Creamos instancias

Los paradigmas más comunes de la programación:

- Procedimentales (C)
- Declarativos (Prolog, SQL)
- P.O.O. (Java, C++)

## 1.2- P.O.O, Programación dirigida a eventos y Programación basada en componentes

### 1.2.1- P.O.O

El uso de la P.O.O se popularizo a principio de los años 90. Esta fundamenta en el uso de objetos para diseñar aplicaciones. Se hace uso de diferentes técnicas como el polimorfismo o la abstracción. Los objetos son entidades que tienen un determinado estado, además de un comportamiento y una identidad.

- Estado: El estado va a venir determinado por los valores de sus atributos
- Comportamiento: El comportamiento va a venir definido por sus métodos, y además determinarán que operaciones pueden realizar.
- Identidad: La identidad es la propiedad de un objeto que lo diferencia del resto.

Van a formar una unidad indivisible que llevará implícita la comunicación con otras entidades del programa y estarán bien diferenciadas del resto de entidades. Los métodos y atributos están estrechamente relacionados por la propiedad conjunto, es decir, una clase va a depender de sus métodos para modificar sus atributos.
Respecto las diferencias entre programación estructurada y la P.O.O., decir que en la programación estructurada los datos y procedimientos están separados y sin relación. Simplemente se introducen unos datos de entrada para recibir otros de salida.

### 1.2.2- Programación dirigida a eventos

En este paradigma de programación tanto la estructura como la ejecución de los programas van a venir determinados por los eventos o sucesos que ocurren en el sistema, en contraposición a la programación estructurada donde el flujo secuencial viene determinado por el programa En programación dirigida a eventos el flujo va a venir determinado por los eventos que han de ser controlados. La programación dirigida a eventos es la base de la interfaz de usuario. Este tipo de programación apareció en los años 70 ante las necesidades de que el usuario pudiera interactuar con el ordenador a diferencia de la programación secuencial.

### 1.2.3- Programación basada en componentes

El fundamento de esta rama de la programación es la de dividir los sistemas existentes en componentes funcionales o lógicos con interfaces. Estas interfaces deberán de estar bien definidos para la comunicación entre los componentes.
El nivel de abstracción de un componente ha de ser mayor que en de un objeto, por lo que no compartirán un estado y se comunicaran intercambiando mensajes que contienen datos. Una propiedad que ha de cumplir un componente es la reusabilidad. Para que esto se cumpla, debe ser muy estricto con las especificaciones que se le han otorgado en tiempo de diseño. Las características de un componente para que pueda se reutilizable serán:

- Debe estar completamente documentado
- Debe estar probado exhaustivamente
- Debe estar diseñado pensando que será usado de manera imprevista

## 1.3- Herramientas propietarias y libres de edición de interfaces

### 1.3.1- Herramientas libres

Ventajas:

- Existen aplicaciones para todas las plataformas.
- Suelen ser gratuitas
- Suelen permitir libertad de copia
- Algunas tienen libertad de modificación y redistribución
- El usuario no suele depender del autor del software

Inconvenientes:

- Dificulta la instalación y mantenimiento
- Hay una inexistencia de garantías o soporte
- Uso de interfaces arduos
- Suele tener menor compatibilidad

### 1.3.2- Herramientas propietarias

Una característica de las herramientas propietarias es que no se tiene acceso al código fuente.

Ventajas:

- Facilidad de adquisición del producto
- Especificidad
- I+D (reinversión de capital)
- Interfaces gráficos mejor acabados
- Compatibilidad con hardware

Inconvenientes:

- Se suelen enfocar a plataformas comerciales
- No pueden ser copiadas a otros equipos por cuestión de licencias e inconvenientes
- El usuario no va a poder adaptarlo o modificarlo
- No son redistribuibles
- Altos costes de licencia
- El usuario va a depender de la empresa que genera el software

### 1.3.3- IDE

Un IDE es un entorno de desarrollo. Estos suelen contener todos las herramientas básicas para la generación de aplicaciones. Los componentes mas típicos que encontraremos en cualquier IDE serán:

- Editor de texto
- Interprete
- Depurador
- Cliente
- Sistema de control de versiones o repositorio de software
- Utilidades para la construcción de interfaces gráficos (frontend)

## 1.4- Bibliotecas de componentes

Una librería es un conjunto de implementaciones funcionales codificada en un lenguaje de programación, que además ofrecerá un interfaz muy definido para la funcionalidad que enfoca. El funcionamiento de una librería es diferente al de un programa ejecutable. No puede ser ejecutado de forma independiente como ocurre con las aplicaciones, sino que el objetivo es que sea utilizado por otros programas de forma simultánea. Muchísimos de los servicios proporcionados por los sistemas operativos están proporcionados por librerías.

### 1.4.1- Bibliotecas estáticas

Una biblioteca estática es un fichero contenedor con varios archivos de código empaquetado. Durante el compilado de la aplicación, estos archivos van a ser enlazados, copiados y regenerados en un fichero final ejecutable. En el proceso de compilación habrá una asociación directa entre el ensamblado de la aplicación con el acceso a las librerías. En este caso la biblioteca actúa como un recipiente para los ficheros de código objeto, las referencias del programa con las subrutinas de la biblioteca. Serán enlazados y resueltos en tiempo de compilación.
_ Ruta relativa: Entendamos por ruta relativa una referencia a una librería desde un lugar concreto.
_ Ruta absoluta: Entendamos por ruta absoluta la dirección completa indicando el disco

### 1.4.2- Bibliotecas dinámicas

Son unos tipos de ficheros que contienen código objeto construido de forma independiente a su ubicación, de tal modo que están preparadas para poder ser requeridas y cargadas en tiempo de ejecución de cualquier programa, en lugar de tener que ser enlazadas previamente en tiempo de compilación, por lo tanto dichas bibliotecas han de estar disponibles como objetos independientes al programa ejecutable. Dichas librerías como por ejemplo las .dll en Windows van en directorios del sistema. En el proceso de enlazado en tiempo de compilación se generará un archivo ejecutable con anotaciones de qué bibliotecas dinámicas requiere. En este punto no se va a decir donde se encuentran, ya que habrá unas funciones intermediarias que se encargarán de delegar la llamada de la función al cargador dinámico (dynamic loader). En el resto del programa las llamadas a las funciones de la biblioteca se cambian por una llamada a la función intermediaria, que es generada en tiempo de compilación por el enlazador (linker).
Por otra parte cuando la aplicación que se ejecute requiera acceder al las rutinas (métodos) de la biblioteca dinámica y ejecute la función intermediaria, el cargador de enlaces dinámicos será capaz de sustituir la llamada por la función real de la biblioteca cargando en memoria los recursos necesarios. Las ventajas del enlace dinámico respecto al estático son que permiten la reutilización del código y del espacio físico. Una misma librería se comparte entre varios programas.

Uno de los problemas que en cargador tiene que gestionar es que la localización real de los datos de la biblioteca no puede conocerse hasta que el ejecutable y todas las bibliotecas enlazadas han sido cargadas en memoria. Esto va a ser debido a que las localizaciones en memoria van a depender de que bibliotecas dinámicas sean cargadas, por lo cual, no va a ser posible depender de una dirección absoluta de los datos en el ejecutable ni la biblioteca, ya que podrán generar conflictos entre las diferentes bibliotecas. Esto ocurriría si varias bibliotecas usan las mismas direcciones. En la práctica ocurre que muchas veces las bibliotecas no cambian frecuentemente, por lo que es posible calcular una dirección de carga probable para cada una de las bibliotecas compartidas antes de ser utilizada, por lo que las bibliotecas van a ser cargadas en direcciones predeterminadas. Con esto lo que se va a conseguir es acelerar el proceso de enlace dinámico, que es conocido como pre-binding o pre-linking. Una de las mayores desventajas del enlace dinámico es que el funcionamiento correcto de los ejecutables va a depender de una serie de bibliotecas aisladas, por lo que si dicha biblioteca es borrada, movida o renombrada, o incluso es una versión incompatible el ejecutable no se podrá cargar. En Windows este error es conocido como DLL Hell.
En los sistemas Unix existe una ruta de búsqueda que especifica los directorios del sistema donde hay que buscar las bibliotecas dinámicas. En algunos sistemas la ruta es especificada en un fichero de configuración, y en otros estará prefijada en el cargador dinámico. Algunas aplicaciones pueden especificar directorios adicionales en los que buscar las bibliotecas de un determinado programa.

### 1.4.3- Bibliotecas remotas

Otra solución al problema de las bibliotecas es ejecutar ejecutables completamente separados y llamarlos usando llamadas a procedimientos remotos. Estos procedimientos remotos irán en red a otra computadora, y sin conocidos como Remote Procedure Call. Este enfoque va a maximizar la reutilización del sistema operativo y dichos programas no requieren que la biblioteca esté grabada en la misma máquina, redireccionando la petición por la red. La parte negativa de este enfoque implica que cada llamada a la biblioteca requiera un nivel elevado de carga. Las llamadas RPC son mucho mas costosas que las llamadas a procedimientos de la propia máquina. Este enfoque se usa principalmente en arquitecturas distribuidas que además suelen hacer uso intensivo de las RPCs, en los sistemas cliente servidor y las aplicaciones cliente servidor.

## 1.5- Clases, propiedades y métodos

Definimos clase como la plantilla que determina absolutamente el objeto al que representa, y definiremos objeto como la instanciación en memoria de la clase por la que es representada. Cada clase ha de contener y definir el conjunto de variables o propiedades que representaran el conjunto del objeto al igual que su estado. Cada clase va a contener a su vez unos métodos apropiados para operar con las propiedades, de forma que van a definir el comportamiento del objeto. Las clases son un pilar fundamental en la P.O.O. que permita abstraer sus datos (atributos) y operaciones (métodos). Todos estos van a funcionar como una caja negra con respecto al resto de componentes de la aplicación, en la que tendrán una entrada de datos, habrá unas modificaciones de las propiedades del objeto (si procede) y una salida de datos. Las clases se componen de elementos miembros de varios tipos:

- Campos de datos: Se utilizan para almacenar datos que reflejan el estado de una clase. Podrán estar almacenados en variables o en estructuras más complejas como tipo 'structs'. Habitualmente las variable miembro serán privadas al objeto.
- Métodos: Su función va a ser la de implementar la funcionalidad asociada al objeto. Son los equivalentes a las funciones en programación estructurada, pero se diferencian de estas en que es posible acceder a las variables de forma implícita. Cuando deseamos realizar una modificación sobre el objeto, se le dice que se le manda un mensaje invocando un método que realizará la acción. Los lenguajes de programación más modernos tienen un tercer tipo de miembro que son las propiedades. Estos son un tipo especial de métodos, debido a que es común que las variables mimbro son privadas ara mantener el acceso y mantener la coherencia de las clases surge la necesidad de permitir consultar o modificar su valor mediante pares de métodos. Básicamente esto es llamado 'getter' o 'setter' y son utilizados al instanciar los objetos y al asignar sus propiedades.

## 1.6- Componentes

La programación orientada a componentes es una rama de la ingeniería del software enfocada a le descomposición de sistemas ya conformados en componentes funcionales o lógicos, que tienen además interfaces bien definidos usados para la comunicación entre dos componentes. Un componente de software es un elemento de un servicio que ofrece una funcionalidad determinada y que va a ser capaz de conectarse o comunicarse con otros componentes. El objetivo de la programación orientada a componentes es construir un mercado global de componentes software, donde los usuarios son los propios desarrolladores de las aplicaciones que necesitan, hechas en modo componente para poder ser reutilizados y además testados para construir sus aplicaciones de forma más rápida y robusta. Las entidades básicas serán los propios componentes, que son sistemas cerrados que encapsulan cierta funcionalidad y que son diseñados para que dicha funcionalidad sea usada a partir de sus interfaces. La capacidad de ser utilizado o reusabilidad es una característica importante de un componente de alta calidad. La programación orientada a componentes es una disciplina muy joven en la que los resultados obtenidos se centran mas en la identificación de los problemas que en la resolución de los mismos. Algunos de los problemas mas frecuentes en la que se encuentra el diseño de componentes son:

- Clarividencia: Se va a referir a la dificultad que se encuentra un diseñador de un componente al realizar su diseño, ya que no se conoce quién lo va a usar, en que aplicaciones o en qué circunstancias y es un problema muy ligado a la reusabilidad.
- Evolución de componentes: La gestión de la evolución es un serio problema, ya que en sistemas grandes han de coexistir diferentes versiones de un mismo componente.
- Percepción del entorno: Es la posibilidad de un componente de descubrir el entorno en el que se encuentra, como de los servicios y recursos disponibles en él
- Particularización: Va a ser el como adaptar los componentes a necesidades concretas de una aplicación, siempre sin manipular su implementación.
- Asincronía o Carrera de eventos: Problema que se presenta por los tiempos de comunicación en los sistemas abiertos, ya que no son despreciables los retrasos. Es muy complicado garantizar el orden relativo en el que se distribuyen los eventos.

## 1.7- Enlace a orígenes de datos

La mayoría de las aplicaciones usan bases de datos relacionales, cuya función es la de almacenar datos. Cuando la aplicación recupera los datos, lo puede hacer usando un formato de conjunto de datos DataReader y se distribuirán a través de la aplicación utilizando un objeto. independientemente de la base de datos o la aplicación, se utilizaran componentes lógicos de acceso a datos. Las tecnologías de acceso a datos, como por ejemplo ADO.NET proporcionan una interfaz de acceso a datos en la que se suele separar la lógica empresarial de la lógica de datos. Dichos componentes genéricos suelen proporcionar métodos para realizar las operaciones CRUD. Un componente de ayuda para el acceso a bases de datos centraliza el acceso de la API a datos y su configuración, de forma que nos permita reducir el código duplicado.

<div style="display:none">
```
|---------------------|      |---------------------|      |------------------|      |----------------------------|
| Componentes lógicos |      | Componente de ayuda |      |     ADO.NET      |      |                        (BD)|
|         de          | ---> |          de         | ---> |      API de      | ---> | Procedimientos almacenados |
|   acceso a datos    |      |    acceso a datos   |      | conexión a datos |      |      (Tablas y vistas)     |
|---------------------|      |---------------------|      |------------------|      |----------------------------|
```
</div>

```mermaid
graph LR
A[Componentes lógicos<br/>de<br/>acceso a datos]
B[Componente de ayuda<br/>de<br/>acceso a datos]
C[ADO.NET<br/>API de<br/>conexión a datos]
D["(BD)<br/>Procedimientos almacenados<br/>(Tablas y vistas)"]

A-->B-->C-->D
```

Los componentes lógicos de Acceso a datos exponen métodos para insertar, eliminar, actualizar y recuperar datos. Pueden usar un componente de ayuda de acceso a datos para centrar la administración de la conexión y todo el código relacionado con el origen de datos específico. Si se puede se recomienda implementar las consultas y operaciones de todos los datos como procedimientos almacenados, de forma que mejore el rendimiento.

## 1.8- Interfaces relacionados con el acceso a datos

ADO.NET es un conjunto de clases que proporciona servicios de acceso a datos para los frameworks de .net. Constituye una parte integral del propio framework y proporciona acceso a datos relacionales.

## 1.9- Cuadros de diálogo

Un cuadro de diálogo es un tipo de ventana que va a permitir comunicación entre el usuario y el sistema. El cuadro mas simple únicamente informara al usuario mostrando un texto y/o gráfico, dando la posibilidad al usuario de mostrar el cuadro. A parte existen cuadros de pregunta o confirmación, que además de mostrar información ofrecen alternativas al usuario. Los cuadros de diálogo podremos clasificarlos e modales o no modales, según si impiden o permiten que el usuario siga usando el programa ignorando los cuadros de diálogo. Los cuadros modales se suelen utilizar para mostrar información critica ante eventos peligrosos y acciones irreversibles.
