(use-package slime
  :ensure t
  :init (setq inferior-lisp-program "sbcl")
  :config (setq slime-contribs '(slime-fancy)))
