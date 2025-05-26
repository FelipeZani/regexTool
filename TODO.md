TO DO

## Updates project
- add all standard symbols
- add dynamic symbols
- add Matching rules constructor <=> ask Matched examples
- add Matching itself where user can verify if his regex is accepted by a rule 

## Regex symbols
  Symbol   Meaning                                                                                                                     
-  `.`      Any single character (except newline)                                                                                       
-  `^`      Start of a line                                                                                                             
-  `$`      End of a line                                                                                                               
-  `*`      Zero or more of the preceding element                                                                                       
-  `+`      One or more of the preceding element                                                                                        
-  `?`      Zero or one of the preceding element (also makes quantifiers non greedy)                                                    
-  `()`     Grouping                                                                                                                    
-  `[]`     Character class (e.g., `[abc]` matches 'a', 'b', or 'c')
    - [abc]
    - [a-z] ✓
    - [A-Z] ✓
        - [custom-custom]

-  ` `      Range inside a character class (e.g., `[a z]`)                                                                              
 
## MetaClasses  
Symbol   Meaning                                  
-  `\d`     Digit (same as `[0 9]`)✓
-  `\D`     Non digit
-  `\w`     Word character (same as `[a zA Z0 9_]`)
-  `\W`     Non word character                       
-  `\s`     Whitespace (space, tab, newline)         
-  `\S`     Non whitespace                           

## Quantifiers

-  Symbol    Meaning                
-  `{n}`     Exactly n times        
-  `{n,}`    At least n times       
-  `{n,m}`   Between n and m times  
 
 
- \ : Escapes special characters (e.g., \. matches a literal dot, not any character)
 
-  Symbol       Meaning              
-  `(?=...)`    Positive lookahead   
-  `(?!...)`    Negative lookahead   
-  `(?<=...)`   Positive lookbehind  
-  `(?<!...)`   Negative lookbehind  
 
 
 
