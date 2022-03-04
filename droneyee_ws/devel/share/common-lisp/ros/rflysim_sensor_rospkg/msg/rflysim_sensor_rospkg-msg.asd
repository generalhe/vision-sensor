
(cl:in-package :asdf)

(defsystem "rflysim_sensor_rospkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Obj" :depends-on ("_package_Obj"))
    (:file "_package_Obj" :depends-on ("_package"))
  ))