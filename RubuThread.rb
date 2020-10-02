# Ruby creation of threads cerner_2^5_2020

# first method 
def Th1 
a = 0
while a <= 3
	puts "T1: #{a}"
	# thread for the specified time 
	sleep(1) 
	a = a + 1
end
end
# cerner_2^5_2020
# Second method 
def Th2 
b = 0
while b <= 3
	puts "T2: #{b}"
	# to pause the execution of the current
	sleep(0.5)
	b = b + 1
end
end
# creating thread for first & second method 
x = Thread.new{Th1()} 
y= Thread.new{Th2()} 
# wait for the first thread 
x.join 
# wait for the second thread 
y.join 
puts "Process End"
