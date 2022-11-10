# paste-latex-to-onenote-ahk
 Paste Latex string to Onenote as equation. MS doesn't care about things that can't make much profit so...
 
 If you can, buy one of those plugins, those are better.
 
 I've been constantly running into situations where it might not work and been working around problems. And since it's just an ahk script, various user environment might cause different outcome. It's advised to test it in a new section to see it if it works, new page is not enough!

# Usage
 Type Latex and select it, hit Ctrl+Space to replace Latex with equation.
 
 You can also copy Latex from somewhere else, move the text cursor to chosen destination, and hit Ctrl+Space to paste as equation. But make sure nothings is selected in onenote when you convert copied Latex, because if there is anything selected, it will be treated as the Latex that you want to convert and replace whatever is already copied.
 
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
