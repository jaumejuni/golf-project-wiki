---
weight: 22
title: "Arrancando el motor"
description: "Reprogramar la ECU BWA, desactivar el inmovilizador, arreglar el arnés de cableado y una válvula doblada, y adaptar el cuadro de instrumentos original del Golf MK3."
images: ["/images/intro-engine-wiring.jpg"]
---

# Arrancando el motor

## ECU

La ECU utilizada es la del Golf MK5 GTI (BWA): 1K0 907 115 Q. Obviamente reemplaza a la ECU original del Golf MK3, que deja de utilizarse, pero eso introduce varios problemas:

1. **qué hacer con todos los DTC provocados por sensores/actuadores que ya no existen**. Cada DTC tuvo que investigarse para determinar si era genuino o si podía borrarse porque el sensor o actuador ya no existía. Los DTC genuinos se investigaron a fondo hasta resolverlos, mientras que los relacionados con sensores/actuadores inexistentes se borraron directamente.
2. **cómo evitar el inmovilizador, para que el motor pueda arrancar**. Aquí la respuesta es sencilla: hubo que desactivar el inmovilizador modificando la EEPROM, usando un programa especial para desactivar el inmovilizador en las ECU MED9.1.

Como la ECU utilizada procedía de un desguace, se compró una copia nueva y limpia de la memoria flash, ya que no había forma de saber si el propietario anterior la había modificado.

Con esto, todas las piezas quedaron en su sitio: una ECU, un archivo EEPROM leído de la ECU y modificado para desactivar el inmovilizador, y un archivo flash en un estado conocido que se podía modificar según fuera necesario, por ejemplo, para eliminar DTC. Leer y escribir tanto la EEPROM como la memoria flash requería obviamente un software específico, así que se utilizó Trasdata de DimSport, con la ventaja añadida de que todos los checksums se calcularon correctamente.

## Exprimiendo el motor

Como parte del swap se actualizaron algunos componentes: en resumen, los inyectores de combustible, el sensor de presión de combustible, el sensor MAP y la válvula de limitación de presión de combustible. La siguiente tabla muestra los números de referencia para los distintos códigos de motor.

| Descripción                                     | BWA (200 hp)  | BYD (230 hp)  |
|-------------------------------------------------|---------------|---------------|
| Inyector de combustible                         | 06F 906 036 A | 06F 906 036 F |
| Turbocompresor                                  | 06F 145 701 H | 06F 145 702 C |
| Sensor de presión de combustible                | 06H 906 051 A | 06J 906 051 B |
| Sensor MAP                                      | 038 906 051 D | 038 906 051 C |
| Válvula de limitación de presión de combustible | 06D 130 757 C | 06D 130 757 C |
| Bomba de combustible                            | 06F 127 025 K | 06F 127 025 K |

<figure><video controls><source src="/images/start-engine-01.webm" type="video/webm"></video></figure>

El código de motor original es un motor BWA; actualizar los componentes de la tabla anterior a las referencias de la columna BYD acerca el hardware al de un motor BYD, pero no lo convierte en uno. Dado que los BWA y BYD utilizan ECUs diferentes, sustituir simplemente la ECU del BWA por una del BYD no es una opción. Sin embargo, los archivos EEPROM y flash del BYD sí se pueden cargar en la ECU del BWA. Esto tampoco resuelve el problema: el BYD utiliza un árbol de levas diferente y sus mapas de distribución están calibrados en consecuencia. Utilizar el software del BYD con el árbol de levas del BWA daría como resultado una distribución incorrecta. Por tanto, la ECU debe mantenerse configurada como una BWA y recalibrar los mapas correspondientes para adaptarlos al hardware actualizado (turbo, inyectores y sensor MAP). Más detalles en el siguiente [enlace](https://www.vwvortex.com/threads/software-advise-needed-for-bwa-engine-with-k04-turbo-s3-injectors.7912113).

## Arranque del motor

Después de varios años trabajando en este swap de motor, todas las piezas necesarias —incluido el arnés de cableado— estaban por fin listas para arrancar el motor. Lo intentamos, sin suerte: ¿qué fallaba o qué faltaba? Se utilizó una herramienta de diagnóstico VAGCOM para intentar localizar el error, pero el resultado no fue concluyente.

<figure class="clear-flow"><img src="/images/intro-engine-wiring.jpg" class="thumb-img" alt="Arnés de cableado del motor BWA del Golf MK5 GTI revisado antes del arranque"><figcaption>Cableado del motor.</figcaption></figure>

Decidimos quitar el arnés del motor y revisarlo a fondo. Para que quede claro, el arnés se había comprado en [S&P Automotive](https://s-pautomotive.com/): en principio, un arnés de motor de Golf MK5 GTI (BWA) adaptado para usarse en un Golf MK3, con el cableado de los sensores y pasarelas que no existen en el Golf MK3 ya eliminado. Revisarlo bien significó conseguir los diagramas eléctricos completos del Golf MK3 y del Golf MK5, para determinar exactamente qué cambios se habían introducido respecto al arnés original. Después de varios días de pruebas y de leer los diagramas, pudimos confirmar que los cambios realizados por [S&P Automotive](https://s-pautomotive.com/) eran correctos, con dos salvedades:

1. Un pin del conector del cigüeñal estaba roto, así que hubo que sustituir todo el conector.
2. Se había eliminado el cableado del V50 (bomba de circulación del refrigerante), así que lo reintrodujimos para volver a soportar la bomba.

<figure class="clear-flow"><img src="/images/intro-engine-rebuild.jpg" class="thumb-img" alt="Motor BWA durante la reconstrucción tras resolver el problema de la culata"><figcaption>Cableado del motor.</figcaption></figure>

Y ahora la pregunta clave: ¿funcionó, arrancó el motor? No. Investigando más a fondo, pudimos determinar que el motor no estaba correctamente montado —las válvulas de un cilindro estaban dobladas y la compresión no era la correcta—, lo bastante como para impedir que arrancara. Lamentablemente, la culata tuvo que desmontarse y enviarse a rectificar. Tras varios días de espera volvió, se montó de nuevo —esta vez correctamente— y el motor arrancó.

La lección aquí: cuando empieces una tarea, termínala y no dejes que pase el tiempo, o corres el riesgo de olvidar detalles y causar problemas serios.

<div class="clear-flow"></div>

## Cuadro de instrumentos

<figure><video controls><source src="/images/start-engine-02.webm" type="video/webm"></video></figure>

Se conserva el cuadro de instrumentos original, por lo que algunas señales provenientes del motor deben adaptarse al cuadro existente, ya que no fueron diseñadas para ser compatibles. Esas señales son:

1. Velocidad del motor o RPM. Esta señal la proporciona la nueva ECU a través del bus CAN, por lo que se debe utilizar un adaptador. En ese caso se utilizó una solución de [Van der Veer Engineering](https://www.vdveer-engineering.nl/en/products/can-controller/can-controller-overview).
2. VSS o velocímetro. En el Golf MK3, la señal VSS proviene de la caja de cambios y en el Golf MK5 del ABS, por lo que las señales son diferentes. Para poder adaptar la señal, se utilizó un producto de [MapDCCD](https://mapdccd.com/vss.html).
3. Temperatura del aceite. Los sensores de temperatura del aceite del Golf MK3 y MK5 son completamente diferentes, por lo que la única forma de que esa señal esté disponible en el panel de instrumentos del Golf MK3 es usar el sensor de temperatura del aceite del Golf MK3. Después de algunas investigaciones, se encontró un adaptador que permite conectar el sensor del Golf MK3 al final de la carcasa del filtro de aceite del Golf MK5. Para obtener más detalles, consulte la solución proporcionada por [Bar Tek](https://www.bar-tek.com/temperature-gauge-adapter-2-0l-2-5l-tfsi) para ese propósito.

El resto del panel de instrumentos funciona correctamente.
