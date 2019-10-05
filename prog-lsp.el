(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-enable-snippet nil
        lsp-prefer-flymake nil)
  :bind
  (:map lsp-mode-map
        ("C-c d" . lsp-describe-thing-at-point)
        ("C-c f" . lsp-execute-code-action)))

(use-package lsp-ui :ensure t)

(use-package company-lsp :ensure t)
