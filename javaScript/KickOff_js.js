//Program 1 for cerner_2^5_2020
var Singleton = (function() {
        //cerner_2^5_2020
        var instance

        function createInstance(x) {
            return new Object("instance created for -> " + x)
        }
        //JS is Awesome- termination is not mandatory :)
        return {
            getInstance: function(x) {
                if (!instance) {
                    instance = createInstance(x)
                }
                return instance
            }
        }
    })()
    //run -> run() in browser to TEST
function run() {
    var instance1 = Singleton.getInstance(1)
    var instance2 = Singleton.getInstance(2)
    alert("Same instance? " + (instance1 === instance2))
}