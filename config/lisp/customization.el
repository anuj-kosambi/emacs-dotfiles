
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

;;(toggle-scroll-bar 0)
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



(custom-set-faces
 '(default ((t (
		:inherit nil
		:extend nil
		:stipple nil
		:background "#212121"
		:foreground "#c7c9cb"
		:inverse-video nil
		:box nil
		:strike-through nil
		:overline nil
		:underline nil
		:slant normal
		:weight semi-bold
		:height 98
		:width normal
		:foundry "CTDB"
		:family "Fira Code"))))
 (set-face-attribute 'default nil :background   "#212121")
 ;; '(font-lock-variable-name-face ((t (:foreground "medium aquamarine"))))
 '(highlight ((t (:background "indian red" :foreground "#1b1d1e"))))
 '(ivy-current-match ((t (:extend t :background "#000022"))))
 '(ivy-posframe ((t (:background "#292929"))))
 '(ivy-posframe-border ((t nil)))
 '(link ((t (:foreground "indian red" :underline t :weight bold))))
 '(lsp-ui-peek-highlight ((t (:inherit nil :background nil :foreground nil :weight semi-bold :box (:line-width -1))))))

(set-face-attribute 'region nil :background "#000022")
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
