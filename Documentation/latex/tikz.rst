==================
Graphics with TikZ
==================

Basic drawings
==============
.. tikz:: An Example Directive with Caption

   \draw[thick,rounded corners=8pt]
   (0,0)--(0,2)--(1,3.25)--(2,2)--(2,0)--(0,2)--(2,2)--(0,0)--(2,0);

.. tikz:: Yingyang

    \begin{scope}
        \clip (0,0) circle (1cm);
        \fill[black] (0cm,1cm) rectangle (-1cm,-1cm);
    \end{scope}

    \fill[black] (0,0.5) circle (0.5cm);
    \fill[white] (0,-0.5) circle (0.5cm);

    \fill[white] (0,0.5) circle (0.1cm);
    \fill[black] (0,-0.5) circle (0.1cm);

    \draw (0,0) circle (1cm);
