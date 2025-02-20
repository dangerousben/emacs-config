(use-package geiser-guile
  :config
  (add-to-list 'geiser-guile-load-path "~/src/guile/guile/module")
  (add-to-list 'geiser-guile-load-path "~/src/guix/guix")
  (add-to-list 'geiser-guile-load-path "~/src/guix/nonguix")
  (add-to-list 'geiser-guile-load-path "~/src/guile/mcron/src")
  (add-to-list 'geiser-guile-load-path "~/src/personal/guix-config"))
