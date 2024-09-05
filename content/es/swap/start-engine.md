---
weight: 22
title: "Arrancando el motor"
---

# Arrancando del motor

## ECU

La ECU que se utilizará es la del Golf MK5 GTI (BWA); 1K0 907 115 Q. Obviamente reemplaza la ECU original del Golf MK3, que ya no se utiliza. Sin embargo, esto presenta varios problemas:

1. **qué hacer con todos los DTC en la ECU porque faltan sensores/actuadores**. En ese caso, tuvimos que analizar todos los DTC y determinar si eran genuinos o si se podían eliminar porque el sensor/actuador ya no existía. Siempre que un DTC era genuino, tuvimos que investigar el problema hasta resolverlo. Los DTC relacionados con  un sensor/actuador inxistente, se borraron.
2. **cómo evitar el inmovilizador, para que se pueda arrancar el motor**. Aquí la respuesta es simple, tuvimos que desactivar el inmovilizador con un programa especial (eeprom) para desactivar el inmovilizador en las ECU MED9.1.

Como la ECU utilizada se obtuvo de un desguace, se compró una copia nueva y limpia de la memoria flash (no se sabe si el propietario anterior de la ECU hizo modificaciones en la memoria flash).

Y ahora ya están todas las piezas necesarias; una ECU, un archivo eeprom leído desde la ECU y modificado para desactivar el inmovilizador y una memoria flash con un estado conocido en el que se pueden modificar (eliminar los DTC). Obviamente, para eso también necesitamos un software especial para poder leer y escribir los archivos eeprom y flash desde y hacia la ECU. Para ese propósito, se utilizó el software Trasdata de DimSport, con la ventaja adicional de que todas los CRC de comprobación se calcularon correctamente.

## Exprimiendo el motor

Como parte del swap, se cambiaron algunos de los componentes originales del motor, en resumen; los inyectores de combustible, el sensor de presión de combustible, el sensor MAP y la válvula de limitación de presión de combustible. La siguiente tabla muestra los números de referencia para diferentes códigos de motor.

| Descripción                                     | BWA (200 hp)  | BYD (230 hp)  |
|-------------------------------------------------|---------------|---------------|
| Inyector de combustible                         | 06F 906 036 A | 06F 906 036 F |
| Turbocompresor                                  | 06F 145 701 H | 06F 145 702 C |
| Sensor de presión de combustible                | 06H 906 051 A | 06J 906 051 B |
| Sensor MAP                                      | 038 906 051 D | 038 906 051 C |
| Válvula de limitación de presión de combustible | 06D 130 757 C | 06D 130 757 C |
| Bomba de combustible                            | 06F 127 025 K | 06F 127 025 K |
| ECU                                             | 1K0 907 115 Q | 1K0 907 115 T |

<figure><video controls><source src="/images/start-engine-01.webm" type="video/webm"></video></figure>

El código de motor original es un motor BWA, sin embargo, si los componentes de la tabla anterior se actualizan a las referencias de la columna BYD, el motor se convierte en un motor BYD. Hay que tener en cuenta que las referencias de la ECU para BWA y BYD son diferentes, sin embargo, después de algunas investigaciones, el hardware de las ECU es exactamente el mismo y la única diferencia es el software. Entonces, la pregunta es cómo cargar en una ECU BWA el software para una ECU BYD. La respuesta es simple: obtener una EEPROM y falsh para BYD y cargarla en la ECU 1K0 907 115 Q. Más detalles en el siguiente [enlace](https://www.vwvortex.com/threads/software-advise-needed-for-bwa-engine-with-k04-turbo-s3-injectors.7912113).

## Arranque del motor

Después de varios años trabajando en este swap de motor, todas las piezas necesarias estan listas para arrancar el motor, incluido el arnés de cableado del motor. Así que lo intentamos y no tuvimos suerte. Para determinar el problema, se utilizó una herramienta de diagnóstico VAGCOM pero aún así no se consiguió una respuesta clara.

<figure><img src="/images/intro-engine-wiring.jpg" class="thumb-img"><figcaption>Cableado del motor.</figcaption></figure>

Se decidió quitar el arnés del motor y revisarlo cuidadosamente. Para mayor información, el arnés del motor se compró en [S&P Automotive](https://s-pautomotive.com/). En principio, este arnés era para un Golf MK5 GTI (BWA), pero adaptado para usarse en un Golf MK3. Esto significa que se eliminó el cableado necesario para los sensores y las puertas de enlace que no están presentes en el Golf MK3. Los diagramas eléctricos completos del Golf MK3 y Golf MK5 fueron necesarios para verificar el cableado del motor y determinar qué cambios se introdujeron en el cableado del motor Golf MK5 GTI (BWA) original. Después de varios días de pruebas y lectura de los diagramas eléctricos, pudimos certificar que, en general, los cambios en el cableado del motor Golf MK5 GTI (BWA) original realizados por [S&P Automotive](https://s-pautomotive.com/), eran correctos con 2 salvedades:

1. Se rompió un pin del conector del cigüeñal. Por lo tanto, se tuvo que cambiar todo el conector.
2. Se quitó el V50 (bomba de circulación de refrigerante). Suponemos que esto se hizo intencionalmente, sin embargo, reintrodujimos el cableado para soportar el V50.

<figure><img src="/images/intro-engine-rebuild.jpg" class="thumb-img"><figcaption>Cableado del motor.</figcaption></figure>

Y ahora la pregunta clave es, ¿funcionó y arrancó el motor?, así que la respuesta es no. Entonces, después de investigar más, se pudo determinar que el motor no estaba montado correctamente, las válvulas de un cilindro estaban dobladas y la compresión no era la correcta, por lo que esto impedia que el motor arrancara. Lamentablemente, la culata tuvo que desmontarse y enviarse a retificar. Después de varios días de espera, la culata estaba de vuelta, por lo que se volvió a ensamblar (esta vez correctamente) y esta vez sí, el motor arrancó.

La lección aprendida aquí es que siempre que comiences una tarea, termínala y no dejes pasar el tiempo, de lo contrario, puedes olvidarte fácilmente de las cosas y causar problemas graves.

## Cuadro de instrumentos

<figure><video controls><source src="/images/start-engine-02.webm" type="video/webm"></video></figure>

Se conserva el cuadro de instrumentos original, por lo que algunas señales provenientes del motor deben adaptarse al cuadro existente, ya que no fueron diseñadas para ser compatibles. Esas señales son:

1. Velocidad del motor o RPM. Esta señal la proporciona la nueva ECU a través del bus CAN, por lo que se debe utilizar un adaptador. En ese caso se utilizó una solución de [Van der Veer Engineering](https://www.vdveer-engineering.nl/en/products/can-controller/can-controller-overview).
2. VSS o velocímetro. En el Golf MK3, la señal VSS proviene de la caja de cambios y en el Golf MK5 del ABS, por lo que las señales son diferentes. Para poder adaptar la señal, se utilizó un producto de [MapDCCD](https://mapdccd.com/vss.html).
3. Temperatura del aceite. Los sensores de temperatura del aceite del Golf MK3 y MK5 son completamente diferentes, por lo que la única forma de que esa señal esté disponible en el panel de instrumentos del Golf MK3 es usar el sensor de temperatura del aceite del Golf MK3. Después de algunas investigaciones, se encontró un adaptador que permite conectar el sensor del Golf MK3 al final de la carcasa del filtro de aceite del Golf MK5. Para obtener más detalles, consulte la solución proporcionada por [Bar Tek](https://www.bar-tek.com/temperature-gauge-adapter-2-0l-2-5l-tfsi) para ese propósito.

El resto del panel de instrumentos funciona correctamente.