(use-package magit)

(use-package git-commit
  :custom git-commit-fill-column 72)

(defun gited-list-local-branches ()
  (interactive)
  (gited-list-branches "local"))

(use-package gited
  :custom
  (gited-verbose t)
  :bind (:map prog-prefix-map
              ("B" . gited-list-local-branches)))

(use-package gitconfig-mode)
(use-package gitignore-mode)

(use-package git-timemachine
  :bind (:map prog-prefix-map
              ("T" . git-timemachine)))

(use-package vc-msg
  :bind (:map prog-prefix-map
              ("M" . vc-msg-show)))
