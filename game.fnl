(local repl (require "lib.stdio"))

(global state {})

; simple example printing "Hello World!"
; use the arrow keys to move the label around

(fn love.load []
  (set state.x 50)
  (set state.y 100)
  (set state.speed 300)
  (repl.start)) ; this is important for the REPL to work

(fn love.update [dt]
  (let [isDown love.keyboard.isDown
        delta (* state.speed dt)]
    (when (isDown "right")
      (set state.x (+ state.x delta)))
    (when (isDown "left")
      (set state.x (- state.x delta)))
    (when (isDown "up")
      (set state.y (- state.y delta)))
    (when (isDown "down")
      (set state.y (+ state.y delta)))))

(fn love.draw []
  (love.graphics.print "Hello World!" state.x state.y))
