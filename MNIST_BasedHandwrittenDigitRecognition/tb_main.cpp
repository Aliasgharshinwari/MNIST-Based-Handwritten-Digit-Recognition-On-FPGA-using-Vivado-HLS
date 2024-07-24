#include <iostream>
#include <cmath>
#include "mnist_image_array.h"
#include "ap_fixed.h"

#define INPUT_SIZE 784  // 28 * 28
#define HIDDEN_SIZE 128
#define OUTPUT_SIZE 10

//typedef float data_t;
typedef ap_fixed<16, 8> data_t;

// Function prototypes
void neural_network(data_t input[INPUT_SIZE], data_t output[OUTPUT_SIZE]);

// Helper function to print the output array
void print_output(data_t output[OUTPUT_SIZE]) {
    float max = 0;
    int index, i;
	for ( i = 0; i < OUTPUT_SIZE; i++) {
        if(output[i] > max){
        	max = output[i];
        	index = i;
        }
      	std::cout << "Output[" << i << "] = " << output[i] << std::endl;
    }
	std::cout << "Predicted Number = "<< index <<" with P = "<< max << std::endl;
}

int main() {
    // Declare and initialize input data in .h

	// Declare and initialize output array
    data_t output[OUTPUT_SIZE];

    // Call the neural network function
    neural_network(image, output);

    // Print the output
    print_output(output);

    return 0;
}
