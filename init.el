
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq gc-cons-threshold 100000000)

(load-file (concat (file-name-directory load-file-name)
		   "config/core.el"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   '("1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "3df5335c36b40e417fec0392532c1b82b79114a05d5ade62cfe3de63a59bc5c6" "773e0bfa5450c75d613cbf29734cdc876c3d59dbf85b93cff3015a8687dea158" "afd761c9b0f52ac19764b99d7a4d871fc329f7392dfc6cd29710e8209c691477" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "2035a16494e06636134de6d572ec47c30e26c3447eafeb6d3a9e8aee73732396" "8a379e7ac3a57e64de672dd744d4730b3bdb88ae328e8106f95cd81cbd44e0b6" "ba913d12adb68e9dadf1f43e6afa8e46c4822bb96a289d5bf1204344064f041e" "5111a41453244802afd93eed1a434e612a8afbdf19c52384dffab129258bab6e" "3899c0f0c9fa57ace9760821780dfe74b7b43de2ebf1938ff7aa21542461c487" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" "42ec9eaa86da5f052feed0e35b578681015b9e21ab7b5377a5a34ea9a0a9e1b9" "a37d20710ab581792b7c9f8a075fcbb775d4ffa6c8bce9137c84951b1b453016" "4a201d19d8f7864e930fbb67e5c2029b558d26a658be1313b19b8958fe451b55" "0b0d189e2393d17e30d5101ba53f6798712a415b26de4f164b3fc878f54a5521" "1f6039038366e50129643d6a0dc67d1c34c70cdbe998e8c30dc4c6889ea7e3db" "7c20c453ad5413b110ccc3bb5df07d69999d741d29b1f894bd691f52b4abdd31" "776c1ab52648f98893a2aa35af2afc43b8c11dd3194a052e0b2502acca02bfce" "9e39a8334e0e476157bfdb8e42e1cea43fad02c9ec7c0dbd5498cf02b9adeaf1" "5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" "8b58ef2d23b6d164988a607ee153fd2fa35ee33efc394281b1028c2797ddeebb" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "b7133876a11eb2ded01b4b144b45d9e7457f80dd5900c332241881ab261c50f4" "0cd00c17f9c1f408343ac77237efca1e4e335b84406e05221126a6ee7da28971" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "f4c8f0b999a6407211a899401315a628e1a5ae2f408c04a33b14d7aa3ed86187" "edb73be436e0643727f15ebee8ad107e899ea60a3a70020dfa68ae00b0349a87" "d916b686ba9f23a46ee9620c967f6039ca4ea0e682c1b9219450acee80e10e40" "6084dce7da6b7447dcb9f93a981284dc823bab54f801ebf8a8e362a5332d2753" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "409e4d689f1e29e5a18f536507e6dc760ee9da76dc56481aaa0696705e6be968" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "d5a878172795c45441efcd84b20a14f553e7e96366a163f742b95d65a3f55d71" "5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "cae81b048b8bccb7308cdcb4a91e085b3c959401e74a0f125e7c5b173b916bf9" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "7ffb0d3d0c797b980ed7330adc04a66516d49a61e4187a7054dda014676421d9" "b462d00de785490a0b6861807a360f5c1e05b48a159a99786145de7e3cce3afe" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "bc75dfb513af404a26260b3420d1f3e4131df752c19ab2984a7c85def9a2917e" "001c2ff8afde9c3e707a2eb3e810a0a36fb2b466e96377ac95968e7f8930a7c5" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "f589e634c9ff738341823a5a58fc200341b440611aaa8e0189df85b44533692b" "a2286409934b11f2f3b7d89b1eaebb965fd63bc1e0be1c159c02e396afb893c8" "cdb3e7a8864cede434b168c9a060bf853eeb5b3f9f758310d2a2e23be41a24ae" "e7666261f46e2f4f42fd1f9aa1875bdb81d17cc7a121533cad3e0d724f12faf2" "d6f04b6c269500d8a38f3fabadc1caa3c8fdf46e7e63ee15605af75a09d5441e" "3952ef318c8cbccf09954ecf43250ac0cbd1f4ae66b4abe569491b260f6e054b" "f951343d4bbe5a90dba0f058de8317ca58a6822faa65d8463b0e751a07ec887c" "1728dfd9560bff76a7dc6c3f61e9f4d3e6ef9d017a83a841c117bd9bebe18613" "f30aded97e67a487d30f38a1ac48eddb49fdb06ac01ebeaff39439997cbdd869" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" default))
 '(display-time-mode t)
 '(global-ede-mode t)
 '(global-reveal-mode t)
 '(global-tab-line-mode nil)
 '(ivy-rich-mode t)
 '(ivy-use-virtual-buffers t)
 '(ivy-virtual-abbreviate 'full)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(vertico graphviz-dot-mode babel-repl popper slime-volleyball pacmacs markdown-preview-mode markdown-preview-eww nginx-mode kubernetes counsel-tramp kubernetes-tramp lsp-java format-all kubectx-mode fzf makefile-executor python-docstring try tramp-term treemacs-all-the-icons selectrum helm treemacs lambdapi-mode treemacs-magit ivy-youtube ewal-doom-themes constant-theme all-the-icons-dired terraform-mode autothemer warm-night-theme immaterial-theme almost-mono-themes srcery-theme git-timemachine nlinum dracula-theme dashboard-hackernews dashboard tss color-theme-sanityinc-tomorrow hc-zenburn-theme subatomic256 subatomic245 sweet-theme monokai-pro-theme monokai-theme ample-zen-theme add-node-modules-path material-theme lsp-ui tide rjsx-mode eglot intellij-theme vterm tree-sitter-live auto-complete lsp protobuf-mode hl-line-mode js2-mode avy-goto-char evil-mc evil-multicursor prettier ag exwm poly-markdown markdown-mode+ dockerfile-mode docker-mode lsp-docker tree-sitter-langs tree-sitter company-capf go-mode xwwp blacken git-gutter magit flycheck company-try-hard company-fuzzy lsp-ivy highlight-indent-guides editorconfig exec-path-from-shell undo-tree yasnippet web-mode use-package lsp-mode ivy-rich counsel-projectile))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(terraform-indent-level 4)
 '(tool-bar-mode nil)
 '(treemacs-tag-follow-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :foreground "#c7c9cb" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 98 :width normal :foundry "CTDB" :family "Fira Code"))))
 '(highlight ((t (:background "indian red" :foreground "#1b1d1e"))))
 '(ivy-current-match ((t (:extend t :background "#000022"))))
 '(ivy-posframe ((t (:background "#292929"))))
 '(ivy-posframe-border ((t nil)))
 '(link ((t (:foreground "indian red" :underline t :weight bold))))
 '(lsp-ui-peek-highlight ((t (:inherit nil :background nil :foreground nil :weight semi-bold :box (:line-width -1)))))
 '(region ((t (:extend t :background "#000022")))))


(set-keyboard-coding-system nil)
