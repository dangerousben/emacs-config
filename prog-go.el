(defun my-go-mode-hook ()
  (lsp)
  (dap-mode 1)
  (dap-ui-mode))

(use-package go-mode
  :config (dap-go-setup)
  :hook (go-mode . my-go-mode-hook))

(use-package go-impl)

(use-package go-fill-struct)

(use-package go-guru)

(use-package go-gen-test)

(use-package go-playground)

(use-package go-scratch)

(use-package go-tag)
