(defun my-lsp-mode-hook ()
  (projectile-mode))

(use-package lsp-mode
  :custom
  (lsp-enable-snippet nil)
  (lsp-file-watch-threshold 8192)
  (lsp-idle-delay 0.500)
  (lsp-lens-enable t)
  (lsp-prefer-capf t)
  :bind (:map prog-prefix-map
              ("E" . lsp-treemacs-error-list)
              ("I" . lsp-treemacs-implementations)
              ("S" . lsp-treemacs-references)
              ("S" . lsp-treemacs-error-symbols)
              ("d" . lsp-describe-thing-at-point)
              ("f" . lsp-execute-code-action)))

(use-package lsp-ui)
  ;; FIXME: flymake_ files trigger rebuilds (sure this didn't happen before?)
  ;; :config
  ;; (flycheck-add-next-checker 'lsp-ui 'typescript-tslint))

(use-package company-lsp)

(use-package posframe)
(use-package dap-mode)

(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode 1))
