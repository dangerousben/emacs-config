(add-to-list 'load-path (file-name-directory (file-truename load-file-name)))

;; Get these in early
(menu-bar-mode 0)
(tool-bar-mode 0)
(set-scroll-bar-mode nil)

;; Personal config
(setq user-full-name "Ben Spencer")
(setq user-mail-address "dangerous.ben@gmail.com")

;; Config set by all right-minded people
(setq backup-inhibited t
      column-number-mode t
      custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq-default indent-tabs-mode nil
	      show-trailing-whitespace t)

;; Optional local customisations
(load "local" t)

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Global functions and  keybindings
(defun open-shell () (interactive) (start-process "urxvtcd" nil "urxvtcd"))
(bind-key "C-x c" #'open-shell)

(global-auto-revert-mode t)
(global-prettify-symbols-mode t)

(use-package browse-kill-ring
  :ensure t)

(use-package comint
  :bind (:map comint-mode-map ("C-c M-o" . comint-clear-buffer)))

(use-package company
  :ensure t
  :config (global-company-mode t))

(use-package dabbrev
  :custom (dabbrev-case-replace nil))

(use-package eldoc
  :config (global-eldoc-mode))

(use-package flycheck
  :ensure t
  :config (global-flycheck-mode t))

(use-package flycheck-pos-tip
  :ensure t
  :config (flycheck-pos-tip-mode t))

(use-package git-gutter
  :ensure t
  :config (global-git-gutter-mode t))

(use-package ido
  :config (ido-mode)
  :custom
  (ido-enable-flex-matching t)
  (ido-everywhere t))

(use-package ispell
  :custom (ispell-dictionary "british"))

(use-package multiple-cursors
  :ensure t
  :bind ("C-c m" . mc/mark-all-dwim))

(use-package popup-imenu
  :ensure t
  :bind ("C-c i" . popup-imenu))

(defun switch-window () (interactive) (shell-command "stumpish other-in-frame"))
(use-package server
  :hook
  (after-init . server-start)
  (server-done . switch-window))

(use-package subword
  :config (global-subword-mode t))

(use-package uniquify
  :custom (uniquify-buffer-name-style 'forward))

(use-package vc
  :custom (vc-follow-symlinks t))

(use-package vc-annotate
  :bind (:map vc-annotate-mode-map ("q" . kill-buffer-and-window)))

;;; TODO Deboilerplate-ise this (automatic loads (from a subdir?), with numeric ordering if necessary)

(load "prog-lsp")

(load "prog-cmake")
(load "prog-js-shared")

(load "prog-c")
(load "prog-elisp")
(load "prog-java")
(load "prog-js")
(load "prog-json")
(load "prog-lisp")
(load "prog-python")
(load "prog-rust")
(load "prog-scala")
(load "prog-typescript")
(load "prog-web")
(load "prog-yaml")

(load "日本語")
