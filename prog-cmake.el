(use-package cmake-mode)

(use-package cmake-project)

(defun maybe-cmake-project-hook ()
  (if (file-exists-p "CMakeLists.txt") (cmake-project-mode)))
