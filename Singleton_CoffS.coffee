# Program 4 for cerner_2^5_2020
# Coffee with Singleton
class Singleton
  # cerner_2^5_2020
  instance = null
  class PrivateClass
    constructor: (@msg) ->
    echo: -> @msg
  @get: (msg) ->
    instance ?= new PrivateClass(msg)
	#LitCoffee is Awesome- termination is not mandatory :)
a = Singleton.get "Atul"
a.echo()

b = Singleton.get "Dey"
b.echo() 

Singleton.instance 
a.instance
#Ecma is much powerfull than ever to replace JAVA
Singleton.PrivateClass 