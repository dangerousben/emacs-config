(defun my-org-mode-hook ()
  (company-mode -1))

(add-hook 'org-mode-hook 'my-org-mode-hook)

(use-package org-crypt
  :ensure nil
  :custom
  (org-crypt-key nil)
  (org-tags-exclude-from-inheritance (quote ("crypt")))
  :config
  (org-crypt-use-before-save-magic))
