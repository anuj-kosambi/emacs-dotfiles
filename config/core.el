(setq exec-path (append '("/usr/local/bin") exec-path))


(add-to-list 'load-path "~/.emacs.d/packages")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evil Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/evil")
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)



(setq message-log-max 16384)
(defconst emacs-start-time (current-time))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
;; keep the installed packages in .emacs.d

(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-verbose t)


(defun load-directory (dir)
  (let ((load-it (lambda (f)
		       (load-file (concat (file-name-as-directory dir) f)))
		     ))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory (concat (file-name-directory load-file-name)
		   "lisp"))
(load-file "~/.emacs.d/packages/goto-chg/goto-chg.el")

(unless (package-installed-p 'exec-path-from-shell)
  (package-install 'exec-path-from-shell))

(exec-path-from-shell-initialize)

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))


(use-package highlight-indent-guides
  :ensure t
  :config
  (setq highlight-indent-guides-method 'character))

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)


