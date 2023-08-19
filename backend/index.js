const express = require('express');
const cors = require('cors');

const app = express();
app.use(express.json());
app.use*(cros({ origin: 'http://localhost:3000' }));

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
