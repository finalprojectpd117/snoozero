# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: mediapipe/calculators/tflite/tflite_tensors_to_detections_calculator.proto
"""Generated protocol buffer code."""
from google.protobuf.internal import builder as _builder
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from mediapipe.framework import calculator_pb2 as mediapipe_dot_framework_dot_calculator__pb2
try:
  mediapipe_dot_framework_dot_calculator__options__pb2 = mediapipe_dot_framework_dot_calculator__pb2.mediapipe_dot_framework_dot_calculator__options__pb2
except AttributeError:
  mediapipe_dot_framework_dot_calculator__options__pb2 = mediapipe_dot_framework_dot_calculator__pb2.mediapipe.framework.calculator_options_pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\nJmediapipe/calculators/tflite/tflite_tensors_to_detections_calculator.proto\x12\tmediapipe\x1a$mediapipe/framework/calculator.proto\"\xf9\x04\n*TfLiteTensorsToDetectionsCalculatorOptions\x12\x13\n\x0bnum_classes\x18\x01 \x01(\x05\x12\x11\n\tnum_boxes\x18\x02 \x01(\x05\x12\x12\n\nnum_coords\x18\x03 \x01(\x05\x12\x1d\n\x15keypoint_coord_offset\x18\t \x01(\x05\x12\x18\n\rnum_keypoints\x18\n \x01(\x05:\x01\x30\x12\"\n\x17num_values_per_keypoint\x18\x0b \x01(\x05:\x01\x32\x12\x1b\n\x10\x62ox_coord_offset\x18\x0c \x01(\x05:\x01\x30\x12\x12\n\x07x_scale\x18\x04 \x01(\x02:\x01\x30\x12\x12\n\x07y_scale\x18\x05 \x01(\x02:\x01\x30\x12\x12\n\x07w_scale\x18\x06 \x01(\x02:\x01\x30\x12\x12\n\x07h_scale\x18\x07 \x01(\x02:\x01\x30\x12,\n\x1d\x61pply_exponential_on_box_size\x18\r \x01(\x08:\x05\x66\x61lse\x12#\n\x14reverse_output_order\x18\x0e \x01(\x08:\x05\x66\x61lse\x12\x16\n\x0eignore_classes\x18\x08 \x03(\x05\x12\x1c\n\rsigmoid_score\x18\x0f \x01(\x08:\x05\x66\x61lse\x12\x1d\n\x15score_clipping_thresh\x18\x10 \x01(\x02\x12\x1e\n\x0f\x66lip_vertically\x18\x12 \x01(\x08:\x05\x66\x61lse\x12\x18\n\x10min_score_thresh\x18\x13 \x01(\x02\x32\x63\n\x03\x65xt\x12\x1c.mediapipe.CalculatorOptions\x18\x98\x8a\xc6u \x01(\x0b\x32\x35.mediapipe.TfLiteTensorsToDetectionsCalculatorOptions')

_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, globals())
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'mediapipe.calculators.tflite.tflite_tensors_to_detections_calculator_pb2', globals())
if _descriptor._USE_C_DESCRIPTORS == False:
  mediapipe_dot_framework_dot_calculator__options__pb2.CalculatorOptions.RegisterExtension(_TFLITETENSORSTODETECTIONSCALCULATOROPTIONS.extensions_by_name['ext'])

  DESCRIPTOR._options = None
  _TFLITETENSORSTODETECTIONSCALCULATOROPTIONS._serialized_start=128
  _TFLITETENSORSTODETECTIONSCALCULATOROPTIONS._serialized_end=761
# @@protoc_insertion_point(module_scope)
