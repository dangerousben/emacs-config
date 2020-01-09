(use-package add-node-modules-path
  :ensure t
  :hook ((js-mode typescript-mode web-mode) . add-node-modules-path))

(use-package prettier-js
  :ensure t
  :custom (prettier-js-args '("--print-width", "120"))
  :custom (prettier-js-show-errors nil)
  :hook ((js-mode typescript-mode web-mode) . prettier-js-mode))
