(use-package lsp-mode
  :custom (lsp-file-watch-threshold 8192)
  :config
  (setq lsp-enable-snippet nil
        lsp-idle-delay 0.500
        lsp-prefer-capf t)
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
