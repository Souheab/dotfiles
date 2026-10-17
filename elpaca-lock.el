((ace-window :source "elpaca-menu-lock-file" :recipe
             (:package "ace-window" :repo "abo-abo/ace-window"
                       :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth treeless :ref
                       "77115afc1b0b9f633084cf7479c767988106c196"))
 (all-the-icons :source "elpaca-menu-lock-file" :recipe
                (:package "all-the-icons" :repo
                          "domtronn/all-the-icons.el" :fetcher github
                          :files (:defaults "data") :source "MELPA"
                          :protocol https :inherit t :depth treeless
                          :ref
                          "4778632b29c8c8d2b7cd9ce69535d0be01d846f9"))
 (all-the-icons-dired :source "elpaca-menu-lock-file" :recipe
                      (:package "all-the-icons-dired" :repo
                                "wyuenho/all-the-icons-dired" :fetcher
                                github :files
                                ("*.el" "*.el.in" "dir" "*.info"
                                 "*.texi" "*.texinfo" "doc/dir"
                                 "doc/*.info" "doc/*.texi"
                                 "doc/*.texinfo" "lisp/*.el"
                                 "docs/dir" "docs/*.info"
                                 "docs/*.texi" "docs/*.texinfo"
                                 (:exclude ".dir-locals.el" "test.el"
                                           "tests.el" "*-test.el"
                                           "*-tests.el" "LICENSE"
                                           "README*" "*-pkg.el"))
                                :source "MELPA" :protocol https
                                :inherit t :depth treeless :ref
                                "e157f0668f22ed586aebe0a2c0186ab07702986c"))
 (annalist :source "elpaca-menu-lock-file" :recipe
           (:package "annalist" :fetcher github :repo
                     "noctuid/annalist.el" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el" "docs/dir"
                      "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     treeless :ref
                     "e1ef5dad75fa502d761f70d9ddf1aeb1c423f41d"))
 (avy :source "elpaca-menu-lock-file" :recipe
      (:package "avy" :repo "abo-abo/avy" :fetcher github :files
                ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                 "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                 "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
                 "docs/*.texinfo"
                 (:exclude ".dir-locals.el" "test.el" "tests.el"
                           "*-test.el" "*-tests.el" "LICENSE"
                           "README*" "*-pkg.el"))
                :source "MELPA" :protocol https :inherit t :depth
                treeless :ref
                "933d1f36cca0f71e4acb5fac707e9ae26c536264"))
 (command-log-mode :source "elpaca-menu-lock-file" :recipe
                   (:package "command-log-mode" :fetcher github :repo
                             "lewang/command-log-mode" :files
                             ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                              "*.texinfo" "doc/dir" "doc/*.info"
                              "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                              "docs/dir" "docs/*.info" "docs/*.texi"
                              "docs/*.texinfo"
                              (:exclude ".dir-locals.el" "test.el"
                                        "tests.el" "*-test.el"
                                        "*-tests.el" "LICENSE"
                                        "README*" "*-pkg.el"))
                             :source "MELPA" :protocol https :inherit
                             t :depth treeless :ref
                             "af600e6b4129c8115f464af576505ea8e789db27"))
 (cond-let
   :source "elpaca-menu-lock-file" :recipe
   (:package "cond-let" :fetcher github :repo "tarsius/cond-let"
             :files
             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
              "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
              "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
              "docs/*.texinfo"
              (:exclude ".dir-locals.el" "test.el" "tests.el"
                        "*-test.el" "*-tests.el" "LICENSE" "README*"
                        "*-pkg.el"))
             :source "MELPA" :protocol https :inherit t :depth
             treeless :ref "09292a77001434f59ab55c775dec2b98cb18d028"))
 (consult :source "elpaca-menu-lock-file" :recipe
          (:package "consult" :repo "minad/consult" :fetcher github
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    treeless :ref
                    "c2caf93d597ea57db86c0cbf7ff50114a57d74f6"))
 (dash :source "elpaca-menu-lock-file" :recipe
       (:package "dash" :fetcher github :repo "magnars/dash.el" :files
                 ("dash.el" "dash.texi") :source "MELPA" :protocol
                 https :inherit t :depth treeless :ref
                 "fb443e7a6e660ba849cafcd01021d9aac3ac6764"))
 (dashboard :source "elpaca-menu-lock-file" :recipe
            (:package "dashboard" :fetcher github :repo
                      "emacs-dashboard/emacs-dashboard" :files
                      (:defaults "banners") :source "MELPA" :protocol
                      https :inherit t :depth treeless :ref
                      "9390972a5568a54e6a75e2c1c34e64182d79992d"))
 (doom-modeline :source "elpaca-menu-lock-file" :recipe
                (:package "doom-modeline" :repo
                          "seagle0128/doom-modeline" :fetcher github
                          :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           "docs/dir" "docs/*.info" "docs/*.texi"
                           "docs/*.texinfo"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth treeless :ref
                          "ef1ad8fe52226f52f4995de982759a8fd809c7a2"))
 (doom-themes :source "elpaca-menu-lock-file" :recipe
              (:package "doom-themes" :fetcher github :repo
                        "doomemacs/themes" :files
                        (:defaults "themes/*.el" "themes/*/*.el"
                                   "extensions/*.el")
                        :source "MELPA" :protocol https :inherit t
                        :depth treeless :ref
                        "376cf4bdd7d296a3da94aa9a6c68761e7c38a252"))
 (elisp-demos :source "elpaca-menu-lock-file" :recipe
              (:package "elisp-demos" :fetcher github :repo
                        "xuchunyang/elisp-demos" :files
                        (:defaults "*.org") :source "MELPA" :protocol
                        https :inherit t :depth treeless :ref
                        "1a108d1c5011f9ced58be2ca98bea1fbd4130a2f"))
 (elisp-refs :source "elpaca-menu-lock-file" :recipe
             (:package "elisp-refs" :repo "Wilfred/elisp-refs"
                       :fetcher github :files
                       (:defaults (:exclude "elisp-refs-bench.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth treeless :ref
                       "541a064c3ce27867872cf708354a65d83baf2a6d"))
 (elpaca :source
   "elpaca-menu-lock-file" :recipe
   (:source nil :protocol https :inherit ignore :depth 1 :repo
            "https://github.com/progfolio/elpaca.git" :ref
            "b5ef5f19ac1224853234c9acdac0ec9ea1c440a1" :files
            (:defaults "elpaca-test.el" (:exclude "extensions"))
            :build (:not elpaca--activate-package) :package "elpaca"))
 (elpaca-use-package :source "elpaca-menu-lock-file" :recipe
                     (:package "elpaca-use-package" :wait t :repo
                               "https://github.com/progfolio/elpaca.git"
                               :files
                               ("extensions/elpaca-use-package.el")
                               :main
                               "extensions/elpaca-use-package.el"
                               :build (:not elpaca--compile-info)
                               :source "Elpaca extensions" :protocol
                               https :inherit t :depth treeless :ref
                               "b5ef5f19ac1224853234c9acdac0ec9ea1c440a1"))
 (emacsql :source "elpaca-menu-lock-file" :recipe
          (:package "emacsql" :fetcher github :repo "magit/emacsql"
                    :files (:defaults "README.md" "sqlite") :source
                    "MELPA" :protocol https :inherit t :depth treeless
                    :ref "e1908de2cf2c7b77798ef6645d514dded1d7f8a4"))
 (eros :source "elpaca-menu-lock-file" :recipe
       (:package "eros" :fetcher github :repo "xiongtx/eros" :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
                  "docs/*.texinfo"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth
                 treeless :ref
                 "a9a92bdc6be0521a6a06eb464be55ed61946639c"))
 (evil :source "elpaca-menu-lock-file" :recipe
       (:package "evil" :repo "emacs-evil/evil" :fetcher github :files
                 (:defaults "doc/build/texinfo/evil.texi"
                            (:exclude "evil-test-helpers.el"))
                 :source "MELPA" :protocol https :inherit t :depth
                 treeless :ref
                 "729d9a58b387704011a115c9200614e32da3cefc"))
 (evil-collection :source "elpaca-menu-lock-file" :recipe
                  (:package "evil-collection" :fetcher github :repo
                            "emacs-evil/evil-collection" :files
                            (:defaults "modes") :source "MELPA"
                            :protocol https :inherit t :depth treeless
                            :ref
                            "bb5eb2ae1e77f87979571d4ad3357f38e932dfb5"))
 (evil-nerd-commenter :source "elpaca-menu-lock-file" :recipe
                      (:package "evil-nerd-commenter" :fetcher github
                                :repo
                                "redguardtoo/evil-nerd-commenter"
                                :files
                                ("*.el" "*.el.in" "dir" "*.info"
                                 "*.texi" "*.texinfo" "doc/dir"
                                 "doc/*.info" "doc/*.texi"
                                 "doc/*.texinfo" "lisp/*.el"
                                 "docs/dir" "docs/*.info"
                                 "docs/*.texi" "docs/*.texinfo"
                                 (:exclude ".dir-locals.el" "test.el"
                                           "tests.el" "*-test.el"
                                           "*-tests.el" "LICENSE"
                                           "README*" "*-pkg.el"))
                                :source "MELPA" :protocol https
                                :inherit t :depth treeless :ref
                                "ae52c5070a48793e2c24474c9c8dbf20175d18a0"))
 (evil-org :source "elpaca-menu-lock-file" :recipe
           (:package "evil-org" :fetcher github :repo
                     "Somelauw/evil-org-mode" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el" "docs/dir"
                      "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     treeless :ref
                     "b1f309726b1326e1a103742524ec331789f2bf94"))
 (evil-snipe :source "elpaca-menu-lock-file" :recipe
             (:package "evil-snipe" :repo "hlissner/evil-snipe"
                       :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth treeless :ref
                       "16317d7e54313490a0fe8642ed9a1a72498e7ad2"))
 (evil-surround :source "elpaca-menu-lock-file" :recipe
                (:package "evil-surround" :repo
                          "emacs-evil/evil-surround" :fetcher github
                          :old-names (surround) :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           "docs/dir" "docs/*.info" "docs/*.texi"
                           "docs/*.texinfo"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth treeless :ref
                          "da05c60b0621cf33161bb4335153f75ff5c29d91"))
 (f :source "elpaca-menu-lock-file" :recipe
    (:package "f" :fetcher github :repo "rejeep/f.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
               "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
               "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
               "docs/*.texinfo"
               (:exclude ".dir-locals.el" "test.el" "tests.el"
                         "*-test.el" "*-tests.el" "LICENSE" "README*"
                         "*-pkg.el"))
              :source "MELPA" :protocol https :inherit t :depth
              treeless :ref "931b6d0667fe03e7bf1c6c282d6d8d7006143c52"))
 (general :source "elpaca-menu-lock-file" :recipe
          (:package "general" :fetcher github :repo
                    "noctuid/general.el" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    treeless :wait t :ref
                    "a48768f85a655fe77b5f45c2880b420da1b1b9c3"))
 (git-gutter :source "elpaca-menu-lock-file" :recipe
             (:package "git-gutter" :repo "emacsorphanage/git-gutter"
                       :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth treeless :ref
                       "101b1e29ec4f4609b29a17877990f95993452188"))
 (goto-chg :source "elpaca-menu-lock-file" :recipe
           (:package "goto-chg" :repo "emacs-evil/goto-chg" :fetcher
                     github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el" "docs/dir"
                      "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     treeless :ref
                     "72f556524b88e9d30dc7fc5b0dc32078c166fda7"))
 (helpful :source "elpaca-menu-lock-file" :recipe
          (:package "helpful" :repo "Wilfred/helpful" :fetcher github
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    treeless :ref
                    "03756fa6ad4dcca5e0920622b1ee3f70abfc4e39"))
 (highlight-indent-guides :source "elpaca-menu-lock-file" :recipe
                          (:package "highlight-indent-guides" :fetcher
                                    github :repo
                                    "DarthFennec/highlight-indent-guides"
                                    :files
                                    ("*.el" "*.el.in" "dir" "*.info"
                                     "*.texi" "*.texinfo" "doc/dir"
                                     "doc/*.info" "doc/*.texi"
                                     "doc/*.texinfo" "lisp/*.el"
                                     "docs/dir" "docs/*.info"
                                     "docs/*.texi" "docs/*.texinfo"
                                     (:exclude ".dir-locals.el"
                                               "test.el" "tests.el"
                                               "*-test.el"
                                               "*-tests.el" "LICENSE"
                                               "README*" "*-pkg.el"))
                                    :source "MELPA" :protocol https
                                    :inherit t :depth treeless :ref
                                    "d05c63f395329c6e331e0b44c7db708005b3316f"))
 (hl-todo :source "elpaca-menu-lock-file" :recipe
          (:package "hl-todo" :repo "tarsius/hl-todo" :fetcher github
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    treeless :ref
                    "94893087e0aca6642a3ebf11f46b3d5f47c1eb22"))
 (kbd-mode :source "elpaca-menu-lock-file" :recipe
           (:source nil :protocol https :inherit t :depth treeless
                    :host github :repo "kmonad/kbd-mode" :package
                    "kbd-mode" :ref
                    "f8951b2efc5c29954b0105a9e57e973515125b0d"))
 (langtool :source "elpaca-menu-lock-file" :recipe
           (:package "langtool" :fetcher github :repo
                     "mhayashi1120/Emacs-langtool" :files
                     ("langtool.el") :source "MELPA" :protocol https
                     :inherit t :depth treeless :ref
                     "6605f26f56b7da1499a32885236c02a40b0b0e31"))
 (ligature :source "elpaca-menu-lock-file" :recipe
           (:package "ligature" :fetcher github :repo
                     "mickeynp/ligature.el" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el" "docs/dir"
                      "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     treeless :ref
                     "6ac1634612dbd42f7eb81ecaf022bd239aabb954"))
 (llama :source "elpaca-menu-lock-file" :recipe
        (:package "llama" :fetcher github :repo "tarsius/llama" :files
                  ("llama.el" ".dir-locals.el") :source "MELPA"
                  :protocol https :inherit t :depth treeless :ref
                  "6850d0c91b629da14fdff2300c222289d1a0029a"))
 (magit-section :source "elpaca-menu-lock-file" :recipe
                (:package "magit-section" :fetcher github :repo
                          "magit/magit" :files
                          ("lisp/magit-section.el"
                           "docs/magit-section.texi"
                           "magit-section-pkg.el")
                          :source "MELPA" :protocol https :inherit t
                          :depth treeless :ref
                          "830b1932ed92951715ff12eb894d3dcf4dca0fce"))
 (marginalia :source "elpaca-menu-lock-file" :recipe
             (:package "marginalia" :repo "minad/marginalia" :fetcher
                       github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth treeless :ref
                       "f4058af89839566495d6037d35489da6eee45250"))
 (markdown-mode :source "elpaca-menu-lock-file" :recipe
                (:package "markdown-mode" :fetcher github :repo
                          "jrblevin/markdown-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           "docs/dir" "docs/*.info" "docs/*.texi"
                           "docs/*.texinfo"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth treeless :ref
                          "b524618c3ed28906a7522482727f121428ce7e2e"))
 (mixed-pitch :source "elpaca-menu-lock-file" :recipe
              (:package "mixed-pitch" :fetcher gitlab :repo
                        "jabranham/mixed-pitch" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         "docs/dir" "docs/*.info" "docs/*.texi"
                         "docs/*.texinfo"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth treeless :ref
                        "519e05f74825abf04b7d2e0e38ec040d013a125a"))
 (neotree :source "elpaca-menu-lock-file" :recipe
          (:package "neotree" :repo "jaypei/emacs-neotree" :fetcher
                    github :files (:defaults "icons") :source "MELPA"
                    :protocol https :inherit t :depth treeless :ref
                    "3178805a0942696d1e5162575d9cab43d14b7970"))
 (nerd-icons :source "elpaca-menu-lock-file" :recipe
             (:package "nerd-icons" :repo
                       "rainstormstudio/nerd-icons.el" :fetcher github
                       :files (:defaults "data") :source "MELPA"
                       :protocol https :inherit t :depth treeless :ref
                       "940b28d3dbd134696ef448e906e42a87a9d61e20"))
 (orderless :source "elpaca-menu-lock-file" :recipe
            (:package "orderless" :repo "oantolin/orderless" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el" "docs/dir"
                       "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth treeless :ref
                      "9cf1c90e2501566ceba59f3220b4630995004efd"))
 (org :source "elpaca-menu-lock-file" :recipe
      (:package "org" :pre-build
                (progn
                  (require 'elpaca-menu-org)
                  (setq elpaca-menu-org-make-manual t)
                  (elpaca-menu-org--build))
                :host github :repo "emacsmirror/org" :autoloads
                "org-loaddefs.el" :depth treeless :build
                (:not elpaca--generate-autoloads-async) :files
                (:defaults ("etc/styles/" "etc/styles/*" "doc/*.texi"))
                :source "Org" :protocol https :inherit t :wait t :ref
                "67906ac56b9475a3ef5addaab1e4a3033f3c963b"))
 (org-fragtog :source "elpaca-menu-lock-file" :recipe
              (:package "org-fragtog" :fetcher github :repo
                        "io12/org-fragtog" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         "docs/dir" "docs/*.info" "docs/*.texi"
                         "docs/*.texinfo"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth treeless :ref
                        "562f6590843eeab30ac8aa2ced285aff8d590861"))
 (org-modern :source "elpaca-menu-lock-file" :recipe
             (:package "org-modern" :repo "minad/org-modern" :fetcher
                       github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth treeless :ref
                       "8829e48aabd289f970d39875f40915526f3423f2"))
 (org-roam :source "elpaca-menu-lock-file" :recipe
           (:package "org-roam" :fetcher github :repo
                     "org-roam/org-roam" :files
                     (:defaults "extensions/*") :source "MELPA"
                     :protocol https :inherit t :depth treeless :ref
                     "6abb3bdc5a4491bbfa01d1f10d9ddb4fd4626887"))
 (org-roam-ui :source "elpaca-menu-lock-file" :recipe
              (:package "org-roam-ui" :fetcher github :repo
                        "org-roam/org-roam-ui" :files
                        (:defaults "out") :source "MELPA" :protocol
                        https :inherit t :depth treeless :ref
                        "5ac74960231db0bf7783c2ba7a19a60f582e91ab"))
 (org-superstar :source "elpaca-menu-lock-file" :recipe
                (:package "org-superstar" :fetcher github :repo
                          "integral-dw/org-superstar-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           "docs/dir" "docs/*.info" "docs/*.texi"
                           "docs/*.texinfo"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth treeless :ref
                          "ce6f7f421f995893f72d75ffdfa92964b9bea2e3"))
 (popper :source "elpaca-menu-lock-file" :recipe
         (:package "popper" :fetcher github :repo "karthink/popper"
                   :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                    "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                    "doc/*.texinfo" "lisp/*.el" "docs/dir"
                    "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE"
                              "README*" "*-pkg.el"))
                   :source "MELPA" :protocol https :inherit t :depth
                   treeless :ref
                   "49f4904480cf4ca5c6db83fcfa9e6ea8d4567d96"))
 (projectile :source "elpaca-menu-lock-file" :recipe
             (:package "projectile" :fetcher github :repo
                       "bbatsov/projectile" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth treeless :ref
                       "9325c45e0fd96d5421e75ad901a91ee5353e10ad"))
 (projectile-ripgrep :source "elpaca-menu-lock-file" :recipe
                     (:package "projectile-ripgrep" :repo
                               "nlamirault/ripgrep.el" :fetcher github
                               :files ("projectile-ripgrep.el")
                               :source "MELPA" :protocol https
                               :inherit t :depth treeless :ref
                               "b6bd5beb0c11348f1afd9486cbb451d0d2e3c45a"))
 (rainbow-delimiters :source "elpaca-menu-lock-file" :recipe
                     (:package "rainbow-delimiters" :fetcher github
                               :repo "Fanael/rainbow-delimiters"
                               :files
                               ("*.el" "*.el.in" "dir" "*.info"
                                "*.texi" "*.texinfo" "doc/dir"
                                "doc/*.info" "doc/*.texi"
                                "doc/*.texinfo" "lisp/*.el" "docs/dir"
                                "docs/*.info" "docs/*.texi"
                                "docs/*.texinfo"
                                (:exclude ".dir-locals.el" "test.el"
                                          "tests.el" "*-test.el"
                                          "*-tests.el" "LICENSE"
                                          "README*" "*-pkg.el"))
                               :source "MELPA" :protocol https
                               :inherit t :depth treeless :ref
                               "f40ece58df8b2f0fb6c8576b527755a552a5e763"))
 (ripgrep :source "elpaca-menu-lock-file" :recipe
          (:package "ripgrep" :repo "nlamirault/ripgrep.el" :fetcher
                    github :files ("ripgrep.el") :source "MELPA"
                    :protocol https :inherit t :depth treeless :ref
                    "b6bd5beb0c11348f1afd9486cbb451d0d2e3c45a"))
 (s :source "elpaca-menu-lock-file" :recipe
    (:package "s" :fetcher github :repo "magnars/s.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
               "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
               "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
               "docs/*.texinfo"
               (:exclude ".dir-locals.el" "test.el" "tests.el"
                         "*-test.el" "*-tests.el" "LICENSE" "README*"
                         "*-pkg.el"))
              :source "MELPA" :protocol https :inherit t :depth
              treeless :ref "dda84d38fffdaf0c9b12837b504b402af910d01d"))
 (shackle :source "elpaca-menu-lock-file" :recipe
          (:package "shackle" :fetcher git :url
                    "https://depp.brause.cc/shackle.git" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    treeless :ref
                    "ae25e7e0e593520c8590440fe5e3c0ea8053dc26"))
 (shrink-path :source "elpaca-menu-lock-file" :recipe
              (:package "shrink-path" :fetcher gitlab :repo
                        "bennya/shrink-path.el" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         "docs/dir" "docs/*.info" "docs/*.texi"
                         "docs/*.texinfo"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth treeless :ref
                        "c14882c8599aec79a6e8ef2d06454254bb3e1e41"))
 (simple-httpd :source "elpaca-menu-lock-file" :recipe
               (:package "simple-httpd" :repo
                         "skeeto/emacs-web-server" :fetcher github
                         :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          "docs/dir" "docs/*.info" "docs/*.texi"
                          "docs/*.texinfo"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :protocol https :inherit t
                         :depth treeless :ref
                         "3982c55e9061475038a3ccd61aecb2de3d407cec"))
 (solaire-mode :source "elpaca-menu-lock-file" :recipe
               (:package "solaire-mode" :repo
                         "hlissner/emacs-solaire-mode" :fetcher github
                         :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          "docs/dir" "docs/*.info" "docs/*.texi"
                          "docs/*.texinfo"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :protocol https :inherit t
                         :depth treeless :ref
                         "c9334666bd208f3322e6118d30eba1b2438e2bb9"))
 (undohist :source "elpaca-menu-lock-file" :recipe
           (:package "undohist" :fetcher github :repo
                     "emacsorphanage/undohist" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el" "docs/dir"
                      "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     treeless :ref
                     "37567110aba741a64772ce6b304c69f0bd1523ae"))
 (valign :source "elpaca-menu-lock-file" :recipe
         (:package "valign" :repo
                   ("https://github.com/casouri/valign" . "valign")
                   :files ("*" (:exclude ".git")) :source "GNU ELPA"
                   :protocol https :inherit t :depth treeless :ref
                   "be82f6048118cbc81e6e029be1965f933612d871"))
 (vertico :source "elpaca-menu-lock-file" :recipe
          (:package "vertico" :repo "minad/vertico" :files
                    (:defaults "extensions/vertico-*.el") :fetcher
                    github :source "MELPA" :protocol https :inherit t
                    :depth treeless :ref
                    "63a43e13805ca3bc06f9492323d66e238c5d0fea"))
 (visual-fill-column :source "elpaca-menu-lock-file" :recipe
                     (:package "visual-fill-column" :fetcher codeberg
                               :repo "joostkremers/visual-fill-column"
                               :files
                               ("*.el" "*.el.in" "dir" "*.info"
                                "*.texi" "*.texinfo" "doc/dir"
                                "doc/*.info" "doc/*.texi"
                                "doc/*.texinfo" "lisp/*.el" "docs/dir"
                                "docs/*.info" "docs/*.texi"
                                "docs/*.texinfo"
                                (:exclude ".dir-locals.el" "test.el"
                                          "tests.el" "*-test.el"
                                          "*-tests.el" "LICENSE"
                                          "README*" "*-pkg.el"))
                               :source "MELPA" :protocol https
                               :inherit t :depth treeless :ref
                               "e1be9a1545157d24454d950c0ac79553c540edb7"))
 (websocket :source "elpaca-menu-lock-file" :recipe
            (:package "websocket" :repo "ahyatt/emacs-websocket"
                      :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el" "docs/dir"
                       "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth treeless :ref
                      "40c208eaab99999d7c1e4bea883648da24c03be3"))
 (which-key :source "elpaca-menu-lock-file" :recipe
            (:package "which-key" :repo "justbur/emacs-which-key"
                      :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el" "docs/dir"
                       "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth treeless :wait t :ref
                      "38d4308d1143b61e4004b6e7a940686784e51500"))
 (writegood-mode :source "elpaca-menu-lock-file" :recipe
                 (:package "writegood-mode" :repo
                           "bnbeckwith/writegood-mode" :fetcher github
                           :files
                           ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                            "*.texinfo" "doc/dir" "doc/*.info"
                            "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                            "docs/dir" "docs/*.info" "docs/*.texi"
                            "docs/*.texinfo"
                            (:exclude ".dir-locals.el" "test.el"
                                      "tests.el" "*-test.el"
                                      "*-tests.el" "LICENSE" "README*"
                                      "*-pkg.el"))
                           :source "MELPA" :protocol https :inherit t
                           :depth treeless :ref
                           "d54eadeedb8bf3aa0e0a584c0a7373c69644f4b8"))
 (magit :source "elpaca-menu-lock-file" :recipe
       (:package "magit" :fetcher github :repo "magit/magit" :files
		 ("lisp/magit*.el" "lisp/git-*.el" "docs/magit.texi"
		  "docs/AUTHORS.md" "LICENSE" ".dir-locals.el"
		  ("githooks" "githooks/*")
		  ("git-hooks" "git-hooks/*")
		  (:exclude "lisp/magit-section.el"))
		 :source "MELPA" :id magit :type git :protocol https
		 :inherit t :depth treeless :ref
		 "830b1932ed92951715ff12eb894d3dcf4dca0fce"))
 (with-editor :source "elpaca-menu-lock-file" :recipe
	     (:package "with-editor" :fetcher github :repo
		       "magit/with-editor" :files
		       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
			"*.texinfo" "doc/dir" "doc/*.info"
			"doc/*.texi" "doc/*.texinfo" "lisp/*.el"
			"docs/dir" "docs/*.info" "docs/*.texi"
			"docs/*.texinfo"
			(:exclude ".dir-locals.el" "test.el"
				  "tests.el" "*-test.el" "*-tests.el"
				  "LICENSE" "README*" "*-pkg.el"))
		       :source "MELPA" :id with-editor :type git
		       :protocol https :inherit t :depth treeless :ref
		       "3c390146741be401ff2e78e337707efd4bdec506"))
 (corfu :source "elpaca-menu-lock-file" :recipe
       (:package "corfu" :repo "minad/corfu" :files
		 (:defaults "extensions/corfu-*.el") :fetcher github
		 :source "MELPA" :id corfu :type git :protocol https
		 :inherit t :depth treeless :ref
		 "9c2bf9add6c182ae524eb378d0d0f45ecc805eef"))
 (nix-ts-mode :source "elpaca-menu-lock-file" :recipe
	     (:package "nix-ts-mode" :fetcher github :repo
		       "nix-community/nix-ts-mode" :files
		       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
			"*.texinfo" "doc/dir" "doc/*.info"
			"doc/*.texi" "doc/*.texinfo" "lisp/*.el"
			"docs/dir" "docs/*.info" "docs/*.texi"
			"docs/*.texinfo"
			(:exclude ".dir-locals.el" "test.el"
				  "tests.el" "*-test.el" "*-tests.el"
				  "LICENSE" "README*" "*-pkg.el"))
		       :source "MELPA" :id nix-ts-mode :type git
		       :protocol https :inherit t :depth treeless :ref
		       "09c89886a22b8e37ac0de9210ff5b2b79c520fd7")))
