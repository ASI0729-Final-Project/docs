# Capítulo I: Introducción
## 1.1. Startup Profile 
En esta sección se describen los detalles del problema que buscamos resolver. Se detalla el perfil de la startup, el mercado objetivo, y se presentan la misión y visión. Asimismo, se expone una visión atractiva del equipo, resaltando su potencial en función de las habilidades y capacidades de cada integrante. 

### 1.1.1. Descripción de la Startup 

TinkuyTech es una startup tecnológica dedicada a mejorar la seguridad de transporte de los estudiantes en Perú. Nuestra empresa ofrece un nuevo producto llamado ÑanGo, una aplicación web diseñada específicamente para los estudiantes. ÑanGo conecta a estudiantes que cuentan con movilidad propia con aquellos que buscan transporte para ir a la universidad. Los usuarios pueden coordinar rutas, compartir gastos y optimizar su tiempo de desplazamiento, contribuyendo así al bienestar y la eficiencia del viaje.

Para ello, desarrollaremos una plataforma interactiva, y así los estudiantes pueden visualizar y coordinar rutas compartidas hacia la universidad, recibir recomendaciones de rutas en tiempo real, optimizar los costos de transporte y reducir el tiempo de desplazamiento, mejorando así la eficiencia general del viaje. Esto hace que la aplicación sea aún más viable y útil para los estudiantes.

Este producto está diseñado principalmente para estudiantes, familiares del estudiante y universidades que priorizan la seguridad y buscan una alternativa de transporte más práctico para su vida diaria.

**Misión**

Nuestra misión es transformar la forma en que los estudiantes se movilizan en Perú, brindándoles una solución tecnológica que les permita acceder a un sistema de transporte compartido, seguro, accesible y solidario. Buscamos promover la seguridad estudiantil y contribuir a un futuro más seguro, conectado y sostenible.

**Visión** 

Nuestra visión es posicionarnos como una startup líder en seguridad de transporte para universidades en Perú. Aspiramos a construir y promover un entorno donde los estudiantes puedan acceder fácilmente a una movilidad segura, eficiente, confiable y colaborativa.

# Requirements Elicitation & Analysis

## Entrevistas

### Diseño de Entrevistas

#### Objetivos

Recoger informacion sobre las necesidades , expectativas y posibles preocupaciones de los estudiantes y familiares que estarian interesados de ofrecer servicios de tranporte (como un taxi compartido).

#### Preguntas

#### Estudiante con vehiculo

##### Datos basicos

- ¿Nombre,Edad y carrera?
- ¿Conduces a la universidad? ¿Con qué frecuencia?

##### Transporte compartido

- ¿Has pensado en llevar a otros estudiantes?
- ¿Te incomodaría compartir tu auto? ¿Por qué?

##### Sobre la app

- ¿Qué funciones te parecen esenciales?
- ¿Qué medidas de seguridad te darían confianza?
- ¿Aceptarías compartir tu ruta o horario?
- ¿Preferirías elegir a los pasajeros o que sea automático?
- ¿Qué tipo de pago prefieres?

##### Cierre

- ¿Probarías la app cuando este disponible?
- ¿Te gustaría participar en futuras pruebas?

#### Estudiante sin vehiculo

##### Datos básicos

- ¿Edad y carrera?
- ¿Cómo llegas a la universidad normalmente?
- ¿Cuánto te toma el trayecto?

##### Interés en el servicio

- ¿Te interesaría usar un servicio de transporte compartido con otros estudiantes?
- ¿Qué te haría sentir más seguro al usarlo?

##### Sobre la app

- ¿Qué funciones te gustaría que tenga?
- ¿Qué tipo de pago preferirías?
- ¿Preferirías elegir al conductor o que sea automático?

##### Cierre

- ¿Probarías la app cuando este disponible?
- ¿Te gustaría participar en futuras encuestas o pruebas?

#### Familiar del estudiante

##### Datos básicos

- ¿Nombre y edad?
- ¿Cuál es tu relación con el estudiante?
- ¿Tienes un vehículo que usas para llevar a tu familiar a la universidad?
- ¿Con qué frecuencia haces ese trayecto?

##### Interés en brindar el servicio

- ¿Estarías dispuesto/a a ofrecer transporte a otros estudiantes usando el carné universitario de tu familiar?
- ¿Qué te motivaría a hacerlo?

##### Sobre la app

- ¿Qué funciones te facilitarían ofrecer este servicio? (Ej. mapas, pagos, contacto directo)
- ¿Qué medidas de seguridad te darían tranquilidad al transportar a estudiantes?
- ¿Preferirías elegir a quién llevar o aceptar asignaciones automáticas?
- ¿Qué tipo de pago preferirías recibir?

##### Posibles preocupaciones

- ¿Qué inquietudes tendrías sobre participar en este sistema?
- ¿Qué se debería hacer para que el sistema sea seguro, legal y práctico?

##### Cierre

- ¿Estarías dispuesto/a a probar esta app como conductor?
- ¿Participarías en pruebas futuras para mejorar la app?

## Needfinding

### User Persons

#### Estudiante

![Estudiante](./imgs/ana-guevara-estudiante.png)

#### Estudiante conductor

![Estudiante conductor](./imgs/carlos-estudiante-conductor.png)

#### Familiar de estudiante

![Familiar de estudiante](./imgs/javier-familiar-conductor.png)

### User Task Matrix

El User Task Matrix identifica las tareas que cada arquetipo debe realizar para alcanzar sus objetivos, sin confundir actividades o funcionalidades específicas de la aplicación. Se consideran la frecuencia y la importancia de cada tarea para cada User Persona.

#### Table

<table border="1" cellspacing="0" cellpadding="5">
<thead>
<tr>
<th rowspan="2">Tarea / Actividad</th>
<th colspan="2">Estudiante-Conductor</th>
<th colspan="2">Estudiante-Pasajero</th>
<th colspan="2">Familiar-Conductor</th>
</tr>
<tr>
<th>Frec.</th>
<th>Importancia</th>
<th>Frec.</th>
<th>Importancia</th>
<th>Frec.</th>
<th>Importancia</th>
</tr>
</thead>
<tbody>
<tr>
<td>Buscar rutas disponibles</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Media</td>
<td>Media</td>
</tr>
<tr>
<td>Publicar disponibilidad de viaje</td>
<td>Alta</td>
<td>Alta</td>
<td>-</td>
<td>-</td>
<td>Alta</td>
<td>Alta</td>
</tr>
<tr>
<td>Coordinar horarios y puntos de encuentro</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
</tr>
<tr>
<td>Confirmar reserva o viaje</td>
<td>Media</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Media</td>
<td>Media</td>
</tr>
<tr>
<td>Revisar y gestionar perfiles/rese&ntilde;as</td>
<td>Media</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
<td>Alta</td>
</tr>
<tr>
<td>Compartir detalles del trayecto</td>
<td>Alta</td>
<td>Media</td>
<td>Media</td>
<td>Alta</td>
<td>Media</td>
<td>Meida</td>
</tr>
</tbody>
</table>

### 2.3.3 User Journey Mapping

El User Journey Mapping representa el “viaje” actual (As-Is) de cada User Persona sin contar con la solución propuesta, identificando puntos de dolor y momentos clave.

#### Estudiante pasajero

![Estudiante pasajero](./imgs/jm-estudiante.png)

#### Estudiante conductor

![Estudiante conductor](./imgs/jm-estudiante-conductor.png)

#### Familiar de estudiante

![Familiar de estudiante](./imgs/jm-familiar.png)

### 2.3.4. Empathy Mapping

#### Estudiante pasajero

![Estudiante pasajero](./imgs/em-estudiante.png)

#### Estudiante conductor

![Estudiante conductor](./imgs/em-estudiante-conductor.png)

#### Familiar de estudiante

![Familiar de estudiante](./imgs/em-familiar.png)

### 2.3.5. As-is Scenario Mapping

#### Estudiante pasajero

![Estudiante pasajero](./imgs/as-is-estudiante.png)

#### Estudiante conductor

![Estudiante conductor](./imgs/as-is-estudiante-conductor.png)

#### Familiar de estudiante

![Familiar de estudiante](./imgs/as-is-familiar.png)
