from typing import *

def dataTypes(type: str):
    if (type == "Integer") or (type == "Float"):
        return 4
    elif (type == "Long") or (type == "Double"):
        return 8
    else:
        return 1
