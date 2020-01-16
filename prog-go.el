(defun my-go-mode-hook ()
  (lsp)
  (dap-mode 1)
  (dap-ui-mode))

(use-package go-mode
  :ensure t
  :config (dap-go-setup)
  :hook (go-mode . my-go-mode-hook))

(use-package go-impl
  :ensure t)

(use-package go-fill-struct
  :ensure t)

(use-package go-guru
  :ensure t)

(use-package go-gen-test
  :ensure t)

(use-package go-playground
  :ensure t)

(use-package go-scratch
  :ensure t)

(use-package go-tag
  :ensure t)
