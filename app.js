var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hallo World!!!');
});



app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});

//app.set('port', process.env.PORT || 8088);

//app.get('/', function(req, res){
//    res.send('hello world');
//});

//app.listen(app.get('port'));
