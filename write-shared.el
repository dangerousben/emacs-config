(use-package visual-line-mode
  :ensure nil
  ;; visual-line-mode-mapo remaps the beginning and end of line movement functions to their visual
  ;; equivalents, which I don't want, so rewmove those bindings.
  ;;
  ;; This causes a 'Cannot load visual-line-mode' error because of what may be a bug in use-package:
  ;; use-package-handler/:bind-keymap and use-package-autoload-keymap seem to ignore :ensure nil (possibly the
  ;; latter doesn't need to be called at all).  May look into fixing when I have more time.  It still appears
  ;; to achieve the desired effect, although it may break startup in which case I possibly need to look into
  ;; handling the error (https://www.gnu.org/software/emacs/manual/html_node/elisp/Handling-Errors.html).
  ;; OTOH there seems to be some code in use-package to convert errors to warnings in use-package-ensure so
  ;; maybe it's FINE.  Why don't I restart and try?  And lose my entire session?  U mad bro?  I'm aware that
  ;; there are facilities like desktop-save-mode to restore stuff but it seems unlikely it can also preserve
  ;; varous child processes in comint buffers, and I don't have time to find out right now.  Apparently I do
  ;; have time to write this ridiculously long comment however...
  :bind (:map visual-line-mode-map
              ([remap move-beginning-of-line] . nil)
              ([remap move-end-of-line] . nil)))

(defun my-writing-mode-hook ()
  (company-mode -1)
  (visual-line-mode 1))
