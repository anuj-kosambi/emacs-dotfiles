;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Prettier & Highlight
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (use-package prettier-js
;;   :ensure t)

(use-package tree-sitter
  :ensure t)
(use-package tree-sitter-langs
  :ensure t)

(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Javascript/Typescript
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package web-mode
  :ensure t
  :mode (("\\.js$" . web-mode)
	 ("\\.jsx$" . web-mode))
  :hook (web-mode . lsp-deferred)
  :init
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-auto-expanding t)
  (setq web-mode-enable-css-colorization t)
  (add-hook 'web-mode-hook 'electric-pair-mode))

;; (add-hook 'web-mode-hook 'prettier-js-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Typescript
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package typescript-mode
  :ensure t
  :mode "\\.[jt]s.$"
  :hook (typescript-mode . lsp-deferred)
  :config)

(add-hook 'typescript-mode-hook #'tree-sitter-hl-mode)
;; (add-hook 'typescript-mode-hook 'prettier-js-mode)

(add-to-list 'auto-mode-alist '("\\.js" . web-mode)) ;; auto-enable for .js/.jsx files
(add-to-list 'auto-mode-alist '("\\.jsx" . web-mode)) ;; auto-enable for .js/.jsx files

(setq web-mode-content-types-alist
      '(("jsx" . "\\.js\\'")))

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
	ad-do-it)
    ad-do-it))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         ;; (before-save . tide-format-before-save)
	 ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Style
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package lsp-tailwindcss
  :ensure t)

(use-package json-mode
  :ensure t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Graphql
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package request
  :ensure t)

(setq graphql-variables-file '"/home/anujkosambi/.emacs.d/.graphql.variables")

(use-package graphql-mode
  :ensure t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Lsp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package lsp-mode
  :commands lsp
  :custom
  (lsp-auto-guess-root t)
  (lsp-keymap-prefix "M-m l")
  (lsp-modeline-diagnostics-enable nil)
  (lsp-keep-workspace-alive nil)
  (lsp-auto-execute-action nil)
  (lsp-before-save-edits nil)
  (lsp-eldoc-enable-hover nil)
  (lsp-diagnostic-package :none)
  (lsp-completion-provider :none)
  (lsp-file-watch-threshold 1500)  ; pyright has more than 1000
  (lsp-enable-links nil)

  ;; Maybe set in future:
  ;;(lsp-enable-on-type-formatting nil)
  :hook
  (lsp-mode . lsp-enable-which-key-integration))

(use-package lsp
  :ensure lsp-mode
  :config
  ;;(require 'lsp-clients)
  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
  (add-hook 'lsp-after-open-hook 'lsp-headerline-breadcrumb-mode)
  :init
  (setq lsp-idle-delay 0.500)
  ;;(setq lsp-enable-file-watchers nil)
  (setq lsp-print-performance t)
  (setq lsp-log-io nil)
  (setq lsp-completion-provider :capf)
  (setq lsp-eldoc-render-all nil))

(setq read-process-output-max (* 1024 1024)) ; 1mb

(use-package lsp-ui
  :ensure t
  :after lsp-mode
  :custom
  (lsp-ui-doc-position 'top)
  (lsp-ui-sideline-delay 0.5)
  (lsp-ui-doc-delay 5)
  (lsp-ui-peek-always-show t)
  (lsp-ui-peek-fontify 'always)
  :custom-face
  (lsp-ui-peek-highlight ((t (:inherit nil :background nil :foreground nil :weight semi-bold :box (:line-width -1)))))
  :bind
  ([remap xref-find-references] . lsp-ui-peek-find-references)
  ("M-b" . lsp-ui-peek-find-definitions)
  :config
  ;;;; LSP UI posframe ;;;;
  )
(add-hook 'typescript-mode-hook #'lsp-deferred)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Java
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package lsp-java
  :ensure t
  :after lsp
  :config (add-hook 'java-mode-hook 'lsp))

(setq lsp-java-vmargs
      (list
       "-noverify"
       "-Xmx1G"
       "-XX:+UseG1GC"
       "-XX:+UseStringDeduplication")
      lsp-file-watch-ignored
      '(".idea" ".ensime_cache" ".eunit" "node_modules"
        ".git" ".hg" ".fslckout" "_FOSSIL_"
        ".bzr" "_darcs" ".tox" ".svn" ".stack-work"
        "build")
      lsp-java-import-order '["" "java" "javax" "#"]
      ;; Don't organize imports on save
      lsp-java-save-action-organize-imports nil)

(setq lsp-java-configuration-check-project-settings-exclusions nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t)
  :hook (python-mode . (lambda ()
                         (require 'lsp-python-ms)
			 (setq python-indent-offset 2)
                         (lsp-deferred))))

;; (use-package elpy
;;   :ensure t
;;   :defer t
;;   :init
;;   (advice-add 'python-mode :before 'elpy-enable))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Snippets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package yasnippet
  :commands (yas-minor-mode) ; autoload `yasnippet' when `yas-minor-mode' is called
                                        ; using any means: via a hook or by user
                                        ; Feel free to add more commands to this
                                        ; list to suit your needs.
  :init ; stuff to do before requiring the package
  (progn
    (add-hook 'python-mode-hook #'yas-minor-mode))
  :config ; stuff to do after requiring the package
  (progn
    (yas-reload-all)))


(use-package yasnippet-radical-snippets
  :ensure t
  :after yasnippet
  :config
  (yasnippet-radical-snippets-initialize))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package go-mode
  :ensure t)
(add-hook 'go-mode-hook 'lsp-deferred)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Go
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Go - lsp-mode
;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Start LSP Mode and YASnippet mode
(add-hook 'go-mode-hook #'lsp-deferred)
(add-hook 'go-mode-hook #'yas-minor-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Docker
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package dockerfile-mode
  :ensure t
  :mode "[\\.]Dockerfile")
(use-package lsp-docker
  :ensure t)
(use-package docker-compose-mode
  :ensure t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MDX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))


(use-package poly-markdown
  :ensure t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto-format
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package format-all
  :ensure t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Protocol buff
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package protobuf-mode
  :ensure t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Flycheck
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package exec-path-from-shell
  :ensure t
  :custom
  (exec-path-from-shell-check-startup-files nil)
  :config
  (push "HISTFILE" exec-path-from-shell-variables)
  (exec-path-from-shell-initialize))

;; Make sure the local node_modules/.bin/ can be found (for eslint)
;; https://github.com/codesuki/add-node-modules-path
(use-package add-node-modules-path
  :ensure t
  :config
  ;; automatically run the function when web-mode starts
  (eval-after-load 'typescript-mode
    '(add-hook 'typescript-mode-hook 'add-node-modules-path)))
;;
(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode)
  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(javascript-jshint)))
  ;; use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'typescript-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Terraform
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package terraform-mode
  :ensure t
  :config
  (custom-set-variables
   '(terraform-indent-level 4)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package bazel
  :ensure t
  :config
  )
