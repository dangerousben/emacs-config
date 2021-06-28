(defun my-elixir-mode-hook ()
  (lsp)
  (dap-mode))

(use-package elixir-mode
  :hook (elixir-mode . my-elixir-mode-hook)
  :custom (lsp-clients-elixir-server-command '("/home/ben/src/elixir-ls/release/language_server.sh")))
