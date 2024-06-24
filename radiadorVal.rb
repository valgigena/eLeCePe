


live_loop :radiador1 do
  stop
  with_fx :echo do
    with_fx :ping_pong do
      if "x-x--x---x-x-x---x-x-xxxxxx-x-xxx-x-xx-x".ring.tick == "x" then
        sample :drum_cymbal_closed, rate: [-0.05,-0.3,-0.15].choose
        midi_cc 2, 127
        
      end
      
      sleep 0.5
      midi_cc 2,127/2
    end
  end
end

live_loop :pianito do
  stop
  use_synth :piano
  play [:c,:eb,:g]
  sleep 1+ rrand_i(1,2)
  midi_cc 1, 127
  play [:g,:bb,:d]
  sleep 1+ rrand_i(1,2)
  midi_cc 1,127/2
  
end

live_loop :pianit2o do
  with_fx :echo do
    stop
    use_synth :piano
    play scale(:c, :minor).choose,amp: 0.5
    sleep rrand(1,2)
  end
  
end

live_loop :Ra do
  with_fx :echo do
    sample rrand_i(30,35), amp: 0.25
    sleep 2
  end
end