.. include:: ../Includes.txt
.. highlight:: rst

===========
Style Guide
===========

Referring to GUI elements
=========================

.. rst-class:: bignums-xxl

#. Select :guilabel:`File > Open`
#. Press :kbd:`ctrl` + :kbd:`s`
#. :guilabel:`ADMIN TOOLS > Extensions`

Inline code, textroles
======================

.. rst-class:: bignums-tip

#. :python:`result = a + 23;`
#. :typoscript:`lib.hello.value = Hello World!`
#. :file:`/etc/passwd`
#. :kbd:`ctrl` + :kbd:`s`

Code
====

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
