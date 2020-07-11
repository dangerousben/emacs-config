(use-package markdown-mode
  :custom (markdown-command "pandoc -f gfm")
  :mode (("\\.md\\'" . gfm-mode))
  :hook (markdown-mode . my-writing-mode-hook))

(use-package poly-markdown)
