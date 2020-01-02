(use-package rust-mode
  :ensure t
  :custom (lsp-rust-server 'rust-analyzer)
  :hook (rust-mode . lsp))
