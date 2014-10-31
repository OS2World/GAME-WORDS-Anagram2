:userdoc.
:title.Anagram Search Program documentation
.*******************************************************************
.*
.*
:h1.Read Me
:p.
[most of this stuff you do not have to worry about; read the
 next section for installation instructions]
:p.
Before installing, make sure you have...
:ul compact.
:li.The anagram.c source code.
:li.The manual page (anagram.1l)
:li.A word list.  (/usr/dict/words is a good start.)
:eul.
:p.
And either...
:ul compact.
:li.A compiler that understands ANSI-style prototypes.
:eul.
:p.
or
:ul compact.
:li.A K&amp.R-style compiler.
:li.Larry Wall's `perl' program.
:eul.
:p.
Installation procedure:
:ol.
:li.If your compiler does not understand prototypes, filter
the program through the unproto.pl perl script.
:li.Go into anagram.c and search for the phrase `Before compiling'.
:li.Read and understand that paragraph.
:li.Compile the program, using the hints in the HINTS file if
necessary.
:li.Optionally install the man page and the executable someplace.
:li.Enjoy.
:eol.
:p.
HISTORY
:p.
The program was written because I wanted an anagram program.
The existing anagram program in comp.sources.games is, by
its own admission, `Extremely inefficient'.
:p.
I thought the bit-field idea was due to some article in the CACM
that I read many years ago, but now that I've gone back to look
for it, it isn't there.  So I don't know where I got it from.
:p.
Acknowledgements to Brian Scearce, for sending me a copy of his
anagram program, which I studied before writing this one.
:p.
AUTHOR
:p.
Raymond Chen (rjc@math.princeton.edu)
.*******************************************************************
.*
.*
:h1.OS/2 Port-Specific Information
:p.
:hp5.Notes:ehp5.
:p.
You should have the following files in your anagram.zip archive&colon.
:lines.
        words
        anagram.exe
        anagram.inf
        readme.cmd
        src/anagram.c
        src/anagram.ipf
        src/makefile
:elines.
:ul compact.
:eul.
:p.
Installation of anagram is simple.  Copy :hp2.anagram.exe:ehp2. to any directory
you wish.  If you do not have an ASCII dictionary somewhere on your
computer, copy :hp2.words:ehp2. to any directory you wish.
:p.
Once you have put the program and dictionary where you want them, it is
ready to use!  The manual page is correct.
:p.
:hp5.Changes:ehp5.
:ul compact.
:li.Makefile changed slightly to compile under emx as well as to include
the documentation compiler.
:li.IPF help file added in place of documentation.  (README, etc.)
:li.25,000+ word sample dictionary added.
:eul.
:p.
This was compiled with emx-0.8f but it does not require EMX.DLL.
:p.
Since the full, unmodified source and documentation was not included, I
am obligated to tell you that you can get it from the archive site
:hp2.wuarchive.wustl.edu:ehp2. in the directory
:hp8./usenet/comp.sources.misc/volume12:ehp8..
:lines align=center.
Jeff M. Garzik - April 17, 1993
gtd543a@prism.gatech.edu (preferred until June 1997)
jgarzik@nyx.cs.du.edu
jeff.garzik@bbs.oit.unc.edu
:elines.
.*******************************************************************
.*
.*
:h1.Manual Page
:font facename=Courier size=16x14.
:lines.
ANAGRAM(1)               USER COMMANDS                 ANAGRAM(1)


NAME
     anagram - anagram words and phrases

SYNOPSIS
     anagram dictionary [ minlength ]

DESCRIPTION
     anagram reads  phrases  from  stdin  and  attempts  to  find
     anagrams  for the phrase using `words' in the specified dic-
     tionary.  In the discussion to follow, a `word' is a  string
     of  letters that are treated as as a unit for the purpose of
     anagramming.  A `word' can  contain  punctuation  marks  and
     embedded spaces.  For example, the three-word phrase `cul de
     sac' appears as a single `word' in my dictionary.

     The dictionary file must consist of a sequence of lines, one
     `word'  per line.  Duplicate `words' are not weeded out, and
     lines with more than one  word  are  treated  as  multi-word
     `words'.

     Only `words' with at least minlength letters are considered.
     (Default value is 3.)

     If a phrase begins  with  a  digit,  it  is  interpreted  to
     specify a new value of minlength, rather than a phrase to be
     anagrammed.  And if a phrase begins  with  a  question-mark,
     then the list of candidates for the most recently anagrammed
     phrase is printed.

DIAGNOSTICS
     Cannot stat dictionary / Cannot open dictionary
          The dictionary file specified on the command line could
          not  be  accessed.   Check that the file exists and has
          the appropriate permissions.

     Dictionary too large; increase MAXWORDS
          The indicated dictionary file contains more  than  MAX-
          WORDS  `words'.   The  value  of  MAXWORDS  is  set  at
          compile-time.  The supplied value  of  26000  is  large
          enough to handle /usr/dict/words.

     MAX_QUADS not large enough
          You attempted to anagram a phrase  that  has  too  many
          letters.    You'll   need  to  increase  the  value  of
          MAX_QUADS and recompile.

     Too many candidates
          There were more than MAXCAND `words' that fit into  the
          phrase.  Increase the compile-time constant MAXCAND and
          recompile.

BUGS
     The `?' command does not actually list all  of  the  `words'
     that fit inside the phrase.  Some words are pruned out early
     in the selection process because their use would leave fewer
     than minlength letters available in the rest of the phrase.

ACKNOWLEDGEMENTS
     The author would like to thank Brian  Scearce  for  allowing
     his  own  anagram  program  to be studied in preparation for
     writing this one.  No code for this program was  taken  from
     his program, but much of the spirit shines through.

AUTHOR
     Raymond Chen (raymond@math.berkeley.edu)
:elines.
:font facename=default size=0x0.
:euserdoc.

