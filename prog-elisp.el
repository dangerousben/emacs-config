(defun my-emacs-lisp-mode-hook ()
  (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(use-package elisp
  :config
  (setq flycheck-emacs-lisp-initialize-packages t
        flycheck-emacs-lisp-load-path 'inherit)
  :bind (:map emacs-lisp-mode-map ("C-c C-c" . eval-defun))
  :hook (emacs-lisp-mode . my-emacs-lisp-mode-hook))

(use-package elisp-slime-nav :ensure t)
