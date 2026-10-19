; Override of snacks.nvim's queries/latex/images.scm:
; inline_formula removed so $...$ is left to render-markdown.
; No "; extends" line on purpose: this file replaces snacks' version.

(displayed_equation
  (#set! image.ext "math.tex"))
  @image.content @image

((math_environment
  (#set! image.ext "math.tex"))
  @image.content @image
  (#not-has-ancestor? @image "displayed_equation" "math_environment"))

(graphics_include
  (_ (path) @image.src)
) @image
