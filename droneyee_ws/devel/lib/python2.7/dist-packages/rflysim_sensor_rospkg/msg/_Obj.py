# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rflysim_sensor_rospkg/Obj.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Obj(genpy.Message):
  _md5sum = "26fd945d0b2f8b91aae1901d73ca412d"
  _type = "rflysim_sensor_rospkg/Obj"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint64 id
uint64 type
geometry_msgs/Point position
geometry_msgs/Point angule
geometry_msgs/Point size
# Point  Obj_pos
# Point  Obj_angule
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['id','type','position','angule','size']
  _slot_types = ['uint64','uint64','geometry_msgs/Point','geometry_msgs/Point','geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,type,position,angule,size

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Obj, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.type is None:
        self.type = 0
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.angule is None:
        self.angule = geometry_msgs.msg.Point()
      if self.size is None:
        self.size = geometry_msgs.msg.Point()
    else:
      self.id = 0
      self.type = 0
      self.position = geometry_msgs.msg.Point()
      self.angule = geometry_msgs.msg.Point()
      self.size = geometry_msgs.msg.Point()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2Q9d().pack(_x.id, _x.type, _x.position.x, _x.position.y, _x.position.z, _x.angule.x, _x.angule.y, _x.angule.z, _x.size.x, _x.size.y, _x.size.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.angule is None:
        self.angule = geometry_msgs.msg.Point()
      if self.size is None:
        self.size = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 88
      (_x.id, _x.type, _x.position.x, _x.position.y, _x.position.z, _x.angule.x, _x.angule.y, _x.angule.z, _x.size.x, _x.size.y, _x.size.z,) = _get_struct_2Q9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2Q9d().pack(_x.id, _x.type, _x.position.x, _x.position.y, _x.position.z, _x.angule.x, _x.angule.y, _x.angule.z, _x.size.x, _x.size.y, _x.size.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.angule is None:
        self.angule = geometry_msgs.msg.Point()
      if self.size is None:
        self.size = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 88
      (_x.id, _x.type, _x.position.x, _x.position.y, _x.position.z, _x.angule.x, _x.angule.y, _x.angule.z, _x.size.x, _x.size.y, _x.size.z,) = _get_struct_2Q9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Q9d = None
def _get_struct_2Q9d():
    global _struct_2Q9d
    if _struct_2Q9d is None:
        _struct_2Q9d = struct.Struct("<2Q9d")
    return _struct_2Q9d