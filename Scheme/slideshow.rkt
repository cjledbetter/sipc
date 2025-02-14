#lang slideshow
(define c (circle 10))
(define r (rectangle 10 20))
(define (square n)
  (filled-rectangle n n))
(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))
(define (checker p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
    (vc-append p12 p21)))
; (checker (colorize (square 10) "red")
;          (colorize (square 10) "black"))
(define (checkerboard p)
  (let* ([rp (colorize p "red")]
         [bp (colorize p "black")]
         [c (checker rp bp)]
         [c4 (four c)])
    (four c4)))
;(checkerboard (square 10))
(define (series mk)
  (hc-append 4 (mk 5) (mk 10) (mk 20)))
; (series circle)
; (series square)