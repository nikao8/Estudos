from pynput.keyboard import Key, Controller
from pynput import keyboard

keyboard1 = Controller()

def on_activate_up():
    
    keyboard1.press(Key.up)
    keyboard1.release(Key.up)

def on_activate_down():
   
    keyboard1.press(Key.down)
    keyboard1.release(Key.down)

def on_activate_left():
   
    keyboard1.press(Key.left)
    keyboard1.release(Key.left)

def on_activate_right():
   
    keyboard1.press(Key.right)
    keyboard1.release(Key.right)

with keyboard.GlobalHotKeys({
        '<alt_gr>+i': on_activate_up,
        '<alt_gr>+k': on_activate_down,
        '<alt_gr>+j': on_activate_left,
        '<alt_gr>+l': on_activate_right
        }) as h:
    h.join()