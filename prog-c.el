(use-package c-mode
  :init (add-to-list 'lsp-file-watch-ignored "\\.o$")
  :hook
  (c-mode . lsp))
