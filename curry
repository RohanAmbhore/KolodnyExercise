Curried function
-----


```
function curried(f){

    function crux(callback, thiArg){
        return function(){
            var args = thiArg.concat(Array.prototype.slice.call(arguments));
            if(callback.length == args.length){
                return callback.apply(null,args);
            }
            else{
                return crux(callback, args);
            }
        }
    }

    return crux(f,[]);
}


function add(a,b,c){
    return a*b*c;
}

var result = curried(add);
```
