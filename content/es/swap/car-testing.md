---
weight: 24
title: "Prueba del coche"
description: "Cómo se comportó el swap TFSI del Golf MK3 en carretera y banco de potencia: ajuste de la ECU, calibración Stage 3 y el resultado final de 273,2 CV y 445 Nm."
images: ["/images/golf-dyno.jpeg"]
---

# Prueba del coche

## Primera prueba
<figure class="flow-figure right stack same-width"><video controls><source src="/images/car-testing-first-test-01.webm" type="video/webm"></video></figure>
El motor se puso en marcha por primera vez en junio de 2024. Después de eso, quedaba mucho trabajo en el sistema hidráulico, la dirección y los frenos. Para hacer las cosas más interesantes, el cilindro del embrague esclavo falló —a pesar de ser completamente nuevo— y la unión entre el motor y la caja de cambios tenía una fuga. Como resultado, hubo que volver a desmontar el motor y la caja de cambios y sustituir el cilindro del embrague esclavo. Mucho trabajo extra, pero aprovechamos la oportunidad para asegurarnos de que todo quedara correctamente montado y evitar más sorpresas.

Después de mucho trabajo en el sistema hidráulico, el sistema eléctrico y el problema de la caja de cambios, el coche quedó mecánicamente terminado a principios de octubre de 2024. Una vez probadas la dirección y la caja de cambios con las ruedas delanteras en el aire y comprobado que todo funcionaba, llegó el momento de la primera prueba: conducir hacia adelante y hacia atrás dentro del garaje.

Hay que tener en cuenta que el coche no ha pasado la ITV en los últimos tres años y que el motor ha sido modificado, así que por el momento no está homologado para circular y no se puede probar en la calle. Por eso tuvimos que hacer la primera prueba dentro del garaje.

Una vez que el taller termine el coche en los próximos días, la idea es llevarlo a una carretera cerrada para probarlo y ver cómo se comporta. Por ahora, solo estamos emocionados de ver el coche moverse.

## Pruebas adicionales
<!-- <figure class="flow-figure right stack same-width"><img src="/images/tunning-03.jpg"></figure> -->

Las primeras pruebas en carretera no salieron bien. El motor funcionaba de forma irregular y pronto descubrimos una desincronización entre el software de la ECU y las modificaciones del motor. Esto era de esperar, ya que habíamos introducido modificaciones personalizadas: turbocompresor K04, sensor MAP de 3 bares e inyectores S3.
<figure class="flow-figure right stack same-width"><img src="/images/tunning-02.jpg" alt="Sesión de ajuste de la ECU durante el diagnóstico del funcionamiento irregular"></figure>

Nuestra solución fue descargar una imagen flash original de BWA (compatible con nuestro hardware de ECU) y usar ecufiles.com para crear una reprogramación de Etapa 3 con el turbocompresor K04, el ajuste del sensor MAP y el ajuste de los inyectores de combustible. Pero no funcionó: el motor seguía funcionando de forma irregular.

Pasó casi un año. Durante ese tiempo, probamos varias combinaciones, pero ninguna funcionó. Entonces, por casualidad, apareció un Golf Mk5 EOS con un motor BWA —el mismo código de motor que estamos usando en nuestra adaptación—, así que decidimos probar su ECU y software.
<figure class="flow-figure right stack same-width"><video controls><source src="/images/tunning-video-01.webm" type="video/webm"></video></figure>

Funcionó. De repente, el motor funcionaba bien. Todavía necesitaba ajustes, pero al menos funcionaba correctamente. Por fin teníamos una base sólida sobre la que trabajar.

Esta vez no quisimos correr riesgos. Enviamos el coche a un preparador profesional para realizar la reprogramación Stage 3.

El proceso de ajuste requirió más de veinte pasadas por el banco de potencia, modificando y validando progresivamente la calibración de la ECU. Durante las pruebas se monitorizaron la detonación, la lambda, la presión del turbo, la carga del motor y las temperaturas, no solo para comprobar que el motor entregaba la potencia esperada, sino también que lo hacía de forma segura y consistente.

La siguiente gráfica muestra la última pasada por el banco.

<figure class="flow-figure full-width"><img src="/images/golf-dyno.jpeg" alt="Gráfica del banco de potencia de la pasada final: 273,2 CV y 445 Nm"></figure>

El resultado final fue de **273,2 CV y 445 Nm**.

El objetivo no era extraer la máxima potencia posible del K04. Este es un coche de calle construido sobre la base de un Golf Mk3 de 1996, por lo que optamos deliberadamente por una calibración conservadora, priorizando la fiabilidad, una entrega de potencia predecible y la estabilidad térmica frente a conseguir la cifra más alta posible en el banco.

La forma de las curvas es probablemente más importante que las cifras máximas. El par aumenta rápidamente y se mantiene elevado durante la zona útil de revoluciones, mientras que la potencia continúa aumentando progresivamente hacia la parte alta del cuentavueltas. Para un coche de calle, el resultado es mucho más útil que limitarse a perseguir una cifra de potencia máxima más elevada.

Las sesiones en el banco también sirvieron, de forma inesperada, para poner a prueba el resto de la conversión. Después de más de veinte pasadas a plena carga, el sistema de refrigeración se mantuvo completamente estable, lo que nos dio mucha más confianza en el conjunto sobredimensionado de radiador, intercooler y ventiladores.
