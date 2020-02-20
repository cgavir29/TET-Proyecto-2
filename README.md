# TET-Proyecto-2

## 1. Información del Proyecto
* **a) Integrantes**

	* Santiago Arredondo Quintero
	* Kevyn Santiago Gómez Patiño
	* Camilo Gaviria Castrillón
	
* **b)  Aplicación Seleccionada**
	* Wordpress
	
* **c) Dominio en el DCA**
	* `proyecto02.dis.eafit.edu.co`
  
* **d) Dominio en Amazon Empleado**
	* `protet.ml`
  
* **e) IP en el DCA**
	* `200.12.180.100`
  
* **f) IP Pública en Amazon**
	* TODO
  
* **g) Etc.**

  	* TODO

## 2. Entendimiento del Proyecto

TODO

## 3. Contexto del Proyecto

TODO

## 4. Avances por Semana del Proyecto 
* **a) Semana 2**
	* Se registró en equipo de trabajo en google docs.
	* Inicialmente habíamos pensado en trabajar con Moodle y lo desplegamos en clase usando Docker en el DCA para comprender el funcionamiento del mismo y empezar a familiarizarnos tecnología de contenedores.
* **b) Semana 3**
	* Cambiamos sistema al CMS Wordpress.
	* Aprendizaje de Docker y herramientas como docker-compose para el despliegue. El siguiente es el fichero de configuración `docker-compose.yml` en que se trabajó durante esta semana y con el cual se desplegó la aplicación posteriormente.
	```
	version: '3.3'

	services:
	   db:
	     image: mysql:5.7
	     volumes:
	       - db_data:/var/lib/mysql
	     restart: always
	     environment:
	       MYSQL_ROOT_PASSWORD: somewordpress
	       MYSQL_DATABASE: wordpress
	       MYSQL_USER: wordpress
	       MYSQL_PASSWORD: wordpress

	   wordpress:
	     depends_on:
	       - db
	     image: wordpress:latest
	     ports:
	       - "8000:80"
	     restart: always
	     environment:
	       WORDPRESS_DB_HOST: db:3306
	       WORDPRESS_DB_USER: wordpress
	       WORDPRESS_DB_PASSWORD: wordpress
	       WORDPRESS_DB_NAME: wordpress
	       
	volumes:
	    db_data: {}	
	```
	* Aprendizaje sobre Amazon AWS, principalmente sobre la creación de máquinas virtuales.
* **c) Semana 4**
	* Se desplegó Wordpress en el DCA usando Docker.
	* Se desplegó Wordpress en el DCA de forma nativa.
* **d) Semana 5**
	* Obtuvimos el dominio `protet.ml`.
	* Se desplegó Wordpress en Amazon usando Docker.
	* Se hizo la configuración del DNS para Amazon.
	* Se desplegó Wordpress nativo en Amazon.
* **e) Semana 6**
* **f) Semana 7**
* **g) Semana 8**

## 5. Dificultades

* Cuando se desplegaba Wordpress de forma nativa en el DCA, el firewall de la máquina no permitía el tráfico al puerto 80 y por ende *Apache* no estaba funcionando como se esperaba. Se utilizó el comando `sudo systemctl stop firewalld` para resolver el problema.
* Para que Wordpress nativo funcionará en el DCA tuvimos que actualizar la versión de *Php* de la `5.4.16` a la `7.3.15`.

## 6. División del Trabajo
* **a) Santiago Arredondo Quintero**
	* Despliegue Wordpress Nativo en Amazon.
* **b) Kevyn Santiago Gómez Patiño**
	* Obtención dominio y configuración DNS.
	* Despliegue Wordpress Docker en Amazon.
* **c) Camilo Gaviria Castrillón**
	* Despliegue Wordpress Docker en DCA.
	* Despliegue Wordpress Nativo en DCA.

