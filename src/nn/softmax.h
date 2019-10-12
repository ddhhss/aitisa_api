#ifndef POOLING_H
#define POOLING_H

#include "src/core/tensor.h"

/**
 * @brief Applies a softmax over an input signal along a specified axis. 
 		  The axis should satisfy -1 <= axis <= ndim-1. When axis==-1, all 
 		  elements of input data will be softmaxed together.
 * @param input The input tensor.
 * @param axis The axis along which a softmax over input is applied. 
 * @param output The output tensor pointer.
 * @return Status The Status enum indicates whether the routine is OK.
 */

AITISA_API_PUBLIC Status aitisa_softmax(const Tensor input, const int axis,
										                    Tensor *output);
#endif
