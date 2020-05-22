(defun my-java-mode-hook()
  (setq c-basic-offset 2))

(use-package java-mode
  :ensure nil
  :hook
  (java-mode . my-java-mode-hook)
  (java-mode . lsp))

(use-package lsp-java)

(use-package jdecomp
  :config (jdecomp-mode 1)
  :custom
  (jdecomp-decompiler-type 'cfr)
  (jdecomp-decompiler-paths '((cfr . "~/opt/cfr.jar")
                              (procyon . "/usr/share/java/procyon-decompiler.jar"))))
