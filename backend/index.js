const express = require('express');
const app = express();
app.use(express.json());

const allowCrossDomain = function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*')
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE')
    res.header(
        'Access-Control-Allow-Headers',
        'Content-Type, Authorization, access_token'
    )

    // intercept OPTIONS method
    if ('OPTIONS' === req.method) {
        res.send(200)
    } else {
        next()
    }
}
app.use(allowCrossDomain)

const todos = [
    {
        id: 1,
        todo: "study nodejs",
    },
    {
        id: 2,
        todo: "go to gym",
    },
    {
        id: 3,
        todo: "check aws cost explorer",
    },
];

app.get('/api/todo', (req, res) => {
    res.send(todos);
});

app.post('/api/todo', (req, res) => {
    const todo = {
        id: todos.length + 1,
        todo: req.body.todo
    };
    console.log("todo: " + todo);
    todos.push(todo);
    res.send(todos);
});

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}...`));
