const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello World I am using DOCKER!✨');
})

app.get('/test', (req, res) => {
    res.send('testing docker!😀');
})

const port = 3000;

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});