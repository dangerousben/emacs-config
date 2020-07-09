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
