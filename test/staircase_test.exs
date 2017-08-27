defmodule StaircaseTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Staircase

  test "if staircases have the right size" do
    assert capture_io(fn -> Staircase.main(1) end) == "#\n"

    assert capture_io(fn -> Staircase.main(2) end) ==
" #
##\n"

    assert capture_io(fn -> Staircase.main(3) end) ==
"  #
 ##
###\n"

    assert capture_io( fn -> Staircase.main(7) end) ==
"      #
     ##
    ###
   ####
  #####
 ######
#######\n"
  end
end
