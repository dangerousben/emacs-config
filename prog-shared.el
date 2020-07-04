(use-package projectile)
(use-package treemacs)

(define-prefix-command 'prog-prefix-map)
(global-set-key (kbd "C-c") 'prog-prefix-map)
(define-key prog-prefix-map (kbd "p") 'projectile-command-map)
(define-key prog-prefix-map (kbd "t") #'projectile-toggle-between-implementation-and-test)
