# progam for cerner_2^5_2020 
import sys as _lol_sys from datetime import date as DATE 
# Begin
def FIBBING ( N ) :
    'ITERATE FIBONACCI TERMS LESS THAN N' 
    assert N >= 0 
    # BTW, FIBONACCI LIKE BUNNIES! LOL
    yield 1 
    yield 1 
    I = 1 
    HE = 1 
    while 1:
        I , HE = HE , I + HE 
        if HE >= N :
            break 
        yield HE 
# cerner_2^5_2020 
if __name__ == '__main__' :
    print >>_lol_sys.stderr, 'NOW IZ' , DATE . today ()
    if len(_lol_sys.argv) == 1 :
        N = 100 
    else :
        N = int(_lol_sys.argv[ 1 ]) 
    for I in FIBBING ( N ) :
        print I 

# The end.
