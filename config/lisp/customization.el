
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(column-number-mode t)
;;(global-display-line-numbers-mode t)
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

(use-package doom-themes
  :ensure t
  :config
    (setq doom-themes-enable-bold t
	   doom-themes-enable-italic t) 
    (load-theme 'doom-horizon t)
    (doom-themes-org-config)
  )

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
(setq ivy-posframe-border-width 16)

(setq linum-format "%10d")
;;(global-linum-mode 1)
;;(setq global-tab-line-mode 0)
