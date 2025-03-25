# global variable
A = 10


def fn():
    """
    local variable
    """

    # define global variable
    global b
    b = 20


fn()


# local variable
def local_fn():
    c = 30
    print(c)


local_fn()

### Data types
# Text: str
# Numeric: int, float, complex
# Sequence: list, tuple. range
# Mapping: dict
# Set: set, frozenset
# Boolean: bool
# Binary: bytes, bytearray, memoryview
# None: NoneType
