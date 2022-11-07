# paste-latex-to-onenote-ahk
 Paste Latex string to Onenote as equation. MS doesn't care about things that can't make much profit so...
 
 If you can, buy one of those plugins, those are better.

# Usage
 Copy Latex, switch to Onenote, move the cursor to desired location, hit Ctrl+Space to paste as equation.
 
# Caveates
 - Only support things that math mode does.
 - Does not support some multi-line environments such as {cases}.
 - The Latex String cannot be multilined too.
 - Some of the string might be escaped by Onenote and thus cannot be translated to equation.

# Multilingual font problem
 Edit the *preferred_font* variable in the script so it automatically switches to the preferred font after inserting equation.
