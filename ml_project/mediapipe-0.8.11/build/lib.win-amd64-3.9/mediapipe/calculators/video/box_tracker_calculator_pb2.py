# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: mediapipe/calculators/video/box_tracker_calculator.proto
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
from mediapipe.util.tracking import box_tracker_pb2 as mediapipe_dot_util_dot_tracking_dot_box__tracker__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n8mediapipe/calculators/video/box_tracker_calculator.proto\x12\tmediapipe\x1a$mediapipe/framework/calculator.proto\x1a)mediapipe/util/tracking/box_tracker.proto\"\xa8\x03\n\x1b\x42oxTrackerCalculatorOptions\x12\x35\n\x0ftracker_options\x18\x01 \x01(\x0b\x32\x1c.mediapipe.BoxTrackerOptions\x12\x36\n\x10initial_position\x18\x02 \x01(\x0b\x32\x1c.mediapipe.TimedBoxProtoList\x12&\n\x17visualize_tracking_data\x18\x03 \x01(\x08:\x05\x66\x61lse\x12\x1e\n\x0fvisualize_state\x18\x04 \x01(\x08:\x05\x66\x61lse\x12\'\n\x18visualize_internal_state\x18\x05 \x01(\x08:\x05\x66\x61lse\x12*\n\x1fstreaming_track_data_cache_size\x18\x06 \x01(\x05:\x01\x30\x12&\n\x1bstart_pos_transition_frames\x18\x07 \x01(\x05:\x01\x30\x32U\n\x03\x65xt\x12\x1c.mediapipe.CalculatorOptions\x18\xf4\xa4\x94\x80\x01 \x01(\x0b\x32&.mediapipe.BoxTrackerCalculatorOptions')

_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, globals())
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'mediapipe.calculators.video.box_tracker_calculator_pb2', globals())
if _descriptor._USE_C_DESCRIPTORS == False:
  mediapipe_dot_framework_dot_calculator__options__pb2.CalculatorOptions.RegisterExtension(_BOXTRACKERCALCULATOROPTIONS.extensions_by_name['ext'])

  DESCRIPTOR._options = None
  _BOXTRACKERCALCULATOROPTIONS._serialized_start=153
  _BOXTRACKERCALCULATOROPTIONS._serialized_end=577
# @@protoc_insertion_point(module_scope)
