;; Auto-generated. Do not edit!


(when (boundp 'rflysim_sensor_rospkg::Obj)
  (if (not (find-package "RFLYSIM_SENSOR_ROSPKG"))
    (make-package "RFLYSIM_SENSOR_ROSPKG"))
  (shadow 'Obj (find-package "RFLYSIM_SENSOR_ROSPKG")))
(unless (find-package "RFLYSIM_SENSOR_ROSPKG::OBJ")
  (make-package "RFLYSIM_SENSOR_ROSPKG::OBJ"))

(in-package "ROS")
;;//! \htmlinclude Obj.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rflysim_sensor_rospkg::Obj
  :super ros::object
  :slots (_id _type _position _angule _size ))

(defmethod rflysim_sensor_rospkg::Obj
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:angule __angule) (instance geometry_msgs::Point :init))
    ((:size __size) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _position __position)
   (setq _angule __angule)
   (setq _size __size)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:angule
   (&rest __angule)
   (if (keywordp (car __angule))
       (send* _angule __angule)
     (progn
       (if __angule (setq _angule (car __angule)))
       _angule)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:serialization-length
   ()
   (+
    ;; uint64 _id
    8
    ;; uint64 _type
    8
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Point _angule
    (send _angule :serialization-length)
    ;; geometry_msgs/Point _size
    (send _size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; uint64 _type
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _type (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _type) (= (length (_type . bv)) 2)) ;; bignum
              (write-long (ash (elt (_type . bv) 0) 0) s)
              (write-long (ash (elt (_type . bv) 1) -1) s))
             ((and (class _type) (= (length (_type . bv)) 1)) ;; big1
              (write-long (elt (_type . bv) 0) s)
              (write-long (if (>= _type 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _type s)(write-long (if (>= _type 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Point _angule
       (send _angule :serialize s)
     ;; geometry_msgs/Point _size
       (send _size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _id
     
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _type
     
#+(or :alpha :irix6 :x86_64)
      (setf _type (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _type (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Point _angule
     (send _angule :deserialize buf ptr-) (incf ptr- (send _angule :serialization-length))
   ;; geometry_msgs/Point _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;;
   self)
  )

(setf (get rflysim_sensor_rospkg::Obj :md5sum-) "26fd945d0b2f8b91aae1901d73ca412d")
(setf (get rflysim_sensor_rospkg::Obj :datatype-) "rflysim_sensor_rospkg/Obj")
(setf (get rflysim_sensor_rospkg::Obj :definition-)
      "uint64 id
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

")



(provide :rflysim_sensor_rospkg/Obj "26fd945d0b2f8b91aae1901d73ca412d")


