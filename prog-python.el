(use-package python-mode
  :config (add-to-list 'lsp-file-watch-ignored "\\.pyc$")
  :hook (python-mode . lsp))
