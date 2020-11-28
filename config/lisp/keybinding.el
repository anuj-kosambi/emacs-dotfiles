;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybinding User 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

(define-key evil-normal-state-map (kbd "SPC i") 'counsel-imenu)
(define-key evil-normal-state-map (kbd "SPC e") 'counsel-recentf)
(define-key evil-normal-state-map (kbd "SPC l") 'swiper)
(define-key evil-normal-state-map (kbd "g d") 'lsp-find-definition)
(define-key evil-visual-state-map (kbd "SPC c t") 'comment-or-uncomment-region)


(define-key evil-normal-state-map (kdb "M-L") 'format-all-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; git 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key evil-normal-state-map (kbd "SPC g s") 'magit)
(define-key evil-normal-state-map (kbd "SPC g l") 'magit-log-all)
(define-key evil-normal-state-map (kbd "SPC g k") 'git-gutter:revert-hunk)

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Lsp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map (kbd "M-g M-d") 'lsp-ui-peek-find-definitions)
(define-key evil-normal-state-map (kbd "M-g M-r") 'lsp-ui-peek-find-references)
(define-key evil-normal-state-map (kbd "M-s M-s") 'lsp-treemacs-symbols)
(define-key evil-normal-state-map (kbd "M-F") 'counsel-git-grep)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Folding
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map (kbd "SPC TAB") 'yafolding-toggle-element)
