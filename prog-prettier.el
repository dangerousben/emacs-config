(use-package prettier-js
  :ensure t
  :hook ((js-mode typescript-mode web-mode) . prettier-js-mode))
