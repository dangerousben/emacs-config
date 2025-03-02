(use-package c++-mode
  :ensure nil
  :hook
  (c++-mode . maybe-cmake-project-hook)
  (c++-mode . lsp))
