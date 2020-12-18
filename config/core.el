(setq exec-path (append '("/usr/local/bin") exec-path))

(add-to-list 'load-path "~/.emacs.d/packages")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evil Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/evil")
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;;; Adjust gc-cons-threshold. The default setting is too low for lsp-mode's needs due to the fact that client/server communication generates a lot of memory/garbage. You have two options:

(setq gc-cons-threshold 100000000)
;; Increase the amount of data which Emacs reads from the process. Again the emacs default is too low 4k considering that the some of the language server responses are in 800k - 3M range.

(setq read-process-output-max (* 1024 1024)) ;; 1mb

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
