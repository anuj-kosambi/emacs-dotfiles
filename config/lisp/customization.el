
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(column-number-mode t)

(use-package nlinum
  :ensure t
  :config
	(setq nlinum-format "%8d")
  (global-nlinum-mode))
(size-indication-mode t)

(toggle-scroll-bar 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(display-time-mode)

(setq ring-bell-function 'ignore)

;; (setq backup-directory-alist
;;      `((".*" . temporary-file-directory))
;;      auto-save-file-name-transforms
;;     `((".*" ,temporary-file-directory t)))

(setq-default left-fringe-width  0)
(setq-default right-fringe-width  0)
(set-face-attribute 'fringe nil :background "black")

;; (use-package doom-themes
;;   :ensure t
;;   :config
;;   (setq doom-themes-enable-bold t
;; 	doom-themes-enable-italic t)
;;   (load-theme 'doom-oceanic-next t)
;;   (doom-themes-org-config))

(use-package dracula-theme
  :ensure t
	:config
  (load-theme 'dracula))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-height 16)
  (setq doom-modeline-buffer-file-name-style 'relative-to-project)
  (setq doom-modeline-major-mode-icon t)
  (setq doom-modeline-minor-modes (featurep 'minions))
  )

(setq doom-modeline-height 16)

;; (setq linum-format "%10d")
(global-linum-mode 0)
;;(setq global-tab-line-mode 0)
(setq tab-width 2)

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

(use-package dimmer
  :ensure t
  :custom (dimmer-fraction 0.1)
  :config (dimmer-mode))

(global-hl-line-mode)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq create-lockfiles nil)

(show-paren-mode)

