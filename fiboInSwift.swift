//Program for cerner_2^5_2020
// Using Recursion
func fibonacciRecursiveNum1(num1: Int, num2: Int, steps: Int) {
    if steps > 0 {
        let newNum = num1 + num2
        fibonacciRecursiveNum1(num2, num2: newNum, steps: steps-1)
    }
    else {
        print("result = \(num2)")
    }
    // cerner_2^5_2020
}
// call the method
fibonacciRecursiveNum1(0, num2: 1, steps: 7)
