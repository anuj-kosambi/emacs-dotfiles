

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.250)
  (setq company-minimum-prefix-length 0)
  (global-company-mode +1))

;; (use-package company-capf
;;   :ensure t)

;; (setq company-lsp-cache-candidates 'auto)

(add-to-list 'company-backends 'company-capf)

(use-package company-try-hard
  :ensure t)

(use-package company-box
  :ensure t
  :defer t
  :after company
  :diminish
  :functions (all-the-icons-faicon
	      all-the-icons-material
	      all-the-icons-octicon
	      all-the-icons-alltheicon)
  :after (all-the-icons company)
  :hook (company-mode . company-box-mode)
  :init (setq company-box-icons-alist 'company-box-icons-all-the-icons)
  :config
  (setq company-box-max-candidates 20)
  (defun company-box-icons--elisp (candidate)
    (when (derived-mode-p 'emacs-lisp-mode)
      (let ((sym (intern candidate)))
	(cond ((fboundp sym) 'Function)
	      ((featurep sym) 'Module)
	      ((facep sym) 'Color)
	      ((boundp sym) 'Variable)
	      ((symbolp sym) 'Text)
	      (t . nil)))))

  (with-eval-after-load 'all-the-icons
    (declare-function all-the-icons-faicon 'all-the-icons)
    (declare-function all-the-icons-fileicon 'all-the-icons)
    (declare-function all-the-icons-material 'all-the-icons)
    (declare-function all-the-icons-octicon 'all-the-icons)
    (setq company-box-icons-all-the-icons
	  `((Unknown . ,(all-the-icons-material "find_in_page" :height 0.65 :v-adjust -0.15 :face 'font-lock-warning-face))
	    (Text . ,(all-the-icons-faicon "book" :height 0.68 :v-adjust -0.15))
	    (Method . ,(all-the-icons-faicon "cube" :height 0.7 :v-adjust -0.05 :face 'font-lock-constant-face))
	    (Function . ,(all-the-icons-faicon "cube" :height 0.7 :v-adjust -0.05 :face 'font-lock-constant-face))
	    (Constructor . ,(all-the-icons-faicon "cube" :height 0.7 :v-adjust -0.05 :face 'font-lock-constant-face))
	    (Field . ,(all-the-icons-faicon "tags" :height 0.65 :v-adjust -0.15 :face 'font-lock-warning-face))
	    (Variable . ,(all-the-icons-faicon "tag" :height 0.7 :v-adjust -0.05 :face 'font-lock-warning-face))
	    (Class . ,(all-the-icons-faicon "clone" :height 0.65 :v-adjust 0.01 :face 'font-lock-constant-face))
	    (Interface . ,(all-the-icons-faicon "clone" :height 0.65 :v-adjust 0.01))
	    (Module . ,(all-the-icons-octicon "package" :height 0.7 :v-adjust -0.15))
	    (Property . ,(all-the-icons-octicon "package" :height 0.7 :v-adjust -0.05 :face 'font-lock-warning-face)) ;; Golang module
	    (Unit . ,(all-the-icons-material "settings_system_daydream" :height 0.7 :v-adjust -0.15))
	    (Value . ,(all-the-icons-material "format_align_right" :height 0.7 :v-adjust -0.15 :face 'font-lock-constant-face))
	    (Enum . ,(all-the-icons-material "storage" :height 0.7 :v-adjust -0.15 :face 'all-the-icons-orange))
	    (Keyword . ,(all-the-icons-material "filter_center_focus" :height 0.7 :v-adjust -0.15))
	    (Snippet . ,(all-the-icons-faicon "code" :height 0.7 :v-adjust 0.02 :face 'font-lock-variable-name-face))
	    (Color . ,(all-the-icons-material "palette" :height 0.7 :v-adjust -0.15))
	    (File . ,(all-the-icons-faicon "file-o" :height 0.7 :v-adjust -0.05))
	    (Reference . ,(all-the-icons-material "collections_bookmark" :height 0.7 :v-adjust -0.15))
	    (Folder . ,(all-the-icons-octicon "file-directory" :height 0.7 :v-adjust -0.05))
	    (EnumMember . ,(all-the-icons-material "format_align_right" :height 0.7 :v-adjust -0.15 :face 'all-the-icons-blueb))
	    (Constant . ,(all-the-icons-faicon "tag" :height 0.7 :v-adjust -0.05))
	    (Struct . ,(all-the-icons-faicon "clone" :height 0.65 :v-adjust 0.01 :face 'font-lock-constant-face))
	    (Event . ,(all-the-icons-faicon "bolt" :height 0.7 :v-adjust -0.05 :face 'all-the-icons-orange))
	    (Operator . ,(all-the-icons-fileicon "typedoc" :height 0.65 :v-adjust 0.05))
	    (TypeParameter . ,(all-the-icons-faicon "hashtag" :height 0.65 :v-adjust 0.07 :face 'font-lock-const-face))
	    (Template . ,(all-the-icons-faicon "code" :height 0.7 :v-adjust 0.02 :face 'font-lock-variable-name-face)))))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; python auto-complete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lsp--sort-completions (completions)
  (lsp-completion--sort-completions completions))

(defun lsp--annotate (item)
  (lsp-completion--annotate item))

(defun lsp--resolve-completion (item)
  (lsp-completion--resolve item))
