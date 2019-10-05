(use-package scala-mode
  :ensure t
  :mode "\\.s\\(cala\\|bt\\)$"
  :config (add-to-list 'lsp-file-watch-ignored "\\.class$")
  :bind (:map scala-mode-map ("C-c C-v s" . sbt-start))
  :hook (scala-mode . lsp))

(use-package sbt-mode
  :ensure t
  :custom (sbt:program-options '("-no-colors" "-java-home" "/home/ben/opt/graalvm-ce-19.2.0.1/")))
