local awful = require("awful")

local cmd = {
  -- Compositor
  "picom",
  -- Blue light filter
  --"redshift -P -O 3400",
  -- Keep screen on
  "xset s off",
  "xset s off -dpms",
  -- Faster keyboard rate
  "xset r rate 300 60",
  -- Resolution
  "xrandr --output HDMI-0 --mode 3840x2160 --rate 60.00 --scale 0.75x0.75"
}

for i = 1, #cmd do
  awful.spawn.with_shell(cmd[i])
end
