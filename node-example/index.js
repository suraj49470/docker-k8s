// const http = require('http');
// const PORT = 8080;
// http.createServer((req, res) => {
//     res.end('helloworld!!!!!');
// }).listen(PORT, () => {
//     console.log(`server running on port ${PORT}`);
// })

const express = require('express');

const app = express();

app.get('/' , (req,res) => {
    res.send('hello worl express');
})
app.listen(8080 , (err) => {
    if(err){
        console.log(err);
    }
    console.log(`server running on port 8080`);
})