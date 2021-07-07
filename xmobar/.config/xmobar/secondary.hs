-- http://projects.haskell.org/xmobar/

Config { 
    font = "xft:Hack-Bold:size=10:Bold:antialias=true,Hack Nerd Font:size=13:Bold:antialias=true:hinting=true",
    bgColor = "#282A36",
    fgColor = "#f8f8f2",
    lowerOnStart = True,
    hideOnStart = False,
    allDesktops = False,
    persistent = True,
    commands = [ 
        Run Date "  %d %b %Y %H:%M " "date" 600,
        Run Network "wlp2s0" ["-t", " <rx>kb  <tx>kb"] 150,
        Run Cpu ["-t", " (<total>%)","-H","50","--high","red"] 150,
        Run Memory ["-t", "  <used>M (<usedratio>%)"] 150,
        Run Com "volume" [] "volume" 10,
        Run Com "bash" ["-c", "checkupdates | wc -l"] "updates" 3000,
        Run UnsafeStdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "<fc=#57c7ff>   </fc> %UnsafeStdinReader% }{ \
        \<fc=#82AAFF> %volume% </fc>\
        \<fc=#8BE9FD> %date% </fc>"
}
