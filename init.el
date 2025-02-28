(add-to-list 'load-path (file-name-directory (file-truename load-file-name)))

;; Get these in early
(menu-bar-mode 0)
(tool-bar-mode 0)
(set-scroll-bar-mode nil)

;; Personal config
(setq user-full-name "Ben Spencer")
(setq user-mail-address "dangerous.ben@gmail.com")

;; Config set by all right-minded people
(setq auto-save-default nil
      backup-inhibited t
      column-number-mode t
      create-lockfiles nil
      custom-file (expand-file-name "custom.el" user-emacs-directory)
      load-prefer-newer t
      gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024)
      vc-follow-symlinks t)
(setq-default fill-column 110
              indent-tabs-mode nil
              show-trailing-whitespace t)

;; Local git checkouts (make sure they're kept up to date)
(defconst +local-package-dirs+
  (delete-dups
   (mapcar #'file-name-directory
           (directory-files-recursively "/home/ben/src/emacs-packages" "^[^\\.].+\\.el$" t t t))))
;; FIXME: these don't take precedence over packages?
;; Possibly fixable with :ensure nil?
(dolist (dir +local-package-dirs+) (add-to-list 'load-path dir))

(require 'cl) ; deprecated but no idea wtf replaces the fn I want
(defun reload-all-local ()
  (dolist (dir +local-package-dirs+)
    (let ((local-els (directory-files dir t "\\.el$"))
          (loaded-els (mapcar (lambda (entry) (string-remove-suffix "c" (car entry))) load-history)))
      (message "els: %s" (cl-intersection local-els loaded-els))
      ;; (format "loaded: %s" loaded-els)
      (dolist (file (cl-intersection local-els loaded-els))
        (message "loading: %s" file)
        (load file)))))

;(yas-global-mode -1)

;; Optional local customisations
(load "local" t)

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)
(setq use-package-verbose t)
(use-package auto-package-update
  :custom
  (auto-package-update-delete-old-versions t)
  (auto-package-update-hide-results t)
  :config
  (auto-package-update-maybe)
  (auto-package-update-at-time "13:00"))

;; Theme
(use-package color-theme-sanityinc-tomorrow
  :config (load-theme 'sanityinc-tomorrow-blue t))

;; Default font (argh this is ridiculous!)
;; (set-frame-font "Liberation Mono-26" nil t t)
;; (add-to-list 'default-frame-alist '(font . "Liberation Mono-20"))
(set-face-attribute 'default nil  :font "Liberation Mono-26")

;; Global functions and  keybindings
;; FIXME: helm overrides this... and I don't even explicitly install helm :(
(defun open-shell () (interactive) (start-process "st" nil "st"))
(bind-key "C-x c" #'open-shell)

(defun insert-current-date () (interactive) (insert (format-time-string "%Y-%m-%d")))
(bind-key "C-x d" #'insert-current-date)

;; Annoying stuff that I never want to do but sometimes hit accidentally (maybe could bind them to something
;; more useful but that might be very annoying if temporarily using a foreign emacs).
(bind-key "C-x C-c" nil)
(bind-key "C-z" nil)

(defun toggle-require-final-newline () (interactive)
       (setq require-final-newline (not require-final-newline))
       (message "require-final-newline: %s" require-final-newline))
(bind-key "C-x N" #'toggle-require-final-newline)

(global-auto-revert-mode t)
(global-prettify-symbols-mode t)

(define-prefix-command 'symbol-map)
(define-key 'symbol-map (kbd "l") (lambda () (interactive) (insert-char ?λ)))
(define-key 'symbol-map (kbd "o") (lambda () (interactive) (insert-char ?°)))
(global-set-key (kbd "M-c") 'symbol-map)

(bind-key "C-x D" #'toggle-debug-on-error)

;; TODO list unsaved buffers

(add-hook 'find-file-hook 'auto-insert)

(use-package browse-kill-ring)

(use-package comint
  :ensure nil
  :bind (:map comint-mode-map ("C-c M-o" . comint-clear-buffer)))

;; TODO sort out company-dabbrev-downcase and friends
(use-package company
  :config
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.0)
  (global-company-mode t))

;; TODO: figure out case stuff
(use-package dabbrev
  :custom (dabbrev-case-replace nil))

(use-package eldoc
  :config (global-eldoc-mode))

(use-package epa-file
  :ensure nil
  :config (epa-file-enable))

(use-package flycheck
  :config (global-flycheck-mode t))

(use-package flycheck-pos-tip
  :config (flycheck-pos-tip-mode t))

(use-package free-keys)

(use-package git-gutter
  :config (global-git-gutter-mode t))

(use-package ido
  :ensure nil
  :config (ido-mode 1)
  :custom
  (ido-enable-flex-matching t)
  (ido-everywhere t))

(use-package ispell
  :custom (ispell-dictionary "british"))

(use-package memory-usage)

(use-package multiple-cursors
  :bind ("C-c m" . mc/mark-all-dwim))

(use-package popup-imenu
  :bind ("C-c i" . popup-imenu))

(use-package recentf
  :ensure nil
  :config (recentf-mode 1)
  :bind ("M-r" . recentf-open-files))

(defun switch-window () (interactive) (shell-command "stumpish other-in-frame"))
(use-package server
  :hook
  (after-init . server-start)
  (server-done . switch-window))

(use-package subword
  :config (global-subword-mode t))

;; (use-package textsize
;;   :init (textsize-mode))

(use-package tramp
  :ensure nil)

(use-package uniquify
  :ensure nil
  :custom (uniquify-buffer-name-style 'forward))

(use-package vc
  :custom (vc-follow-symlinks t))

(use-package vc-annotate
  :ensure nil
  :bind (:map vc-annotate-mode-map ("q" . kill-buffer-and-window)))

;; (use-package yasnippet
;;   :custom (yas-keymap-disable-hook (list (lambda () t))))

;;; Major modes not worthy of their own file

(use-package dockerfile-mode)

;;; TODO Deboilerplate-ise this (automatic loads (from a subdir?), with numeric ordering if necessary)

(load "admin-apparmor")

(load "misc-uuid")
(load "misc-ztree")

(load "prog-shared")
(load "prog-look")
(load "prog-lsp")

(load "prog-cmake")
(load "prog-js-shared")

(load "prog-ansible")
(load "prog-c")
(load "prog-cplusplus")
(load "prog-csharp")
(load "prog-elisp")
(load "prog-elixir")
(load "prog-erlang")
(load "prog-execline")
(load "prog-git")
(load "prog-go")
(load "prog-guile")
(load "prog-haskell")
(load "prog-idris")
(load "prog-java")
(load "prog-js")
(load "prog-json")
(load "prog-lisp")
(load "prog-python")
(load "prog-racket")
(load "prog-ruby")
(load "prog-rust")
(load "prog-scala")
(load "prog-sh")
(load "prog-sql")
(load "prog-thrift")
(load "prog-typescript")
(load "prog-web")
(load "prog-yaml")

(load "write-shared")

(load "write-asciidoc")
(load "write-graphviz")
(load "write-markdown")
(load "write-org")
(load "write-plantuml")
(load "write-text")
(load "write-日本語")

(defun my-trace (&rest args)
  (princ "args:")
  (princ args)
  (terpri)
  (princ "trace:")
  (terpri)
  (backtrace)
  (terpri)
  nil)
