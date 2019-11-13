
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(column-number-mode t)
(size-indication-mode t)
(tool-bar-mode -1)

(setq ring-bell-function 'ignore)

(setq-default left-fringe-width  0)
(setq-default right-fringe-width  0)
(set-face-attribute 'fringe nil :background "black")

(global-display-line-numbers-mode t)
(setq display-line-numbers "%4d")

(use-package doom-themes
  :ensure t
  :config
    (setq doom-themes-enable-bold t
	   doom-themes-enable-italic t) 
    (load-theme 'doom-snazzy t)
    (doom-themes-org-config)
  )

