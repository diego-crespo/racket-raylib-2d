#lang racket

(require raylib-2d
		 raylib-2d/util
		 raylib-2d/colors
		 pkg/lib
		 racket/generator
		 ffi/unsafe)


(InitWindow 800 600 "Texture test")
(SetTargetFPS 30)

(define resources-path (build-path (pkg-directory "raylib-racket-2d") "test/resources/"))
(define brickimg (LoadImage (~a resources-path "tileablebrick.png")))
(define brictexture (LoadTextureFromImage brickimg))

(raylib-basic-loop
  
  )

(UnloadImage brickimg)
(UnloadTexture bricktexture)