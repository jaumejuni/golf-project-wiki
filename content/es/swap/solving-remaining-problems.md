---
weight: 25
title: "Solucionando los problemas pendientes"
description: "Diagnóstico de un fallo de K-Line compartida entre las unidades de ABS y airbag, y validación del sistema de refrigeración y los internos del motor."
---

# Solucionando los problemas pendientes

Una vez que el motor funcionaba correctamente y la calibración de la ECU estaba terminada, todavía quedaban algunos puntos que requerían algo más de atención: unos eran problemas reales, como los sistemas de ABS y airbag, y otros eran dudas sobre el propio diseño —si el sistema de refrigeración tenía capacidad suficiente para la configuración con K04, y si los componentes internos de serie del BWA ofrecían un margen de fiabilidad razonable. Después de dedicar tanto tiempo a la conversión, tenía sentido analizar estos puntos correctamente en lugar de simplemente asumir que todo estaba bien.

## Airbag y ABS

El ABS y el airbag son ambos sistemas originales del Golf Mk3, y ninguno de sus circuitos fue modificado intencionadamente como parte de la conversión del motor. Sin embargo, después de que el coche permaneciera parado durante un largo periodo durante la conversión, descubrimos que ninguno de los dos sistemas se comportaba correctamente: en particular, no era posible comunicarse con la unidad de control del airbag mediante el equipo de diagnosis.

Como durante el proyecto había sido necesario desmontar y volver a montar el salpicadero, la primera sospecha fue, lógicamente, un problema de cableado: algún conector podía haberse quedado desconectado, podía haberse perdido una masa, o algún punto del cableado original podía haberse dañado. Por este motivo, la unidad de control del airbag, 6N0 909 603, se desmontó del coche y se probó por separado en banco —y comunicaba perfectamente, confirmando que la centralita funcionaba correctamente y desplazando la investigación hacia el cableado y el sistema de diagnosis del coche.

### Una K-Line compartida

El detalle importante resultó ser que las unidades de ABS y airbag no son completamente independientes desde el punto de vista de la diagnosis: ambas se comunican a través de la misma K-Line, lo que significaba que un problema en una de ellas podía afectar potencialmente a la comunicación con la otra.

La unidad de ABS ya era sospechosa de estar averiada y anteriormente había sido desmontada y enviada a un especialista para su reparación. Volvió indicando que funcionaba correctamente, pero una vez instalada de nuevo en el coche seguíamos sin poder confirmar que realmente funcionara, y las pruebas posteriores terminaron confirmando que la unidad de ABS seguía averiada. Además descubrimos algo mucho más interesante por el camino: cuando la unidad de ABS defectuosa estaba conectada al coche, interfería con la K-Line compartida e impedía la comunicación con la unidad de airbag —por algún motivo, la electrónica defectuosa del ABS estaba perturbando la línea de diagnosis. Al desconectar el ABS, la comunicación con el airbag volvía a funcionar.

Esto explicaba finalmente una situación que al principio resultaba bastante confusa: la unidad de airbag comunicaba correctamente en banco, su cableado no había sido modificado, y aun así no se podía acceder a ella cuando todos los sistemas estaban conectados en el coche. El problema, en otras palabras, nunca estuvo realmente en el sistema de airbag: era la unidad de ABS averiada interfiriendo con la K-Line de diagnosis compartida.

### Diagnóstico final

Así que los dos problemas que en principio parecían independientes acabaron teniendo el mismo origen. La unidad de airbag funciona correctamente y no hace falta sustituirla; la de ABS, en cambio, ha sido finalmente confirmada como defectuosa, a pesar de haber vuelto de una reparación como supuestamente funcional. Por este motivo se ha pedido una unidad de ABS de recambio, y una vez instalada, los últimos pasos serán confirmar la comunicación con ambas unidades, comprobar las señales de velocidad de las ruedas y verificar mediante una prueba dinámica que el ABS funciona correctamente.

Todo el proceso también sirvió como recordatorio de algo importante al diagnosticar sistemas electrónicos antiguos: que una unidad no responda a la diagnosis no significa necesariamente que sea la causante del problema. Cuando varias unidades de control comparten la misma línea de comunicación, una avería en una de ellas puede impedir diagnosticar otra que funciona perfectamente.

## Gestión térmica

La refrigeración fue uno de los aspectos que decidimos sobredimensionar deliberadamente al diseñar la conversión. Un BWA con K04 puede generar considerablemente más calor que el motor original del Mk3, y además, montar todos los elementos detrás del paragolpes delantero significa que el flujo de aire tiene que atravesar varios intercambiadores de calor por el camino. Por este motivo, el sistema de refrigeración utiliza un radiador de aluminio Mishimoto, junto con ventiladores eléctricos de alta eficiencia y un carenado que cubre prácticamente toda la superficie del radiador. Los ventiladores están situados muy cerca del radiador, dejando solo una pequeña separación con el carenado de aluminio, lo que les permite aspirar aire a través de una proporción mucho mayor de la superficie del radiador, en lugar de solo por las zonas circulares situadas justo delante de cada ventilador. Seguimos la misma filosofía con el intercooler: en lugar de instalar el más pequeño capaz de soportar la potencia prevista, instalamos uno frontal sobredimensionado para disponer de capacidad térmica adicional.

Inicialmente, sin embargo, todo esto era solo una hipótesis de diseño: montar un radiador y un intercooler grandes no garantiza automáticamente una buena gestión térmica una vez que todo está montado en el coche. La calibración de la ECU nos dio la oportunidad de comprobarlo bien. El coche realizó más de veinte lanzadas en banco de potencia mientras se desarrollaba y ajustaba el software de la ECU, funcionando repetidamente con cargas elevadas y altas revoluciones y acumulando considerablemente más calor que en una única lanzada. El sistema de refrigeración funcionó extremadamente bien durante todo el proceso —de hecho, la persona encargada del banco comentó específicamente lo bien que el coche estaba gestionando la temperatura—, probablemente la mejor validación que podíamos obtener sin llevar el coche a circuito.

Como resultado, ya no consideramos la gestión térmica un área que necesite más modificaciones: el radiador, la configuración de los ventiladores y el intercooler sobredimensionado dan capacidad de sobra para la configuración actual. Las temperaturas se seguirán vigilando de forma natural cuando el coche vuelva a usarse regularmente, sobre todo en verano, pero actualmente no hay motivo para aumentar más la capacidad de refrigeración.

## Componentes internos del motor

La otra cuestión que surgió con la conversión a K04 fue si tenía sentido reforzar internamente el BWA. La modificación más evidente sería instalar bielas y pistones forjados, y dedicamos algún tiempo a estudiar qué haría falta: una posible configuración usaría pistones forjados Wössner para EA113, con una relación de compresión aproximada de 9,8:1 y bulones de 21 mm, combinados con bielas FCP Engineering X-beam de 144 × 21 mm, lubricación del bulón y tornillos ARP2000. El diámetro final de los pistones solo se decidiría después de medir el bloque, ya que no tendría sentido aumentar innecesariamente el diámetro si el estado de los cilindros permite mantener la medida estándar de 82,5 mm.

Pero la pregunta realmente importante no era qué componentes forjados podríamos instalar, sino si de verdad los necesitábamos ya o si podían esperar. El motor había sido mecanizado como parte de la conversión y los componentes relevantes tenían muy poco uso, y la calibración también se ha probado extensamente en el banco de potencia: más de veinte lanzadas, incluyendo repetidas pruebas a alta carga y altas revoluciones, con knock, lambda, carga, presión de sobrealimentación y temperaturas monitorizados en todo momento, sin ningún indicio de que los componentes internos de serie estuvieran sobrecargados.

La calibración final de la ECU produce aproximadamente 440 Nm de par máximo, y el resto de la transmisión se ha dimensionado deliberadamente con una capacidad muy superior:

- Par máximo del motor: ~440 Nm
- Embrague Stage 2: ~705 Nm
- Juntas homocinéticas a medida: ~700 Nm

así que el embrague dispone de aproximadamente un 60% de margen sobre el par máximo actual del motor, y las juntas homocinéticas ofrecen un margen similar. Eso responde a la pregunta a corto plazo —los componentes internos de serie están respondiendo bien a los 440 Nm actuales—, pero esto supone un salto significativo respecto a la cifra original del BWA, y mantener ese nivel de par de forma indefinida sobre pistones y bielas de serie no es algo con lo que estemos cómodos a largo plazo. Nuestra conclusión, por tanto, es que los componentes internos actuales están bien por ahora, pero instalar componentes forjados es una mejora a medio plazo que consideramos necesaria, no opcional: un paso planificado para la próxima vez que se abra el motor, no una reacción a un fallo.

## Situación actual

Estas investigaciones han sido útiles precisamente porque no todas han terminado provocando una nueva modificación. El problema del airbag resultó no estar relacionado con la propia unidad de airbag —la centralita funciona correctamente, pero la unidad de ABS defectuosa estaba interfiriendo con la K-Line compartida e impedía acceder al airbag mediante diagnosis. El ABS pudo finalmente diagnosticarse correctamente y se confirmó que la unidad estaba averiada; ya se ha pedido una de recambio, y una vez instalada, habrá que comprobar la comunicación, las señales de velocidad de las ruedas y el funcionamiento del sistema mediante una prueba dinámica. El sistema de refrigeración se sometió a repetidas pruebas de alta carga en el banco de potencia y demostró que el conjunto deliberadamente sobredimensionado de radiador, ventiladores e intercooler funciona como estaba previsto. Y después de analizar los componentes internos del motor a la luz de la carga real que le estamos pidiendo, concluimos que los componentes de serie están respondiendo bien por ahora, pero que instalar pistones y bielas forjados es una mejora a medio plazo que tenemos previsto llevar a cabo, no una opción secundaria.

Por tanto, llegados a este punto, el objetivo inmediato ya no es seguir modificando el coche, sino instalar el nuevo ABS, hacer las últimas comprobaciones y empezar a conducirlo, dejando la actualización de los internos forjados planificada como siguiente paso mecánico a medio plazo.
