
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq line-spacing 0.4)
(size-indication-mode t)

(add-hook 'after-change-major-mode-hook
	  (lambda ()
	    (setq line-spacing 0.4)
	    (display-line-numbers-mode)
	    ))

(toggle-scroll-bar 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(display-time-mode)

(setq ring-bell-function 'ignore)

(setq-default left-fringe-width  0)
(setq-default right-fringe-width  0)
(set-face-attribute 'fringe nil :background "black")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Themes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-horizon t)
  (doom-themes-org-config))

;; (set-face-attribute 'link nil :foreground   "#cd5c5c")
;; (set-face-attribute 'mode-line-emphasis nil :foreground   "#cd5c5c")
;; (set-face-attribute 'cursor nil :background   "#cd5c5c")
(set-face-attribute 'default nil :background   "#212121")
;;(set-face-attribute 'ivy-posframe nil :background   "#292929")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modeline
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
