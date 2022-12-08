;; Input method (best I've found so far)
(use-package mozc)

(use-package migemo
  :ensure t
  :custom
  (migemo-command "cmigemo")
  (migemo-options '("-q" "--emacs"))
  (migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
  (migemo-coding-system 'utf-8-unix)
  (migemo-isearch-enable-p nil))
