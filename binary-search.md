
Binary Search
-------

```
function binarySearch(arr, key){
    low = 0;
    high = arr.length - 1;
   
    while(low<=high){
        var mid = parseInt(low + (high - low)/2);
      
        if(arr[mid] == key){            
            return mid;
        }
        else if (arr[mid] < key){
            low = mid+1;
        }
        else {
            high = mid-1;
        }
    }
    return -1;
}

console.log(binarySearch(['apple', 'banana', 'cherry', 'dates', 'eggs', 'figs', 'grapes'],"eggs"));
```
