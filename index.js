var express = require('express');

const PORT = 8080;
const MESSAGE = (process.env.MESSAGE === undefined) ? 'Nothing important' : process.env.MESSAGE;

var app = express();
app.get('/', function (req, res) {
  console.log(req);
  res.send('Hello world\n');
});

app.listen(PORT);
console.log('Message: ' + MESSAGE);
console.log('Running on http://localhost:' + PORT);
