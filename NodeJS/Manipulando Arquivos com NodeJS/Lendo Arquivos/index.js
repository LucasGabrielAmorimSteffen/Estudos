const fs = require('fs');


fs.readFile('Node.txt',function(err,data){
    console.log(data.toString());

})