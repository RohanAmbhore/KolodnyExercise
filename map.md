Cutom Map
---

``` javascript
Array.prototype.myMap = function(callback,thiArg){
    var buff = [];
    for(var i=0;i<this.length;i++){
        buff.push(callback(this[i],i,this));
    }
    return buff;
}

var data = [1,2,3,4,5];
data.myMap(function(elm,index,data){
   // console.log(elm);
});
```
