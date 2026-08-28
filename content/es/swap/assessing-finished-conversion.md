---
weight: 27
title: "Evaluación de la conversión"
description: "Revisión completa del swap TFSI terminado en el Golf MK3: márgenes del motor, transmisión, refrigeración, frenos, suspensión, pesos y diseño eléctrico."
---

# Evaluación de la conversión

Después de varios años trabajando en la conversión, y con el coche ya muy cerca de estar terminado, parecía un buen momento para dar un paso atrás y analizar el proyecto en su conjunto. El objetivo nunca fue simplemente determinar si el motor BWA cabe en un Golf Mk3 o si el coche tiene suficiente potencia —esas preguntas quedaron respondidas hace tiempo—. La cuestión más interesante es si todos los sistemas han terminado formando un coche razonablemente equilibrado y fiable, así que la evaluación analiza la conversión como un conjunto completo: motor y calibración, caja de cambios y transmisión, refrigeración, frenos, suspensión, distribución de pesos e integración eléctrica.

<figure class="flow-figure full-width"><video controls><source src="/images/golf-final.mp4" type="video/mp4"></video></figure>

## Motor y conversión a K04

El punto de partida es el 2.0 TFSI BWA del Golf Mk5 GTI. En lugar de mantener la configuración original con K03, el motor se modificó para utilizar un turbo K04, junto con los componentes necesarios para soportar la nueva configuración:

- turbo K04
- inyectores 06F 906 036 F
- sensor MAP de 3 bares 038 906 051 C
- calibración modificada de la ECU
- eliminación del motor y sensor de posición de las mariposas de admisión

El punto importante, sin embargo, es que el objetivo nunca fue extraer el máximo rendimiento posible del K04. La calibración final produce aproximadamente 440 Nm de par máximo, dejando un margen considerable respecto a lo que podría producir una configuración K04 más agresiva —una decisión deliberada, ya que para un coche de carretera basado en un chasis de 1996, la fiabilidad, una entrega de potencia predecible y la estabilidad térmica importan más que la cifra más alta posible en el banco. La calibración se desarrolló y probó extensamente en banco, con más de veinte lanzadas durante el proceso, monitorizando el knock, la lambda, el comportamiento de presión de sobrealimentación/carga y las temperaturas mientras el motor era sometido repetidamente a condiciones de alta carga y altas revoluciones —así que la configuración del motor no es simplemente correcta en teoría, ya ha pasado por una cantidad considerable de pruebas controladas a alta carga.

## Componentes internos del motor

La instalación del K04 planteó de forma natural la cuestión de si también debían sustituirse los componentes internos originales del BWA. Estudiamos una posible configuración forjada con pistones Wössner para EA113 y bielas FCP Engineering X-beam, y llegamos a la conclusión de que los componentes forjados son la evolución correcta para este motor —solo que no de forma inmediata—. El motor ya había sido mecanizado durante la conversión, los componentes relevantes tenían muy poco uso, y la calibración actual ya ha sido validada con más de veinte lanzadas en banco, incluyendo repetidas pruebas a alta carga y altas revoluciones, sin ningún indicio de knock ni de problemas de alimentación o térmicos.

Con aproximadamente 440 Nm, los componentes internos de serie están respondiendo bien por ahora, pero esto supone un salto significativo respecto a la cifra original del BWA, y para una configuración que va a mantener este nivel de par a largo plazo, instalar pistones y bielas forjados es una mejora de fiabilidad que consideramos necesaria, no opcional. Abrir un motor recién montado y que funciona correctamente antes de que realmente lo necesite, sin embargo, no nos pareció justificado, así que el plan es seguir utilizando los componentes internos actuales a corto plazo e instalar los pistones y bielas forjados como una mejora programada a medio plazo: un paso de fiabilidad planificado, no una reacción a un fallo.

## Caja de cambios y transmisión

No se mantuvo la caja de cambios original del Mk3. El BWA está acoplado a una caja manual 02Q de seis velocidades, que ofrece una transmisión mucho más adecuada para las características del nuevo motor, y el motor y la caja de cambios se instalaron utilizando un kit de conversión de Fabless Manufacturing, que coloca el conjunto motopropulsor en la posición prevista en lugar de recurrir a soportes de motor improvisados. Las holguras se han comprobado y probado con la instalación completa.

El embrague también se sustituyó por una unidad Stage 2 con una capacidad aproximada de 705 Nm que, con el motor produciendo actualmente unos 440 Nm, da aproximadamente un 60% de margen nominal de par. Las juntas homocinéticas se fabricaron a medida para la conversión y tienen una capacidad aproximada de 700 Nm, con un margen similar. La relación resultante es, por tanto:

- Motor: ~440 Nm
- Embrague: ~705 Nm
- Juntas homocinéticas: ~700 Nm

exactamente el tipo de relación que buscábamos: en lugar de tener algún componente trabajando cerca de su límite, los elementos situados después del motor en la cadena cinemática se han elegido con márgenes de capacidad amplios sobre él.

## Gestión térmica

La gestión térmica fue deliberadamente sobredimensionada desde el principio. El sistema de refrigeración utiliza un radiador de aluminio Mishimoto, ventiladores eléctricos de alta eficiencia y un carenado de aluminio situado muy cerca del radiador que cubre prácticamente toda su superficie, y por el mismo motivo se instaló un intercooler frontal sobredimensionado. Inicialmente existía cierta preocupación por colocar el condensador, el intercooler y el radiador uno detrás de otro tras la relativamente pequeña entrada de aire frontal de un Golf Mk3, ya que unos intercambiadores de calor grandes solo son útiles si realmente puede circular suficiente aire a través de ellos —pero la extensa calibración en banco dio una excelente oportunidad para comprobarlo. Después de más de veinte lanzadas, incluyendo repetidas operaciones a alta carga y altas revoluciones, el sistema de refrigeración no mostró indicios de convertirse en un factor limitante, y la persona encargada del banco comentó específicamente lo bien que el coche estaba gestionando la temperatura. Como resultado, actualmente consideramos la gestión térmica uno de los puntos fuertes de la conversión, más que un área que necesite más trabajo.

## Frenos

Aumentar las prestaciones del motor sin mejorar la capacidad de frenado habría producido una conversión claramente desequilibrada, así que el sistema de frenos se modificó considerablemente en ambos ejes. En el eje delantero, el coche utiliza pinzas CEIKA de seis pistones junto con discos considerablemente mayores; en el trasero, las pinzas originales del Mk3 se sustituyeron por pinzas traseras del Golf Mk4 R32, también combinadas con discos de mayor tamaño.

Aumentar el tamaño y la capacidad de las pinzas también cambia las necesidades hidráulicas del sistema de frenos, por lo que la bomba de freno original de 23,9 mm se sustituyó por una unidad de 25,2 mm: un diámetro mayor reduce el recorrido de pedal necesario para desplazar un volumen determinado de líquido de frenos, dando un pedal más corto y firme con las pinzas de mayor capacidad. El objetivo, por tanto, no era simplemente instalar frenos más grandes, sino mantener un comportamiento de pedal adecuado después de hacerlo. Una vez que el ABS esté completamente operativo, la validación final será dinámica: comprobar la estabilidad en frenada, el comportamiento del pedal y la intervención del ABS con frenadas progresivamente más fuertes.

## Suspensión y barras estabilizadoras

La suspensión original también fue sustituida. El coche utiliza ahora suspensión regulable CEIKA, que permite ajustar tanto la altura como la dureza, y también se sustituyeron las barras estabilizadoras delanteras y traseras. Esta capacidad de regulación resulta especialmente útil porque la conversión inevitablemente modifica el peso y el comportamiento dinámico del coche — en lugar de conformarse con una configuración fija, el ajuste final puede hacerse con el vehículo ya terminado.

Una vez que el coche esté totalmente operativo, la intención es concentrarse en el ajuste en lugar de sustituir más componentes:

- altura
- dureza/amortiguación
- alineación
- presiones de neumáticos
- equilibrio de comportamiento entre ambos ejes

Llegados a este punto, ajustar bien lo que ya está instalado probablemente dará mucho más beneficio que añadir más hardware.

## Distribución de pesos

Una de las posibles preocupaciones al instalar un motor más moderno y una caja de seis velocidades en un Mk3 es el aumento de peso sobre el eje delantero. Según los cálculos de peso de los componentes realizados durante el proyecto, la conversión completa añade aproximadamente 74 kg respecto a la configuración original —unos +55 kg delante y +19 kg detrás—, llevando el peso estimado de unos 1.110 kg a aproximadamente 1.184 kg. Más importante todavía, la distribución de pesos calculada solo cambia de aproximadamente 62/38 a 62,7/37,3, así que el coche se vuelve ligeramente más pesado por delante, pero el cambio es relativamente pequeño.

Eso no significa que el peso adicional sea irrelevante: la caja de cambios más grande, los frenos, las ruedas y otros componentes pueden afectar al comportamiento transitorio y a las masas no suspendidas aunque la distribución estática entre ejes apenas cambie. Por este motivo, una vez terminado el coche sería interesante medir el peso real en las cuatro ruedas —una medición correcta de los pesos por rueda daría el peso total real, la distribución delantera/trasera e izquierda/derecha, y el reparto diagonal, lo que también sería útil para el ajuste final de la suspensión regulable CEIKA.

## Arquitectura eléctrica

Uno de los principios básicos de la conversión fue evitar combinar innecesariamente las arquitecturas eléctricas completas del Mk5 y del Mk3. El motor BWA mantiene, por tanto, su propio sistema de gestión y un cableado de motor adaptado, mientras que el cableado original del Mk3 se conservó siempre que fue posible, y solo se adaptan las señales que necesitan pasar entre ambos sistemas —la velocidad del vehículo y las revoluciones del motor, por ejemplo, se gestionan mediante conversores específicos. Los sistemas originales del Mk3, incluyendo ABS y airbag, se mantuvieron intactos, y este planteamiento reduce considerablemente las dependencias entre el motor BWA controlado por MED9 y la electrónica de carrocería del Mk3, mucho más antigua.

El reciente diagnóstico del ABS y el airbag fue un buen ejemplo de por qué es importante entender estas separaciones: el aparente problema del airbag terminó estando provocado por la unidad de ABS defectuosa, que interfería con la K-Line compartida por ambas unidades, mientras que la centralita del airbag funcionaba perfectamente. El problema, por tanto, estaba dentro de los sistemas originales del Mk3, no era una consecuencia de la arquitectura electrónica del BWA.

## Evaluación global

Analizando la conversión como un sistema completo, probablemente el aspecto más positivo es que ninguna de las modificaciones principales existe de forma aislada: el aumento de prestaciones del motor vino acompañado de cambios en la caja de cambios, el embrague y la transmisión; la mayor carga térmica se abordó con una mejora sustancial de los sistemas de refrigeración e intercooling; y el aumento de prestaciones se acompañó de frenos de mayor capacidad, una bomba de freno de mayor diámetro, suspensión regulable y barras estabilizadoras mejoradas. Y en lugar de intentar que un Golf de 1996 se comportara eléctricamente como un Mk5, los sistemas eléctricos del motor y de la carrocería se mantuvieron tan independientes como fue razonablemente posible.

Además, existen márgenes de diseño deliberados en distintas partes del coche: el motor produce aproximadamente 440 Nm, mientras que el embrague está especificado para unos 705 Nm y las juntas homocinéticas fabricadas a medida para aproximadamente 700 Nm; el sistema de refrigeración ha demostrado una capacidad térmica considerable durante las repetidas pruebas en banco; y los frenos y la suspensión tienen una capacidad muy superior a la de los componentes originales del Mk3.

Esto no significa que el coche esté completamente terminado. Todavía hace falta instalar y probar el ABS de recambio, evaluar dinámicamente la suspensión, la alineación y el comportamiento de los frenos una vez que el coche vuelva a circular, y sería útil obtener los pesos reales de las cuatro ruedas en lugar de seguir basándonos solo en valores calculados. La mayoría de estas son tareas de puesta a punto y validación, no cambios fundamentales en el diseño —la excepción son los componentes internos del motor: los pistones y bielas de serie del BWA están respondiendo bien a los 440 Nm actuales, pero instalar componentes forjados es una mejora programada a medio plazo, no opcional, dado el par que el motor va a mantener a largo plazo.

Quizás la conclusión más importante de esta evaluación, entonces, es que, al margen de esa mejora de los internos ya prevista, actualmente hay muy pocos motivos para seguir añadiendo modificaciones. Los componentes ya están instalados —la siguiente fase consiste en terminar los últimos detalles, poner el coche a punto correctamente y empezar a utilizarlo, con la actualización de los internos forjados prevista como siguiente paso mecánico a medio plazo.
