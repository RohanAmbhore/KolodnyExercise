Middleware
-------
Middleware is the programming pattern of providing hooks with a resume callback.
Here's the basic usage of the file that you'll be creating:

``` javascript
class Middleware{

    constructor(){
        this.middleware = [];
    }

    use(fn){
        this.middleware.push(fn);
    }

    executeMiddleware(middleware, next){
        const composition = this.middleware.reduceRight((next, fn) =>v=>{
        
            fn(next);
        
        },next);

        composition();
    }

    go(fun){
        var start = new Date();
        this.executeMiddleware(this.middleware, fun);
    }
}

var midd = new Middleware();

    midd.use(function(next){
        var self= this;
        
        setTimeout(function(){
            self.hook1 = true;
            next();
        },10);
    });

    midd.use(function(next){
        var self = this;
          setTimeout(function(){
            self.hook2 = true;
            next();
        },10);
    });

   var start = new Date();
  
    midd.go(function() {
        console.log(this.hook1); // true
        console.log(this.hook2); // true
        console.log(new Date() - start); // around 20
    });
  ```
