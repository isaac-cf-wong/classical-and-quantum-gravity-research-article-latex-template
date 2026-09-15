# Figures Directory

This directory is intended to store all figures used in the CQG article.

## Guidelines

Follow the
[CQG figure guidelines](https://publishingsupport.iopscience.iop.org/journals/classical-and-quantum-gravity/):

- Prefer vector formats (`.pdf`, `.eps`). TIFF, PNG, and JPEG are also accepted;
  use high resolution for raster images.
- Size figures for about 8.5 cm (single column) or 15 cm (double column) width,
  with text of 8 to 12 pt at the final size.
- Do not use colour as the only means of conveying information; use different
  line styles and symbols as well.
- Put captions in `main.tex`, not inside the graphics files.
- Use only `a-z`, `A-Z`, `0-9`, and `_` in file names. Figure names must be
  unique because `make submission` copies them into one flat directory.
- `figure1.pdf` is the placeholder from the IOP template; delete it once you
  have your own figures.
- Reference figures in `main.tex` by file name only:

    ```latex
    \begin{figure}
        \centering
        \includegraphics[width=0.8\textwidth]{example}
        \caption{An example figure.}
        \label{fig:example}
    \end{figure}
    ```
