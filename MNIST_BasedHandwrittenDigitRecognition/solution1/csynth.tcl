############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project MNIST_BasedHandwrittenDigitRecognition
set_top neural_network
add_files MNIST_BasedHandwrittenDigitRecognition/mnist_image_array.h
add_files MNIST_BasedHandwrittenDigitRecognition/main.cpp
add_files -tb MNIST_BasedHandwrittenDigitRecognition/tb_main.cpp
open_solution "solution1"
set_part {xc6slx9csg324-2}
create_clock -period 10 -name default
source "./MNIST_BasedHandwrittenDigitRecognition/solution1/directives.tcl"
csynth_design
