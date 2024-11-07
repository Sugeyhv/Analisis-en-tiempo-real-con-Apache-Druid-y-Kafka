
  # Analisis en tiempo real con Apache druid y kafka

Este proyecto se centra en la Ingeniería de Datos y el análisis en tiempo real de un ecommerce simulado de productos, utilizando Rappi como caso de estudio. Con tecnologías como Apache Druid, Kafka, y Grafana desplegadas en una instancia EC2 de AWS, se desarrolló una solución robusta para la ingesta y análisis eficiente de datos de ventas en streaming.

## Tabla de Contenidos
- [Descripción General y Arquitectura del Proyecto]](https://github.com/Sugeyhv/Analisis-en-tiempo-real-con-Apache-Druid-y-Kafka/raw/main/imagenes/Arquitectura_del_proyecto.png)
- [Primeros Pasos: Ejecución del Proyecto](#primeros-pasos-ejecución-del-proyecto)
- [Implementación en la Nube](#implementación-en-la-nube)

## Descripción General y Arquitectura del Proyecto

Este proyecto presenta  Analisis  en tiempo real que ingiere, procesa y analiza datos simulados de un Ecommerce online, resolviendo desafíos clave en la ingeniería de datos. La canalización emplea herramientas como Python, Confluent Cloud, Kafka, Apache Druid y Grafana, todas desplegadas en AWS, para gestionar el streaming de datos de manera eficiente, asegurar consultas rápidas y proporcionar visualización dinámica. Esta solución ejemplifica los procesos modernos en ingeniería de datos, desde la ingesta y procesamiento de grandes volúmenes de datos hasta la generación de análisis visuales claros y efectivos.

### Componentes Tecnológicos

1. **Python**
   
 Python es ampliamente utilizado en proyectos de ingeniería de datos debido a su versatilidad, amplias bibliotecas y facilidad de uso. Utilicé las bibliotecas kafka-python y confluent-kafka para gestionar la ingesta y el procesamiento de datos en tiempo real, lo que permitió una integración fluida con Apache Kafka. También empleé el módulo geopy, específicamente la clase Nominatim, para generar coordenadas para cada ciudad donde se registraron los pedidos de los usuarios. Esto facilitó la geocodificación de los datos de ubicación, permitiendo el análisis geográfico y la visualización dentro del proyecto. Adicionalmente, utilicé la biblioteca random para generar números aleatorios y realizar operaciones relacionadas con la aleatoriedad, como seleccionar elementos aleatorios de una lista. También usé la biblioteca time para manipular y medir el tiempo, incluyendo funciones para pausas y para obtener la hora actual.

2. **PostgreSQL**  
   PostgreSQL sirvió como base de datos de procesamiento de transacciones en línea (OLTP) para este proyecto, con la tarea de almacenar datos transaccionales. Para empezar, elaboré meticulosamente un esquema de base de datos, que luego se implementó dentro de PostgreSQL. La conectividad con PostgreSQL se estableció utilizando la biblioteca psycopg2, un robusto adaptador de PostgreSQL para Python, Además, se puede acceder al script SQL utilizado para crear las tablas de la base de datos en "database/postgres_tables.sql".

4. **Confluent y Apache Kafka**  
  En este proyecto, implementé Confluent Apache Kafka como la columna vertebral para la ingesta y el procesamiento en tiempo real de eventos de ventas en un ecommerce simulado de Rappi. Kafka permite la transmisión eficiente de datos, gestionando flujos de eventos de manera escalable y resiliente. Esto no solo facilita el análisis en tiempo real de comportamientos de compra, sino que también optimiza la gestión del inventario y la detección de fraudes, asegurando que la plataforma responda rápidamente a las dinámicas del mercado y mejore la experiencia del cliente. 

5. **Instancia EC2 (AWS)**  
   La instancia EC2 de AWS consume datos del tópico de Kafka y permite el análisis en tiempo real en Apache Druid.

6. **Apache Druid**  
  Druid es una base de datos analítica en tiempo real de alto rendimiento. El principal valor añadido de Druid es reducir el tiempo necesario para obtener información y actuar.
Druid está diseñado para flujos de trabajo donde las consultas rápidas y la ingesta realmente importan. Druid se destaca por potenciar las interfaces de usuario, ejecutar consultas operativas (ad hoc) o manejar una alta concurrencia. Considere a Druid como una alternativa de código abierto a los almacenes de datos para una variedad de casos de uso. La documentación de diseño explica los conceptos clave.


7. **Grafana**  
   Este es el panel de control del software de monitorización, que permite visualizar datos de forma gráfica y en tiempo real. Grafana se utiliza en este proyecto para crear dashboards interactivos y monitorear el rendimiento de las ventas de manera continua. La conexión con ClickHouse se realiza mediante el plugin "grafana-clickhouse-datasource”, permitiendo acceder a datos actualizados al instante y optimizando la experiencia de visualización en tiempo real

## Implementación en la Nube

Desplegué Apache Druid en una instancia EC2 para aprovechar la escalabilidad de AWS y optimizar el procesamiento de datos.

### Primeros Pasos: Ejecución del Proyecto

#### Prerrequisitos
Antes de lanzar una instancia EC2, revisa esta guía de inicio rápido. Utilizamos una instancia **t2.xlarge** con 4 vCPUs y 16 GiB de RAM para satisfacer los requisitos del proyecto.

#### Procedimientos de Implementación

1. Accede a la consola AWS EC2.
2. Crea una nueva instancia EC2.
3. Instala Apache Druid en la instancia.
4. Ejecuta y abre Druid en tu navegador.

##### Paso 1: Crear una Instancia EC2
- **Sistema Operativo**: Ubuntu 22.04
- **Tipo de Instancia**: t2.xlarge
- Configura un Grupo de Seguridad con las reglas de entrada adecuadas.
- Lanza la instancia.

##### Instalar Apache Druid
Conéctate a la instancia creada mediante SSH y sigue estos pasos de configuración.

##### Ejecutar Apache Druid
Para ejecutar Druid, utiliza el siguiente comando desde la instancia EC2:

```bash
./bin/start-micro-quickstart

  
