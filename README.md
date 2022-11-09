# paste-latex-to-onenote-ahk
 Paste Latex string to Onenote as equation. MS doesn't care about things that can't make much profit so...
 
 If you can, buy one of those plugins, those are better.
 
 I've been constantly running into situations where it might not work and been working around problems. And since it's just an ahk script, various user environment might cause different outcome. It's advised to test it in a new section to see it if it works, new page is not enough!

# Usage
 Copy Latex, move the caret to desired location, hit Ctrl+Space to paste as equation.
 
 If you would like to make the script do the copying step for you, remove the ; at the beginning of line 15: Send ^c
 
 This way, you can just type Latex inside Onenote, select it, and Ctrl+Space to convert to equation.
 
# Advantage(s)
 - Free :)
 
# Caveates
 - SLOW. It needs a lot of extra steps to make sure other stuff arn't messed up.
 - Does not support some multi-line environments such as {cases}.
 - The Latex String cannot be multilined too.
 - Parts of the string might be escaped by Onenote and thus cannot be translated to equation.
 - I wanted to restore clipboard after pasting stuff but never got it to work on the latest win11.

# Multilingual font problem
 If the font changes after insertion, edit the *preferred_font* variable in the script so it automatically switches to the preferred font after inserting equation.
