(defun my-java-mode-hook()
  (setq c-basic-offset 2))

(use-package java-mode
  :config (add-to-list 'lsp-file-watch-ignored "\\.class$")
  :hook
  (java-mode . my-java-mode-hook)
  (java-mode . lsp))

(use-package lsp-java
  :ensure t)
