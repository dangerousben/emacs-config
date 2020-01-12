(use-package scala-mode
  :ensure t
  :mode ("\\.sc\\'")
  :bind (:map scala-mode-map ("C-c C-v s" . sbt-start))
  :hook (scala-mode . lsp))

(use-package sbt-mode
  :ensure t
  :custom (sbt:program-options '("-no-colors" "-java-home" "/home/ben/opt/jdk")))
