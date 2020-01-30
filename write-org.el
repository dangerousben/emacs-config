(use-package org-crypt
  :ensure nil
  :custom
  (org-crypt-key nil)
  (org-tags-exclude-from-inheritance (quote ("crypt")))
  :config
  (org-crypt-use-before-save-magic))
