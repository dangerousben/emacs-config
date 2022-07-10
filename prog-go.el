(defun my-go-mode-hook ()
  (setq tab-width 4)
  (lsp)
  (dap-mode 1)
  (dap-ui-mode))

(use-package go-mode
  ;; :config (dap-go-setup)
  :bind (:map go-mode-map
              ("C-c C-r" . go-run))
  :hook ((go-mode . my-go-mode-hook)
         (before-save . gofmt-before-save)))

(use-package go-impl)

(use-package go-fill-struct)

(use-package go-guru)

(use-package go-gen-test)

(use-package go-playground)

(use-package go-scratch)

(use-package go-tag)
