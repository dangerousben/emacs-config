(defun my-execline-mode-hook ()
  (setq tab-width 2))

(use-package execline
  :interpreter ("execlineb" . execline-mode)
  :hook (execline-mode . my-execline-mode-hook))
