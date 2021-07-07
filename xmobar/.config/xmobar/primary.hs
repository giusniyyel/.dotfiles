-- http://projects.haskell.org/xmobar/

Config { 

    -- appearance
    font = "xft:Hack-Bold:size=10:Bold:antialias=true,Hack Nerd Font:size=13:Bold:antialias=true:hinting=true",
    bgColor = "#282A36",
    fgColor = "#F8F8F2",
    alpha = 255,
    position = Static { xpos = 0, ypos = 0, width = 1920, height = 22 },
    border = NoBorder,
    borderColor = "#373b41",
    
    -- layout
    sepChar = "%", --delineator between plugin names and straight text
    alignSep = "}{", --separator between left-right alignment
    template = "<fc=#57c7ff>   </fc>%UnsafeStdinReader% }{ \
        \<fc=#ff6ac1>  %updates% </fc>\
        \<fc=#ff6ac1> %cpu% </fc>\
        \| <fc=#f1fa8c> %memory% </fc>\
        \| <fc=#57c7ff> %wlo1% </fc>\
        \| <fc=#bd93f9> %brightness% %volume% </fc>\
        \| <fc=#5af78e> %battery%</fc>\
        \| <fc=#57c7ff> %date% </fc>\
        \%trayerpad%",

    -- general behavior
    lowerOnStart = True, -- send to bottom of window stack on start
    hideOnStart = False, -- start with window unmapped (hidde)
    allDesktops = True, -- show on all desktops
    -- overrideRedirect = False, -- set the Override Redirect flag (Xlib), this disables systray
    pickBroadest = False, -- choose widest display (multi-monitor),
    persistent = True, -- enable/disable hiding (True = disable),

    -- plugins
    commands = [ 
        Run Com "/home/giusniyyel/.config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 600,
        Run Date "  %d %b %Y %H:%M " "date" 600,
        Run Com "battery" [] "battery" 600,
        Run Com "brightness" [] "brightness" 10,
        Run Com "volume" [] "volume" 10,
        Run Network "wlo1" ["-t", "  <rx>kb   <tx>kb"] 150,
        Run Memory ["-t", "  <used> MB"] 150,
        Run Cpu ["-t", "  <total>%","-H","50","--high","red"] 150,
        Run Com "bash" ["-c", "checkupdates | wc -l"] "updates" 3000,
        Run UnsafeStdinReader
    ]
}
