(defun my-yaml-mode-hook ()
  ; yaml-mode is derived from text-mode
  (visual-line-mode -1))

(use-package yaml-mode
  :hook (yaml-mode . my-yaml-mode-hook))
