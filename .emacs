;;A nice theme that reminds me of sublime text.
(load-theme 'wombat)
;;I kept having random tabs added to my yaml files, installing yaml mode fixed it.
(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))


;;Expand window, still trying to get position to work right.
(add-to-list 'default-frame-alist '(right . 0))
(add-to-list 'default-frame-alist '(top . 0))

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
  (progn
    ;; use 120 char wide window for largeish displays
    ;; and smaller 80 column windows for smaller displays
    ;; pick whatever numbers make sense for you
    (if (> (x-display-pixel-width) 1440)
           (add-to-list 'default-frame-alist (cons 'width 240))
           (add-to-list 'default-frame-alist (cons 'width 80)))
    ;; for the height, subtract a couple hundred pixels
    ;; from the screen height (for panels, menubars and
    ;; whatnot), then divide by the height of a char to
    ;; get the height we want
    (add-to-list 'default-frame-alist 
         (cons 'height (/ (- (x-display-pixel-height) 200)
                             (frame-char-height)))))))
;;execute the above function, super handy for moving between large and small monitors a lot on a laptop.
(set-frame-size-according-to-resolution)



