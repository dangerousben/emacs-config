;; Consistent look for all code, daeliberately not called "face" or anything else that is used elsewhere because I'm not entirely sure what it will cover yet

(defface code-base
  '((t :family "Source Code Variable"))
  "Basic face for code")
(defun set-prog-look ()
  (buffer-face-set '(code-base)))

(add-hook 'prog-mode-hook 'set-prog-look)
