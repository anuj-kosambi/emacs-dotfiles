
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(column-number-mode t)
(size-indication-mode t)
(tool-bar-mode -1)

(setq-default left-fringe-width  0)
(setq-default right-fringe-width  0)
(set-face-attribute 'fringe nil :background "black")

(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "\s\s%4d\s\s")
