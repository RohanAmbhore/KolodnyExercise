Memoize
----

``` javascript

function memoize(callback){
    memoize.cache = {};
    return function(){
        var key = JSON.stringify(arguments);
        if(memoize.cache[key]){
            return memoize.cache[key];
        }
        else{
            var val = callback.apply(this,arguments);
            memoize.cache[key] = val;
            return val;
        }
    }
    
}

function expensiveOperation() {
  console.log('this should be shown once');
  return 22;
}

var memoized = memoize(expensiveOperation);
console.log(memoized());
console.log(memoized());
```
