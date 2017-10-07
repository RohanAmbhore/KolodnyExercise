Invert Binary Tree
----


``` javascript
function Tree(value){
    this.left = null;
    this.right = null;
    this.value = value;
}

Tree.prototype.insertLeft = function(val){
    this.left = new Tree(val)
}

Tree.prototype.insertRight = function(val){
    this.right = new Tree(val);
}

function revertTree(root){
    if(root == null)
     return

    revertTree(root.left);
    revertTree(root.right);

    var temp = root.left;
    root.left = root.right;
    root.right = temp;

    return root;

    
}

function traverseTree(root){
    if(!root)
        return;
    traverseTree(root.left);
    console.log(root.value);
    traverseTree(root.right);
}

function buildTree(){
    var root = new Tree(6);
     root.insertLeft(4);
     root.insertRight(8);
     root.left.insertLeft(3);
     root.left.insertRight(7);
     root.right.insertLeft(5);
     root.right.insertRight(9);

   // traverseTree(root);
    revertTree(root);
   // traverseTree(root);
    console.log(root.left.left.value);
}

buildTree();
```
