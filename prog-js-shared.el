(use-package add-node-modules-path
  :hook ((js-mode typescript-mode web-mode) . add-node-modules-path))

(use-package prettier-js
  :custom (prettier-js-args '("--print-width", "120"))
  :custom (prettier-js-show-errors nil)
  :hook ((js-mode typescript-mode web-mode) . prettier-js-mode))
