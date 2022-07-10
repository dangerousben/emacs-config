(defun my-kotlin-mode-hook ()
  (lsp))

(use-package kotlin-mode
  :hook (kotlin-mode . my-kotlin-mode-hook))

(use-package kotlin-lsp)
