(defun my-erlang-mode-hook ()
  (lsp))

(use-package erlang
  :hook (erlang-mode . my-erlang-mode-hook))
