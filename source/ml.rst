.. include:: Includes.txt
.. highlight:: rst

.. _book_ml_chapter_label:

==============================================
Machine and Statistical Learning Documentation
==============================================


Style Guide
===========

Referring to GUI elements
-------------------------

.. rst-class:: bignums-xxl

#. Select :guilabel:`File > Open`
#. Press :kbd:`ctrl` + :kbd:`s`
#. :guilabel:`ADMIN TOOLS > Extensions`

Inline code, textroles
----------------------

.. rst-class:: bignums-tip

#. :python:`result = a + 23;`
#. :typoscript:`lib.hello.value = Hello World!`
#. :file:`/etc/passwd`
#. :kbd:`ctrl` + :kbd:`s`

buttons
-------

horizbuttons-attention-m
~~~~~~~~~~~~~~~~~~~~~~~~

Like admonition 'attention' (blue)

.. rst-class:: horizbuttons-attention-m

* horizbuttons-attention-m
* two
* three

horizbuttons-note-m
~~~~~~~~~~~~~~~~~~~

Like admonitions 'generic', 'note', 'see also' (neutral, grey)

.. rst-class:: horizbuttons-note-m

- horizbuttons-note-m
- two
- three

horizbuttons-primary-m
~~~~~~~~~~~~~~~~~~~~~~

Use the primary = key color (TYPO3 orange)

.. rst-class:: horizbuttons-primary-m

- horizbuttons-primary-m
- two
- three

horizbuttons-striking-m
~~~~~~~~~~~~~~~~~~~~~~~

Very strinking an unusuable, cannot be overseen.

.. rst-class:: horizbuttons-striking-m

- horizbuttons-striking-m
- two
- three

Code test
=========

parsed-literal
--------------

.. parsed-literal::

    # parsed-literal test
    curl -O http://someurl/release-|version|.tar-gz

code-block
----------

.. code-block:: json

    {
    "windows": [
        {
        "panes": [
            {
            "shell_command": [
                "echo 'did you know'",
                "echo 'you can inline'"
            ]
            },
            {
            "shell_command": "echo 'single commands'"
            },
            "echo 'for panes'"
        ],
        "window_name": "long form"
        }
    ],
    "session_name": "shorthands"
    }

Sidebar
=======

.. sidebar:: Ch'ien / The Creative

    *Above* CH'IEN THE CREATIVE, HEAVEN

    .. image:: _static/images/vscode.png

    *Below* CH'IEN THE CREATIVE, HEAVEN

The first hexagram is made up of six unbroken lines. These unbroken lines stand for
the primal power, which is light-giving, active, strong, and of the spirit. The hexagram
is consistently strong in character, and since it is without weakness, its essence is
power or energy. Its image is heaven. Its energy is represented as unrestricted by any
fixed conditions in space and is therefore conceived of as motion. Time is regarded as
the basis of this motion. Thus the hexagram includes also the power of time and the
power of persisting in time, that is, duration.

The power represented by the hexagram is to be interpreted in a dual sense in terms
of its action on the universe and of its action on the world of men. In relation to
the universe, the hexagram expresses the strong, creative action of the Deity. In
relation to the human world, it denotes the creative action of the holy man or sage,
of the ruler or leader of men, who through his power awakens and develops their
higher nature.


Code with Sidebar
=================

.. sidebar:: A code example

    With a sidebar on the right.


.. literalinclude:: conf.py
    :language: python
    :linenos:
    :lines: 1-40

Code without Sidebar
====================

.. literalinclude:: conf.py
    :language: python
    :linenos:
    :lines: 1-40

Definition Styling
==================

.. rst-class:: dl-parameters

parameterAbc
   :sep:`|` :aspect:`Condition:` required
   :sep:`|` :aspect:`Type:` string
   :sep:`|` :aspect:`Default:` ''
   :sep:`|`

   Text describing parameterAbc ...

parameterBcd
   :sep:`|` :aspect:`Condition:` optional
   :sep:`|` :aspect:`Type:` boolean
   :sep:`|` :aspect:`Default:` false
   :sep:`|`

   Text describing parameterBcd ...

