(use-package web-mode
  :ensure t
  :custom
  (web-mode-enable-auto-indentation nil)
  (web-mode-code-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-markup-indent-offset 2)
  :mode "\\.jsx\\'" "\\.tsx\\'"
  :hook (web-mode . lsp))
