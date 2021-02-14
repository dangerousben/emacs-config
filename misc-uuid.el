(defun uuid-insert()
  (interactive)
  (insert (uuid-string)))

(use-package uuid
  :bind ("C-c U" . uuid-insert))
