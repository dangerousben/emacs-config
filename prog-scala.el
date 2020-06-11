(defun my-scala-mode-hook ()
  (setq prettify-symbols-alist
        (append scala-mode-pretty-arrows-alist
                '(("<=" . ?≤) (">=" . ?≥) ("==" . ?≡) ("===" . ?≣))))
  (lsp))

(use-package scala-mode
  :mode ("\\.sc\\'")
  :bind (:map scala-mode-map ("C-c C-v s" . sbt-start))
  :hook (scala-mode . my-scala-mode-hook))

(use-package sbt-mode
  :custom (sbt:program-options '("-no-colors" "-java-home" "/home/ben/opt/jdk")))

(use-package lsp-metals)
