(use-package lsp-haskell)

(use-package haskell-mode
  :hook (haskell-mode #'lsp))
