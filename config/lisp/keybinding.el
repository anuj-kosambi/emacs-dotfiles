;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybinding User 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

(define-key evil-normal-state-map (kbd "SPC i") 'counsel-imenu)
(define-key evil-normal-state-map (kbd "SPC e") 'counsel-recentf)
(define-key evil-normal-state-map (kbd "SPC l") 'swiper)
(define-key evil-normal-state-map (kbd "g d") 'lsp-find-definition)
(define-key evil-visual-state-map (kbd "SPC c t") 'comment-or-uncomment-region)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Git 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key evil-normal-state-map (kbd "SPC g s") 'magit)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Project
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key evil-normal-state-map (kbd "SPC p p") 'counsel-projectile-switch-project)
(define-key evil-normal-state-map (kbd "SPC SPC") 'counsel-projectile-find-file)
(define-key evil-normal-state-map (kbd "SPC .") 'counsel-find-file)
(define-key evil-normal-state-map (kbd "SPC b b") 'counsel-projectile-switch-to-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Windows
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map (kbd "SPC w v") 'split-window-right)
(define-key evil-normal-state-map (kbd "SPC w l") 'windmove-right)
(define-key evil-normal-state-map (kbd "SPC w h") 'windmove-left)
(define-key evil-normal-state-map (kbd "SPC w j") 'windmove-up)
(define-key evil-normal-state-map (kbd "SPC w k") 'windmove-down)
(define-key evil-normal-state-map (kbd "SPC w s") 'split-window-below)


(define-key evil-normal-state-map (kbd "SPC b k") 'kill-current-buffer)
