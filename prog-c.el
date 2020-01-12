(use-package c-mode
  :hook
  (c-mode . maybe-cmake-project-hook)
  (c-mode . lsp))
