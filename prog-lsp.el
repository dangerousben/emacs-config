(use-package lsp-mode
  :custom
  (lsp-enable-snippet nil)
  (lsp-file-watch-threshold 8192)
  (lsp-idle-delay 0.500)
  (lsp-lens-auto-enable t)
  (lsp-prefer-capf t)
  :bind (:map lsp-mode-map :prefix "C-c" :prefix-map my-lsp-mode-map
              ("E" . lsp-treemacs-error-list)
              ("I" . lsp-treemacs-implementations)
              ("S" . lsp-treemacs-references)
              ("S" . lsp-treemacs-error-symbols)
              ("d" . lsp-describe-thing-at-point)
              ("f" . lsp-execute-code-action)
              ("p" . 'projectile-command-map)
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
