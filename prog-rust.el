(use-package rust-mode
  :custom (lsp-rust-server 'rls)
  :hook (rust-mode . lsp))
