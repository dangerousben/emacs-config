(use-package prettier-js
  :ensure t
  :custom (prettier-js-show-errors nil)
  :hook ((js-mode typescript-mode web-mode) . prettier-js-mode))
