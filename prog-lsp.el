(use-package lsp-mode
  :custom
  (lsp-enable-snippet nil)
  (lsp-file-watch-threshold 8192)
  (lsp-idle-delay 0.500)
  (lsp-lens-auto-enable t)
  (lsp-prefer-capf t)
  :bind
  (:map lsp-mode-map
        ("C-c d" . lsp-describe-thing-at-point)
        ("C-c f" . lsp-execute-code-action)))

(use-package lsp-ui
  :config
  (flycheck-add-next-checker 'lsp-ui 'typescript-tslint))

(use-package company-lsp)

(use-package posframe)
(use-package dap-mode)
