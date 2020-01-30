(use-package lsp-mode
  :config
  (setq lsp-enable-snippet nil
        lsp-prefer-flymake nil)
  :bind
  (:map lsp-mode-map
        ("C-c d" . lsp-describe-thing-at-point)
        ("C-c f" . lsp-execute-code-action)))

(use-package lsp-ui
  :config
  (flycheck-add-next-checker 'lsp-ui 'typescript-tslint))

(use-package company-lsp)

(use-package dap-mode)
