;; TODO tidy all this shit up, reduce to a minimum number of nicely maintained packages (perhaps, contrary to
;; later comment, that means a well-configured magit)

;; TODO: disable most of magit, only really installed it because some of the features of other packages wanted it
;; (use-package magit)

;; (use-package git-blamed)

;; (use-package git-commit
;;   :custom git-commit-fill-column 72)

;; (defun gited-list-local-branches ()
;;   (interactive)
;;   (gited-list-branches "local"))

;; (use-package gited
;;   :custom
;;   (gited-verbose t)
;;   :bind (:map prog-prefix-map
;;               ("B" . gited-list-local-branches)))

;; (use-package gitconfig-mode)
;; (use-package gitignore-mode)

;; (use-package git-timemachine
;;   :bind (:map prog-prefix-map
;;               ("T" . git-timemachine)))

;; (use-package git-walktree
;;   :bind (:map prog-prefix-map
;;               ("W" . git-walktree)))

;; (use-package vc-msg
;;   :bind (:map prog-prefix-map
;;               ("M" . vc-msg-show)))
