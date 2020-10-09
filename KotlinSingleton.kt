// Program 4 for cerner_2^5_2020
object Singleton{
    init {
        println("Singleton class invoked.")
    }
    var variableName = "I am Var"
    fun printVarName(){
        println(variableName)
    }
}
//cerner_2^5_2020
fun main(args: Array<String>) {     
    Singleton.printVarName()
    Singleton.variableName = "New Name"
        
    var a = A()
}
class A {
    init {
        println("Class init method. Singleton variableName property : ${Singleton.variableName}")
        Singleton.printVarName()
    }
}
