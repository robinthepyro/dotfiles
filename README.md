### robinthepyro's Hyprland Dotfiles

These are the important parts of my configuration.
It's a somewhat unique Hyprland setup with emphasis
on being minimal but having things that bring me joy.

Currently I use this on Arch Linux, I don't know what the
availability of the packages this depends on is like,
but apart from waybar-cava, which can be substituted for 
waybar you should be alright on most distros.


### Important Packages
A non-exhaustive list of important packages as they are named
on Arch / the AUR

Shell
```zsh```

Window Manager and Related Utilities
```hyprland hyprpaper hyprlock hyprswitch hypridle```

Terminal
```rio```

Text Editors 
```helix```

Git UI's
```gitu gitui```

App Launcher
```tofi```

Status Bar
```waybar-cava```

File Managers
```yazi thunar```

Key Remapping Tool
```keyd```

Notifications 
```dunst```

Night Light
```wlsunset```

Terminal  Multiplexer
```zellij```

Battery Monitor
```batsignal```

Terminal Navigation Help (it's cd but better)
```zoxide```
 
I know future me will appreciate it here's the command to install them all with paru.
```paru -S hyprland hyprpaper hyprlock hyprswitch hypridle tofi waybar-cava yazi thunar keyd dunst rio zellij batsignal gitu gitui helix zoxide```


# USE THESE AT YOUR OWN RISK!
These configs work, on my machines. I haven't tried
most of these configs anywhere else.

There is a high likelyhood of hardcoded nonsense so
be prepared to tweak stuff untill it works. The only
reason this repo is public is because someone asked,
and signing into github on every university PC I want
to move my helix config onto is really annoying.

I would say spare your sanity and just write your own
dotfiles, but hey. Maybe these are useful to you.
