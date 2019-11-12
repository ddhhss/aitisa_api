#include "gtest/gtest.h"
extern "C" {
#include "src/nn/batch_norm.h"
#include "src/basic/factories.h"
#include <math.h>
//#include "src/tool/tool.h"
}

void batch_norm_natural_assign_double(Tensor t, const double start) {
  int64_t size = aitisa_tensor_size(t);
  double* data = (double*)aitisa_tensor_data(t);
  double value = 0;
  for (int i = 0; i < size; ++i) {
    value = i * 0.1 + start;
    data[i] = value;
  }
}

namespace aitisa_api {
namespace {
TEST(BatchNorm, Input5dAxis4) {
  DataType dtype = { TYPE_DOUBLE, sizeof(double) };
  Device device = { DEVICE_CPU, 0 };

  Tensor input;
  int64_t in_dims[5] = { 2, 1, 2, 1, 2 };
  aitisa_create(dtype, device, LAYOUT_DENSE, in_dims, 5, &input);
  batch_norm_natural_assign_double(input, 0);
  //printf("input:\n");
  //tensor_printer2d(input);

  Tensor mean, variance, scale, bias;
  int64_t param_dims[1] = { 2 };
  int64_t param_ndim = 1;
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &mean);
  batch_norm_natural_assign_double(mean, 0.5);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &variance);
  batch_norm_natural_assign_double(variance, 1.1);
  //printf("mean:\n");
  //tensor_printer(mean);
  //printf("variance:\n");
  //tensor_printer(variance);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &scale);
  batch_norm_natural_assign_double(scale, 1);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &bias);
  batch_norm_natural_assign_double(bias, 0);
  //printf("scale:\n");
  //tensor_printer(scale);
  //printf("bias:\n");
  //tensor_printer(bias);

  double epsilon = 1e-5;

  Tensor output;
  aitisa_batch_norm(input, 4, scale, bias, mean, variance, epsilon, &output);
  //printf("output:\n");
  //tensor_printer2d(output);
  int64_t size = aitisa_tensor_size(output);
  double* out_data = (double*)aitisa_tensor_data(output);
  double test_data[] = { -0.476729, -0.402077, -0.286037, -0.201246,
                         -0.095346, -0.000415,  0.095346,  0.200415 };
  for (int64_t i = 0; i < size; i++) {
    EXPECT_TRUE(abs(out_data[i]-test_data[i])<0.000001);
  }
}

TEST(BatchNorm, Input4dAxis1) {
  DataType dtype = { TYPE_DOUBLE, sizeof(double) };
  Device device = { DEVICE_CPU, 0 };

  Tensor input;
  int64_t in_dims[4] = { 2, 3, 2, 2 };
  aitisa_create(dtype, device, LAYOUT_DENSE, in_dims, 4, &input);
  batch_norm_natural_assign_double(input, 0);
  //printf("input:\n");
  //tensor_printer2d(input);

  Tensor mean, variance, scale, bias;
  int64_t param_dims[1] = { 3 };
  int64_t param_ndim = 1;
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &mean);
  batch_norm_natural_assign_double(mean, 0.5);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &variance);
  batch_norm_natural_assign_double(variance, 1.1);
  //printf("mean:\n");
  //tensor_printer(mean);
  //printf("variance:\n");
  //tensor_printer(variance);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &scale);
  batch_norm_natural_assign_double(scale, 1);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &bias);
  batch_norm_natural_assign_double(bias, 0);
  //printf("scale:\n");
  //tensor_printer(scale);
  //printf("bias:\n");
  //tensor_printer(bias);

  double epsilon = 1e-5;

  Tensor output;
  aitisa_batch_norm(input, 1, scale, bias, mean, variance, epsilon, &output);
  //printf("output:\n");
  //tensor_printer2d(output);
  int64_t size = aitisa_tensor_size(output);
  double* out_data = (double*)aitisa_tensor_data(output);
  double test_data[] = { -0.476729, -0.381383, -0.286037, -0.190692,
                         -0.100831, -0.000415,  0.100000,  0.200415,
                          0.305247,  0.410493,  0.515740,  0.620986,
                          0.667421,  0.762767,  0.858112,  0.953458,
                          1.104154,  1.204569,  1.304985,  1.405400,
                          1.568205,  1.673452,  1.778698,  1.883945 };
  for (int64_t i = 0; i < size; i++) {
    EXPECT_TRUE(abs(out_data[i] - test_data[i]) < 0.000001);
  }
}

TEST(BatchNorm, Input2dAxis1) {
  DataType dtype = { TYPE_DOUBLE, sizeof(double) };
  Device device = { DEVICE_CPU, 0 };

  Tensor input;
  int64_t in_dims[2] = { 3, 4 };
  aitisa_create(dtype, device, LAYOUT_DENSE, in_dims, 2, &input);
  batch_norm_natural_assign_double(input, 0);
  //printf("input:\n");
  //tensor_printer2d(input);

  Tensor mean, variance, scale, bias;
  int64_t param_dims[1] = { 4 };
  int64_t param_ndim = 1;
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &mean);
  batch_norm_natural_assign_double(mean, 0.5);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &variance);
  batch_norm_natural_assign_double(variance, 1.1);
  //printf("mean:\n");
  //tensor_printer(mean);
  //printf("variance:\n");
  //tensor_printer(variance);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &scale);
  batch_norm_natural_assign_double(scale, 1);
  aitisa_create(dtype, device, LAYOUT_DENSE, param_dims, param_ndim, &bias);
  batch_norm_natural_assign_double(bias, 0);
  //printf("scale:\n");
  //tensor_printer(scale);
  //printf("bias:\n");
  //tensor_printer(bias);

  double epsilon = 1e-5;

  Tensor output;
  aitisa_batch_norm(input, 1, scale, bias, mean, variance, epsilon, &output);
  //printf("output:\n");
  //tensor_printer2d(output);
  int64_t size = aitisa_tensor_size(output);
  double* out_data = (double*)aitisa_tensor_data(output);
  double test_data[] = { -0.476729, -0.402077, -0.326233, -0.249348,
                         -0.095346, -0.000415,  0.094753,  0.190130,
                          0.286037,  0.401246,  0.515740,  0.629609 };
  for (int64_t i = 0; i < size; i++) {
    EXPECT_TRUE(abs(out_data[i] - test_data[i]) < 0.000001);
  }
}

}//namespace
}//namespace aitisa_api