# listas, rigns, escalas

a = [60,62,63,65,66,68,71]
b = (ring 80,56,23)

live_loop :lista do
  stop
  play a.choose + 12
  sleep 1
end

live_loop :anillo do
  stop
  play b[3]
  sleep 0.5
end


live_loop :escala do
  stop
  play scale(63, :aeolian).tick
  sleep 0.25
end

#################################


ch = [:M ,:m]


live_loop :acorde do
  use_synth :blade
  play chord(a.choose , ch.tick), sustain: 1
  sleep 1
end







