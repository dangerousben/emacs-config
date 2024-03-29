(use-package web-mode
  :custom
  (web-mode-enable-auto-indentation nil)
  (web-mode-enable-auto-quoting nil)
  (web-mode-code-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-markup-indent-offset 2)
  :config
  (flycheck-add-mode 'typescript-tslint 'web-mode)
  :mode "\\.jsx\\'" "\\.tsx\\'" ; "\\.cshtmll\\'"
  :hook (web-mode . lsp))
