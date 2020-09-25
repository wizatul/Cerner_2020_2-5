# Program for cerner_2^5_2020 
# Recursive Python to solve tower of hanoi   
def TowerOfHanoi(n , from_rod, to_rod, aux_rod): 
    if n == 1: 
        print "Move disk 1 from rod",from_rod,"to rod",to_rod 
        return
    TowerOfHanoi(n-1, from_rod, aux_rod, to_rod) 
	# cerner_2^5_2020
    print "Move disk",n,"from rod",from_rod,"to rod",to_rod 
    TowerOfHanoi(n-1, aux_rod, to_rod, from_rod) 
          
# Run driver code 
n = 4
TowerOfHanoi(n, \'A\', \'C\', \'B\')  
#Small as eff.