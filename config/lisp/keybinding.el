;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybinding User
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(if (display-graphic-p)
    (global-set-key (kbd "<escape>") 'keyboard-escape-quit))

(define-key evil-normal-state-map (kbd "SPC i") 'counsel-imenu)
(define-key evil-normal-state-map (kbd "SPC l") 'swiper)
(global-set-key (kbd "C-x M-e SPC l") 'swiper)
(define-key evil-visual-state-map (kbd "spc c t") 'comment-or-uncomment-region)
(define-key evil-visual-state-map (kbd "M-/") 'comment-or-uncomment-region)
(global-set-key (kbd "M-f") 'avy-goto-word-1)

(global-set-key (kbd "M-L") 'format-all-buffer)


(global-set-key (kbd "M-I") 'profiler-start)
(global-set-key (kbd "M-K") 'profiler-stop)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; git
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-g s") 'magit)
(global-set-key (kbd "M-g l") 'magit-log-all)
(global-set-key (kbd "M-g k") 'git-gutter:revert-hunk)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Project
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key evil-normal-state-map (kbd "SPC p p") 'counsel-projectile-switch-project)
(define-key evil-normal-state-map (kbd "SPC SPC") 'counsel-projectile-find-file)
;;(global-set-key (kbd "M-O") 'counsel-projectile-find-file)
(define-key evil-normal-state-map (kbd "SPC .") 'counsel-find-file)
(define-key evil-normal-state-map (kbd "SPC b b") 'counsel-projectile-switch-to-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Buffers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-M-[") 'previous-buffer)
(global-set-key (kbd "C-M-]") 'next-buffer)
(define-key evil-normal-state-map (kbd "M-e") 'counsel-recentf)

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
(global-set-key (kbd "M-\\") 'treemacs-find-file)
(define-key evil-normal-state-map (kbd "M-g M-d") 'lsp-ui-peek-find-definitions)
(define-key evil-normal-state-map (kbd "M-g M-r") 'lsp-treemacs-references)
(define-key evil-normal-state-map (kbd "M-s M-s") 'lsp-treemacs-symbols)
(define-key evil-normal-state-map (kbd "M-F") 'counsel-git-grep)

(global-set-key (kbd "M-RET") 'lsp-ui-sideline-apply-code-actions)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Folding
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map (kbd "SPC TAB") 'yafolding-toggle-element)

(global-set-key (kbd "M-m") 'counsel-yank-pop)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Treemas keybinding
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
