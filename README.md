# Proyecto final - Carrera Full Stack Desafio Latam Generacion 35. 

## Link a panel de planificación: https://trello.com/b/RzCxM8IZ/proyecto-final-desafio-latam

## Link a Heroku: https://still-anchorage-72067.herokuapp.com/
Entrar con usuario: javier.arancibia.r@gmail.com / Contaseña: 123456


<details open="open">
  <summary>Contenidos</summary>
  <ol>
    <li>
      <a href="#acerca-de-CommercialCity">Acerca del proyecto</a>
      <ul>
        <li><a href="#Recursos">Recursos</a></li>
      </ul>
    </li>
    <li>
      <a href="#Modelamiento-de-base-de-datos-inicial">Modelamiento</a>
      <ul>
        <li><a href="#Modelamiento-de-base-de-datos-inicial">Modelamiento de base de datos inicial</a></li>
        <li><a href="#Modelamiento-actualizado">Modelamiento actualizado</a></li>
      </ul>
    </li>
    <li><a href="#Historias-de-Usuario">Historias de Usuario</a></li>
    <li><a href="#Interfaz-en-base-a-modulos-para-el-usuario">Interfaz en base a modulos para el usuario</a></li>
    <li><a href="#contacto">Contacto</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Acerca de CommercialCity

![panel](https://user-images.githubusercontent.com/69688629/100171455-8d4c4700-2ea5-11eb-8068-837afe94850f.jpeg)

El proyecto nace orientado a la siempre dinamica industria inmobiliaria, basándose en la interaccion entre los distintos actores del rubro, principalmente generando una plataforma digital que se basa tanto en la publicacion libre de propiedades y en la carta de presentacion de quien publica, teniendo la oportunidad de compartir las experiencias entre los usuarios en el arriendo o venta de propiedades.

Las principales fortalezas del proyecto:
* Libertad de publicacion, fortaleciendo la carta de presentacion de quien publica.
* Comunidad que se evalua mutuamente en base a sus experiencias como usuario y producto.
* Arquitectura en base a dashboards o modulos segun las necesidades dentro de la plataforma. 



### Recursos:

* [Bootstrap](https://getbootstrap.com) - Framework CSS
* [JQuery](https://jquery.com) - Libreria JS
* [Ruby on Rails](https://rubyonrails.org) - Framework FullStack 
* [Mailgun](https://www.mailgun.com) - Gestor API de correos electronicos
* [ActiveAdmin Gem](https://activeadmin.info/) - Gema Gestor de Administracion
* [Yarn](https://yarnpkg.com/) - Gestor de Dependencias
* [Ransack](https://github.com/activerecord-hackery/ransack) - Motor de busqueda
* [Chartkick](https://www.chartkick.com/) - Generador de graficos
* [Amazon AWS/S3](https://aws.amazon.com/) - Cloud Service Imagenes




### Modelamiento de base de datos inicial

Se realiza borrador de modelamiento inicial en base a entidad principal correspondiente a las propiedades (Estate), generando relaciones entre las distintas entidades externas. 

![Untitled Diagram (1)](https://user-images.githubusercontent.com/69688629/99020116-a4ea0e00-253c-11eb-9ca6-0de0f430c05c.jpg)


### Modelamiento actualizado 

Tras avance de tareas planificadas, se modifica el modelamiento inicial considerando nuevas funcionalidades en la aplicacion como posibilidad del usuario de guardar propiedades en un dashboard privado por medio de botones de interes, además de tener un panel de administracion personal de las propiedades de cada usuario. (modelado generado con gema ERD)

![modelado_final](https://user-images.githubusercontent.com/69688629/100170872-537b4080-2ea5-11eb-8e2a-f8945f293d50.jpeg)


### Primer borrador de historias de usuario para establecer las funcionalidades básicas de la aplicacion Commercial City, destinada a conformar una red social entre corredores o usuarios que tienen interes en vender su propiedad. 

## Historias de Usuario

1.- El usuario Francisco entra a la app para buscar propiedades como visita. Le interesa solo buscar propiedades por lo que tiene libre acceso al registro de propiedades por medio de filtros de busqueda: por venta o arriendo, ubicacion, tipo de propiedad y rango de valores. Esto arroja un listado de propiedades con una foto en orden descendente por fecha de creacion.

2.- Francisco al entrar a la propiedad, tiene tres recuadros informativos: bloque con antecedentes de la propiedad, carrusel de imagenes y mapa de ubicacion. Un cuarto opcional es una calculadora UF.  

3.- Daniela es una corredora y quiere publicar un local de su cliente. Necesita registrarse por medio de facebook o por su correo para poder publicar la propiedad por medio de su perfil. 

4.- Al entrar a publicacion de propiedad, Daniela debe llenar los siguientes campos: 

5.- Cada usuario puede poner me gusta en cada propiedad para dos propositos: para que el propietario pueda medir la calidad de su post y para que el interesado acumule las propiedades que le gustan en su perfil (dashboard)

6.- Cada usuario puede comentar en el show de la propiedad para interactuar con el usuario que publica y tener foro publico con todas las preguntas y respuesta (Q&A) orientados a la propiedad. 

7.- La raiz de la pagina es el siguiente carrusel con fotos profesionales de propiedades 

8.- Bajo el filtro de buscadores se encuentran cartas informativas con articulos sobre propiedades, tipo blog, con modales. 

9.- En pagina principal aparecen iconos con tipos de propiedades y contadores con la cantidad de propiedades publicadas. 


### Interfaz en base a modulos para el usuario


![favorites](https://user-images.githubusercontent.com/69688629/100171602-963d1880-2ea5-11eb-9e90-8869f676b1d8.jpeg)



## Contacto

Javier Arancibia R. - https://github.com/javierarancibia - javier.arancibia.reyes@hotmail.com

Project Link: https://github.com/javierarancibia/hito-1-proyecto-final/

