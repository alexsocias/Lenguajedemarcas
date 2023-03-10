for $servicio in doc("salud.xml")/salud/servicio
let $nombre := $servicio/nombre
let $dias := $servicio/dias/tokenize(.,',')
let $horarios := $servicio/horario/tokenize(.,',')
let $empleados := $servicio/empleado/tokenize(.,',')
for $empleado in $empleados
for $i in (1 to count($dias))
let $dia := $dias[$i]
let $horario := $horarios[$i]
order by $nombre, $dia, $horario
return concat($empleado, " - ", data($nombre), " - ", $dia, " - ", $horario)
(:No funciona bien, no recorre lo esperado pero no hay manera:)