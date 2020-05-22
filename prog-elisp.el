(defun my-emacs-lisp-mode-hook ()
  (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  (turn-on-elisp-slime-nav-mode))

(use-package elisp
  :ensure nil
  :config
  (setq flycheck-emacs-lisp-initialize-packages t
        flycheck-emacs-lisp-load-path 'inherit)
  :bind (:map emacs-lisp-mode-map
              ("C-c C-c" . eval-defun)
              ("C-c C-k" . eval-buffer)
              ("C-c C-v z" . ielm))
  :hook (emacs-lisp-mode . my-emacs-lisp-mode-hook))

(defun my-ielm-mode-hook ()
  (eldoc-mode  t)
  (turn-on-elisp-slime-nav-mode)
  (set-prog-look))

(use-package ielm
  :hook (ielm-mode . my-ielm-mode-hook))

(use-package elisp-format)
(use-package elisp-slime-nav)
