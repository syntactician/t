Setup:

  $ alias xt="python $TESTDIR/../t.py --task-dir `pwd` --list test"

Replace a task's text (preserving the ID):

  $ xt Sample.
  $ xt
  a - Sample.
  $ xt -e a New sample.
  $ xt
  d - New sample.
  $ xt 'this | that'
  $ xt
  4 - this | that
  d - New sample.
  $ xt -e 4 'this &| that'
  $ xt
  d1 - this &| that
  df - New sample.

Sed-style substitution:

  $ xt -e df 's/New/Testing/'
  $ xt
  d - this &| that
  f - Testing sample.
  $ xt -e d '/this &/this /'
  $ xt
  4 - this | that
  f - Testing sample.

