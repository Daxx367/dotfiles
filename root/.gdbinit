#Config the prompt.
set prompt \033[0;34mGDB>\033[0m

#Loads the file 'breakpoints' to get breakpoints. 
source breakpoints

#Sets the name of the loging file.
set logging file gdblog.txt

#Setting radix to base10.
set input-radix 10
set output-radix 10

#Stop scroll stoping on large prints.
set height 0
set width 0

#Set list size
set listsize 20

#Setting up keybindings for saving breakpoints.
define bps
    save breakpoints breakpoints 
end
document bps
    "saves the breakpoints."
end
