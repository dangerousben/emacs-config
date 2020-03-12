(defun my-text-mode-hook ()
  (company-mode -1))

(add-hook 'text-mode-hook 'my-text-mode-hook)
