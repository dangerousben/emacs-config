(defun my-sh-mode-hook ()
  (when (eq sh-shell 'bash)
    (lsp)))

(add-hook 'sh-mode-hook 'my-sh-mode-hook)
