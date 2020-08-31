(require 'elfeed)
(global-set-key (kbd "C-x w") 'elfeed)
(setq elfeed-feeds
      '("http://nullprogram.com/feed/"
        "http://planet.emacsen.org/atom.xml"
        "https://sachachua.com/blog/feed/"))
