(use-package java-mode
  :config (add-to-list 'lsp-file-watch-ignored "\\.class$")
  :hook (java-mode . lsp))

(use-package lsp-java
  :ensure t)
