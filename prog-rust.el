(use-package rust-mode
  :custom (lsp-rust-server 'rust-analyzer)
  :hook (rust-mode . lsp))
