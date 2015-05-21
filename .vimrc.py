from snake import *

@preserve_state()
def get_word():
    keys("yiw")
    return get_register("0")
