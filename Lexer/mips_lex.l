/* Definition Area
    
*/
%{  /* definiciones de lenguaje C */
    /* Lenguaje C */
    #include <stdio.h>
    /*
        Los analizadores léxicos se definen con expresiones
        regulares, las expresiones regulares son una notación
        simplificada de conjuntos regulares y los conjuntos
        regulares están hechos de dos cosas, conjuntos
        finitos + operaciones: unión, concatenación,
        cerradura ( + , * )
    */
%}
/*definiciones regulares*/
letters         [A-Za-z]
digits          [0-9]
spaces          [ \t]
operator        [+\-*/=!&|^]
delimiter       [{}(),]
new_line        [\n]
quote           ["]
%%
var             { printf("<reserved_word>"); }
if              { printf("<reserved_word>"); }
else            { printf("<reserved_word>"); }
while           { printf("<reserved_word>"); }
function        { printf("<reserved_word>"); }
return        { printf("<reserved_word>"); }
{delimiter}     { printf("<delimiter>"); }
";"             { printf("<end_of_line>"); }
{digits}*       { printf("<const>"); }
{quote}         { printf("<quote>"); }
{operator}      { printf("<operator>"); }
{letters}({letters}|{digits}|"_")* { printf("<id>"); }
%%
/*auxiliar*/
