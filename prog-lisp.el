(use-package slime
  :ensure t
  :init (setq inferior-lisp-program "sbcl")
  :bind (:map slime-mode-map ("C-c C-v z" . slime-repl))
  :config (setq slime-contribs '(slime-fancy)))
