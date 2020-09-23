/*Program for cerner_2^5_2020
Find Fibo*/
function fibo(n) {
	//cerner_2^5_2020
	return n < 1 ? 0
        : n <= 2 ? 1
        : fibo(n - 1) + fibo(n - 2)
		/*TS is Awesome- termination is not mandatory :)*/
}
/*go, get to your Fibonacchi*/
console.log(fibo(4))
