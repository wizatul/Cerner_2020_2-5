//programe for cerner_2^5_2020
export class Fibonacci {
	index : number;
	fibonacciNumber : number;	
	// cerner_2^5_2020
	public calculateFibonacciNumber() {		
		this.fibonacciNumber = this.calculate(this.index);						
	}
	
	private calculate(i : number) : number{
		return (i <= 2) ? 1 : this.calculate(i -1 ) + this.calculate(i -2);		
	}			
}
