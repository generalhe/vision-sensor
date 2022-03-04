; Auto-generated. Do not edit!


(cl:in-package rflysim_sensor_rospkg-msg)


;//! \htmlinclude Obj.msg.html

(cl:defclass <Obj> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (angule
    :reader angule
    :initarg :angule
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (size
    :reader size
    :initarg :size
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Obj (<Obj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Obj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Obj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rflysim_sensor_rospkg-msg:<Obj> is deprecated: use rflysim_sensor_rospkg-msg:Obj instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rflysim_sensor_rospkg-msg:id-val is deprecated.  Use rflysim_sensor_rospkg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rflysim_sensor_rospkg-msg:type-val is deprecated.  Use rflysim_sensor_rospkg-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rflysim_sensor_rospkg-msg:position-val is deprecated.  Use rflysim_sensor_rospkg-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'angule-val :lambda-list '(m))
(cl:defmethod angule-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rflysim_sensor_rospkg-msg:angule-val is deprecated.  Use rflysim_sensor_rospkg-msg:angule instead.")
  (angule m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rflysim_sensor_rospkg-msg:size-val is deprecated.  Use rflysim_sensor_rospkg-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Obj>) ostream)
  "Serializes a message object of type '<Obj>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angule) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Obj>) istream)
  "Deserializes a message object of type '<Obj>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angule) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Obj>)))
  "Returns string type for a message object of type '<Obj>"
  "rflysim_sensor_rospkg/Obj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Obj)))
  "Returns string type for a message object of type 'Obj"
  "rflysim_sensor_rospkg/Obj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Obj>)))
  "Returns md5sum for a message object of type '<Obj>"
  "26fd945d0b2f8b91aae1901d73ca412d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Obj)))
  "Returns md5sum for a message object of type 'Obj"
  "26fd945d0b2f8b91aae1901d73ca412d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Obj>)))
  "Returns full string definition for message of type '<Obj>"
  (cl:format cl:nil "uint64 id~%uint64 type~%geometry_msgs/Point position~%geometry_msgs/Point angule~%geometry_msgs/Point size~%# Point  Obj_pos~%# Point  Obj_angule~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Obj)))
  "Returns full string definition for message of type 'Obj"
  (cl:format cl:nil "uint64 id~%uint64 type~%geometry_msgs/Point position~%geometry_msgs/Point angule~%geometry_msgs/Point size~%# Point  Obj_pos~%# Point  Obj_angule~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Obj>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angule))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Obj>))
  "Converts a ROS message object to a list"
  (cl:list 'Obj
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':position (position msg))
    (cl:cons ':angule (angule msg))
    (cl:cons ':size (size msg))
))
