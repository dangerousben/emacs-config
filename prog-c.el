(use-package c-mode
  :init (add-to-list 'lsp-file-watch-ignored "\\.o$")
  :hook
  (c-mode . maybe-cmake-project-hook)
  (c-mode . lsp))
