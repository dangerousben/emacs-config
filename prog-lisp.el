(defun my-common-lisp-hook ()
    (bind-key "C-c l" 'clhs-doc)) ; this actually edits prog-prefix-map defined in prog-shared.el, but I'm sure that's FINE

(use-package common-lisp
  :ensure nil
  :hook (common-lisp-mode-hook . my-common-lisp-mode-hook))

(use-package slime
  :init (setq inferior-lisp-program "sbcl")
  :bind (:map slime-mode-map ("C-c C-v z" . slime-repl))
  :config (setq slime-contribs '(slime-fancy)))

; see here for how to add the custom thing you wanted to add: https://emacs.stackexchange.com/questions/32104/add-to-a-list-that-defcustom-has-not-yet-defined

;; (use-package clhs
;;   :custom
