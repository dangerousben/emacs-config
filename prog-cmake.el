(use-package cmake-mode
  :ensure t)

(use-package cmake-project
  :ensure t)

(defun maybe-cmake-project-hook ()
  (if (file-exists-p "CMakeLists.txt") (cmake-project-mode)))
