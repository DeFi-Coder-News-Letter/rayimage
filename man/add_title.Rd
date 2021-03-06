% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_title.R
\name{add_title}
\alias{add_title}
\title{Add Title}
\usage{
add_title(
  image,
  title_text = "",
  title_offset = c(20, 20),
  title_color = "black",
  title_size = 30,
  title_font = "sans",
  title_style = "normal",
  title_bar_color = NULL,
  title_bar_alpha = 0.5,
  title_position = "northwest",
  filename = NULL,
  preview = FALSE
)
}
\arguments{
\item{image}{Image filename or 3-layer RGB array.}

\item{title_text}{Default \code{NULL}. Text. Adds a title to the image, using magick::image_annotate.}

\item{title_offset}{Default \code{c(20,20)}. Distance from the top-left (default, \code{gravity} direction in
image_annotate) corner to offset the title.}

\item{title_color}{Default \code{black}. Font color.}

\item{title_size}{Default \code{30}. Font size in pixels.}

\item{title_font}{Default \code{sans}. String with font family such as "sans", "mono", "serif", "Times", "Helvetica",
"Trebuchet", "Georgia", "Palatino" or "Comic Sans".}

\item{title_style}{Default \code{normal}. Font style (e.g. \code{italic}).}

\item{title_bar_color}{Default \code{NULL}. If a color, this will create a colored bar under the title.}

\item{title_bar_alpha}{Default \code{0.5}. Transparency of the title bar.}

\item{title_position}{Default \code{northwest}. Position of the title.}

\item{filename}{Default \code{NULL}. File to save the image to. If \code{NULL} and \code{preview = FALSE},
returns an RGB array.}

\item{preview}{Default \code{FALSE}. If \code{TRUE}, it will display the image in addition
to returning it.}
}
\value{
3-layer RGB array of the processed image.
}
\description{
Takes an RGB array/filename and adds a title with an optional titlebar.
}
\examples{
#Plot the dragon
add_title(dragon, preview = TRUE, title_text = "Dragon", title_size=20)

#That's hard to see--let's add a title bar:
\donttest{
add_title(dragon, preview = TRUE, title_text = "Dragon", title_size=20,
         title_bar_color="white")
}

#Change the width of the bar:
\donttest{
add_title(dragon, preview = TRUE, title_text = "Dragon", title_size=20,
         title_bar_color="white", title_offset = c(12,12))
}
#Change the color and title color:
\donttest{
add_title(dragon, preview = TRUE, title_text = "Dragon", title_size=20,
         title_bar_color="red", title_color = "white", title_offset = c(12,12))
}

#Change the transparency:
\donttest{
add_title(dragon, preview = TRUE, title_text = "Dragon", title_size=20, title_bar_alpha = 0.8,
         title_bar_color="red", title_color = "white", title_offset = c(12,12))
}

}
