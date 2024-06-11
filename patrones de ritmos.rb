

#RITMOS DE SONIC PI / EXPLICADO POR ANDY

ritm = ring(1,0,0,1,1,1,0,1)

define :kako do | ritm |
  if ritm > 0
    sample :bd_ada , amp: ritm
  end
  if ritm == 0
    use_synth  :bass_foundation
  end
  sleep 0.25
end

live_loop :sarasa do
  stop
  kako ritm.tick
end

#otra forma de patrones de ritmos

live_loop :ritmo do
  
  if "x--x-x--xx-".ring.tick == 'x' then
    sample 55
  end
  sleep 0.25
end

# detalle para entender y recordar
#   if             -> si, condicional, "para que pase o no pase algo"
#   "x-x--x-x-xx-" -> string, la secuencia "DONDE pasa o no pasa algo"
#   .ring.tick     -> para que cada caracter del string se evalue secuencialmente y ciclicamente
#   ==             -> comparacion entre caracter del string y el valor esperado
#   "x"            -> valor esperado
#   then           -> abre el bloque de codigo que se ejecuta si el caracter del string es igual al valor esperado.
#      codigo
#   end















