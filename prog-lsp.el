(use-package lsp-mode
  :custom
  (lsp-enable-snippet nil)
  (lsp-file-watch-threshold 8192)
  (lsp-idle-delay 0.500)
  (lsp-lens-auto-enable t)
  (lsp-prefer-capf t)
  :bind (:map lsp-mode-map :prefix "C-c" :prefix-map my-lsp-mode-map
              ("d" . lsp-describe-thing-at-point)
              ("f" . lsp-execute-code-action)
              ("t" . projectile-toggle-between-implementation-and-test)))

(use-package lsp-ui
  :config
  (flycheck-add-next-checker 'lsp-ui 'typescript-tslint))

(use-package company-lsp)

(use-package posframe)
(use-package dap-mode)

(use-package projectile
  :hook (lsp-mode . projectile-mode))

(use-package treemacs)
(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode 1))
