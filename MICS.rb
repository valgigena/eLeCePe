#############00000000000000----------mics-------00000000000#########

use_real_time

live_loop :audioLoop do

    use_synth :sound_in
    play 50, sustain: 1
    sleep 1

  end
