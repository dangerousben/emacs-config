(defun my-emacs-lisp-mode-hook ()
  (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

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

(use-package elisp-slime-nav
  :hook (ielm-mode . turn-on-elisp-slime-nav-mode)
  :hook (emacs-lisp-mode . turn-on-elisp-slime-nav-mode))
