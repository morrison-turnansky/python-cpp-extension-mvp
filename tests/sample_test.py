import python_example as m


def test_basic():
    assert m.__version__ == "0.0.1"
    assert m.add(1, 2) == 3
    assert m.subtract(1, 2) == -1


# This code is kept for the demo.
# If no function calls happen for main, the debugger will not reach your breakpoints.
# In your future work, do not add main function calls to your tests.
if __name__ == "__main__":
    test_basic()
