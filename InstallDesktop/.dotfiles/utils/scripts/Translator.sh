# warring :: FIX SCTRIPT !!
function main
{
    local word=$(xsel -b)
    trans -b -t  spanish -p  "$word" 
    trans -b -t  spanish -speak  "$word "

}
main *
