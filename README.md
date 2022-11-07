# paste-latex-to-onenote-ahk
 Paste Latex string to Onenote as equation. MS doesn't care about things that can't make much profit so...
 
 If you can, buy one of those plugins, those are better.

# Usage
 Copy Latex, move the caret to desired location, hit Ctrl+Space to paste as equation.
 
# Advantage(s)
 - Free :)
 
# Caveates
 - SLOW. It needs a lot of extra steps to make sure other stuff arn't messed up.
 - Only support things that math mode does.
 - Does not support some multi-line environments such as {cases}.
 - The Latex String cannot be multilined too.
 - Some of the string might be escaped by Onenote and thus cannot be translated to equation.

# Multilingual font problem
 If the font changes after insertion, edit the *preferred_font* variable in the script so it automatically switches to the preferred font after inserting equation.
