---
weight: 25
title: "Solucionando los problemas pendientes"
---

# Solucionando los problemas pendientes

Una vez que el motor funcionaba correctamente y la calibración de la ECU estaba terminada, todavía quedaban algunos puntos que requerían algo más de atención.

Algunos eran problemas reales, como los sistemas ABS y airbag. Otros eran dudas sobre el propio diseño: si el sistema de refrigeración tenía capacidad suficiente para la configuración con K04 y si los componentes internos de serie del BWA ofrecían un margen de fiabilidad razonable.

Después de dedicar tanto tiempo a la conversión, tenía sentido analizar estos puntos correctamente en lugar de simplemente asumir que todo estaba bien.

## Airbag y ABS

El ABS y el airbag son ambos **sistemas originales del Golf Mk3**, y ninguno de sus circuitos fue modificado intencionadamente como parte de la conversión del motor.

Sin embargo, después de que el coche permaneciera parado durante un largo periodo durante la conversión, descubrimos que ninguno de los dos sistemas se comportaba correctamente. En particular, no era posible comunicarse con la unidad de control del airbag utilizando el equipo de diagnosis.

Como durante el proyecto había sido necesario desmontar y volver a montar el salpicadero, la primera sospecha fue, lógicamente, un problema de cableado. Algún conector podía haberse quedado desconectado, podía haberse perdido una masa o algún punto del cableado original podía haberse dañado.

Por este motivo, la unidad de control del airbag, **6N0 909 603**, se desmontó del coche y se probó por separado en banco.

La unidad comunicaba perfectamente.

Esto confirmaba que la centralita del airbag funcionaba correctamente y desplazaba la investigación hacia el cableado y el sistema de diagnosis del coche.

### Una K-Line compartida

El detalle importante resultó ser que las unidades de ABS y airbag no son completamente independientes desde el punto de vista de la diagnosis.

Ambas se comunican a través de la **misma K-Line**.

Esto significaba que un problema en una de las unidades podía potencialmente afectar a la comunicación con la otra.

La unidad de ABS ya era sospechosa de estar averiada y anteriormente había sido desmontada y enviada a un especialista para su reparación. Posteriormente fue devuelta indicando que funcionaba correctamente, pero una vez instalada de nuevo en el coche seguíamos sin poder confirmar que realmente estuviera funcionando.

Las pruebas posteriores terminaron confirmando que **la unidad de ABS seguía estando averiada**.

Pero además descubrimos algo mucho más interesante: cuando la unidad de ABS defectuosa estaba conectada al coche, interfería con la K-Line compartida e impedía la comunicación con la unidad de airbag.

Por algún motivo, la electrónica defectuosa del ABS estaba perturbando la línea de diagnosis.

Al desconectar el ABS, la comunicación con la unidad de airbag volvía a ser posible.

Esto explicaba finalmente una situación que inicialmente resultaba bastante confusa:

- la unidad de airbag comunicaba correctamente en banco;

- el cableado del airbag no había sido modificado;

- pero no era posible acceder al airbag cuando todos los sistemas estaban conectados en el coche.

El problema, por tanto, **no estaba realmente en el sistema de airbag**.

Era la **unidad de ABS averiada interfiriendo con la K-Line de diagnosis compartida**.

### Diagnóstico final

Los dos problemas que inicialmente parecían independientes acabaron teniendo, por tanto, el mismo origen.

La unidad de airbag funciona correctamente y no es necesario sustituirla.

La unidad de ABS, por el contrario, ha sido finalmente confirmada como defectuosa, a pesar de haber sido devuelta anteriormente de una reparación como supuestamente funcional.

Por este motivo se ha pedido una unidad de ABS de recambio.

Una vez instalada, los últimos pasos serán confirmar la comunicación con ambas unidades, comprobar las señales de velocidad de las ruedas y verificar mediante una prueba dinámica que el ABS funciona correctamente.

Todo este proceso también ha servido como recordatorio de algo importante al diagnosticar sistemas electrónicos antiguos: **que una unidad no responda a la diagnosis no significa necesariamente que esa unidad sea la que está provocando el problema**.

Cuando varias unidades de control comparten la misma línea de comunicación, una avería en una de ellas puede impedir diagnosticar otra unidad que funciona perfectamente.

## Gestión térmica

La refrigeración fue uno de los aspectos que decidimos sobredimensionar deliberadamente al diseñar la conversión.

Un BWA con K04 puede generar considerablemente más calor que el motor original del Mk3 y, además, instalar todos los elementos detrás del paragolpes delantero significa que el flujo de aire tiene que atravesar varios intercambiadores de calor.

Por este motivo, el sistema de refrigeración utiliza un **radiador de aluminio Mishimoto**, junto con ventiladores eléctricos de alta eficiencia y un carenado que cubre prácticamente toda la superficie del radiador.

Los ventiladores están situados muy cerca del radiador, dejando únicamente una pequeña separación entre este y el carenado de aluminio. Esto permite que los ventiladores aspiren aire a través de una proporción mucho mayor de la superficie del radiador, en lugar de hacerlo únicamente a través de las zonas circulares situadas directamente delante de cada ventilador.

Con el intercooler seguimos la misma filosofía. En lugar de instalar el intercooler más pequeño capaz de soportar la potencia prevista, instalamos un **intercooler frontal sobredimensionado** para disponer de capacidad térmica adicional.

Inicialmente, sin embargo, todo esto seguía siendo únicamente una hipótesis de diseño. Instalar un radiador y un intercooler grandes no garantiza automáticamente una buena gestión térmica una vez que todos los componentes están montados en el coche.

La calibración de la ECU nos dio la oportunidad de comprobarlo adecuadamente.

El coche realizó **más de veinte lanzadas en banco de potencia** mientras se desarrollaba y ajustaba el software de la ECU. Durante este proceso, el motor funcionó repetidamente con cargas elevadas y a altas revoluciones, acumulando considerablemente más calor que durante una única lanzada.

El sistema de refrigeración funcionó extremadamente bien durante todo el proceso. De hecho, la persona encargada del banco comentó específicamente lo bien que el coche estaba gestionando la temperatura.

Probablemente fue la mejor validación que podíamos obtener sin llevar el coche a circuito.

Como resultado, actualmente ya no consideramos la gestión térmica como un área que necesite más modificaciones. El radiador, la configuración de los ventiladores y el intercooler sobredimensionado proporcionan capacidad suficiente para la configuración actual.

Naturalmente, seguiremos controlando las temperaturas cuando el coche vuelva a utilizarse regularmente, especialmente durante el verano, pero actualmente no existe ningún motivo para aumentar todavía más la capacidad de refrigeración.

## Componentes internos del motor

La otra cuestión que surgió con la conversión a K04 fue si tenía sentido reforzar internamente el BWA.

La modificación más evidente sería instalar bielas y pistones forjados, y dedicamos algún tiempo a estudiar qué sería necesario si finalmente decidiéramos hacerlo.

Una posible configuración utilizaría **pistones forjados Wössner para EA113**, con una relación de compresión aproximada de 9.8:1 y bulones de 21 mm, combinados con **bielas FCP Engineering X-beam de 144 × 21 mm**, lubricación del bulón y tornillos ARP2000.

Si algún día optamos por esta solución, el diámetro final de los pistones únicamente se decidiría después de medir el bloque. No tendría sentido aumentar innecesariamente el diámetro si el estado de los cilindros permite mantener la medida estándar de 82.5 mm.

Sin embargo, la pregunta realmente importante no era *qué componentes forjados podríamos instalar*.

Era:

> **¿Realmente los necesitamos?**

El motor fue mecanizado como parte de la conversión y los componentes relevantes tenían muy poco uso. Más importante todavía, el K04 no está calibrado cerca del máximo par que puede llegar a producir una configuración de este tipo.

La calibración final de la ECU produce aproximadamente **325 Nm de par máximo**.

El resto de la transmisión se ha dimensionado deliberadamente con una capacidad considerablemente superior:

- **Par máximo del motor:** ~325 Nm

- **Embrague Stage 2:** ~415 Nm

- **Juntas homocinéticas a medida:** ~700 Nm

El embrague dispone, por tanto, de aproximadamente un **28% de margen** sobre el par máximo actual del motor, mientras que las juntas homocinéticas tienen un margen todavía mucho mayor.

Esto significa que la configuración actual no pretende extraer el máximo rendimiento posible del K04. El objetivo es disponer de un coche rápido para carretera, con buena fiabilidad y márgenes mecánicos cómodos.

La propia calibración también se ha probado extensamente en el banco de potencia. Durante el desarrollo del software se monitorizaron parámetros como el **knock, lambda, carga, presión de sobrealimentación y temperaturas**, incluyendo las repetidas pruebas a alta carga descritas anteriormente.

Por este motivo llegamos a la conclusión de que **abrir un motor recién montado, mecanizado y que funciona correctamente únicamente para instalar componentes internos forjados no tiene sentido actualmente**.

Esto no significa que hayamos descartado definitivamente los componentes forjados.

Si en el futuro fuera necesario abrir el motor, o si decidiéramos aumentar sustancialmente el par, instalar pistones y bielas forjados sería una evolución lógica en ese momento.

Sin embargo, con la calibración actual de **325 Nm**, se mantienen los componentes internos originales del BWA.

## Situación actual

Estas investigaciones han sido útiles precisamente porque no todas han terminado provocando una nueva modificación.

El problema del airbag resultó no estar relacionado con la propia unidad de airbag. La centralita funciona correctamente, pero la unidad de ABS defectuosa estaba interfiriendo con la **K-Line compartida** e impedía acceder al airbag mediante diagnosis.

El ABS pudo finalmente diagnosticarse correctamente y se confirmó que la propia unidad estaba averiada. Ya se ha pedido una unidad de recambio y, una vez instalada, será necesario comprobar la comunicación, las señales de velocidad de las ruedas y el funcionamiento del sistema mediante una prueba dinámica.

El sistema de refrigeración fue sometido a repetidas pruebas de alta carga en el banco de potencia y demostró que el conjunto deliberadamente sobredimensionado de radiador, ventiladores e intercooler funciona como estaba previsto.

Y después de analizar los componentes internos del motor teniendo en cuenta **la carga real que estamos solicitando al motor**, en lugar de limitarnos a considerar lo que un K04 podría llegar a producir, decidimos que actualmente no existe ninguna justificación técnica para abrir el motor y sustituir componentes que funcionan correctamente.

Por tanto, llegados a este punto, el objetivo ya no es seguir modificando el coche.

Es **instalar el nuevo ABS, realizar las últimas comprobaciones y empezar a conducirlo**.