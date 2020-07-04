(defun my-scala-mode-hook ()
  (setq prettify-symbols-alist
        (append scala-mode-pretty-arrows-alist
                '(("<=" . ?≤) (">=" . ?≥) ("==" . ?≡) ("===" . ?≣))))
  (ammonite-term-repl-minor-mode t)
  (lsp))

(use-package scala-mode
  :mode ("\\.sc\\'")
  :bind (:map scala-mode-map
              ("C-c C-c" . ammonite-term-repl-send-defun)
              ("C-c C-k" . ammonite-term-repl-send-buffer)
              ("C-c C-v s" . sbt-start)
              ("C-c C-v z" . ammonite-term-repl))
  :hook (scala-mode . my-scala-mode-hook))

(use-package sbt-mode
  :custom (sbt:program-options '("-no-colors" "-java-home" "/home/ben/opt/jdk")))

(use-package lsp-metals)

(use-package ammonite-term-repl)
