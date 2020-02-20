;; Consistent look for all code, daeliberately not called "face" or anything else that is used elsewhere because I'm not entirely sure what it will cover yet

(defun set-prog-look ()
  (variable-pitch-mode)
  (text-scale-set 1))

(add-hook 'prog-mode-hook 'set-prog-look)
