onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib run_cam_lcd_opt

do {wave.do}

view wave
view structure
view signals

do {run_cam_lcd.udo}

run -all

quit -force
