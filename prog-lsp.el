(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-enable-snippet nil
        lsp-prefer-flymake nil)
  :bind
  (:map lsp-mode-map
        ("C-c d" . lsp-describe-thing-at-point)
        ("C-c f" . lsp-execute-code-action)))

(use-package lsp-ui
  :ensure t
  :config
  (flycheck-add-next-checker 'lsp-ui 'typescript-tslint))

(use-package company-lsp :ensure t)

(use-package dap-mode
  :ensure t)
