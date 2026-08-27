---
weight: 24
title: "Prueba del coche"
---

# Prueba del coche

# Primera prueba
<figure class="flow-figure right stack same-width"><video controls><source src="/images/car-testing-first-test-01.webm" type="video/webm"></video></figure>
El motor se puso en marcha por primera vez en junio de 2024. Después de eso, hubo que realizar un montón de trabajo en el sistema hidráulico, la dirección y los frenos. Además, y para hacer las cosas más interesantes, falló el cilindro del embrague esclavo (¡era completamente nuevo!) y la unión entre el motor y la caja de cambios tenía una fuga. Como resultado, hubo que parar el motor y la caja de cambios y reemplazar el cilindro del embrague esclavo por uno nuevo. Mucho trabajo, pero aprovechamos la oportunidad para asegurarnos de que todo estuviera correctamente montado para evitar más sorpresas.

Después de mucho trabajo en el sistema hidráulico, el sistema eléctrico y el problema con la caja de cambios, el coche desde el punto de vista mecánico estuvo terminado a principios de octubre de 2024. Después de probar la dirección y la caja de cambios con las ruedas delanteras en el aire y comprobar que todo funcionaba, llegó el momento de hacer la primera prueba: conducir hacia adelante y hacia atrás en el garaje.

Hay que tener en cuenta que el coche no ha pasado la ITV en los últimos 3 años y que el motor ha sido modificado, por lo que el coche por el momento no está homologado para circular por carretera, por lo que no se puede probar en la calle por el momento. Por ello, hemos tenido que hacer la primera prueba en el garaje.


La idea, una vez que el taller termine el coche en los próximos días, es llevarlo a una carretera cerrada para probarlo y ver cómo se comporta. Por el momento, estamos muy emocionados por ver cómo se mueve el coche.


# Pruebas adicionales
<!-- <figure class="flow-figure right stack same-width"><img src="/images/tunning-03.jpg"></figure> -->

Las primeras pruebas en carretera no salieron bien. El motor funcionaba de forma irregular y pronto descubrimos una desincronización entre el software de la ECU y las modificaciones del motor. Esto era de esperar, ya que habíamos introducido modificaciones personalizadas: turbocompresor K04, sensor MAP de 3 bares e inyectores S3.
<figure class="flow-figure right stack same-width"><img src="/images/tunning-02.jpg"></figure>

Nuestra solución fue descargar una imagen flash original de BWA (compatible con nuestro hardware de ECU) y usar ecufiles.com para crear una reprogramación de Etapa 3 con el turbocompresor K04, el ajuste del sensor MAP y el ajuste de los inyectores de combustible. Pero no funcionó: el motor seguía funcionando de forma irregular.

Pasó casi un año. Durante ese tiempo, probamos varias combinaciones, pero ninguna funcionó. Entonces, por casualidad, apareció un Golf Mk5 EOS con un motor BWA —el mismo código de motor que estamos usando en nuestra adaptación—, así que decidimos probar su ECU y software.
<figure class="flow-figure right stack same-width"><video controls><source src="/images/tunning-video-01.webm" type="video/webm"></video></figure>

Funcionó. De repente, el motor funcionaba bien. Todavía necesitaba ajustes, pero al menos funcionaba correctamente. Por fin teníamos una base sólida sobre la que trabajar.

Esta vez, no quisimos arriesgarnos. Llevamos el coche a un taller especializado para la reprogramación de la centralita (Stage 3).

Aquí tenéis una prueba de reprogramación en la que monitorizamos los parámetros:

Las cifras finales (para ser prudentes) fueron de 272 CV y 440 Nm
