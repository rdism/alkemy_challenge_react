const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Alkemy on port 3000');
});

app.get('/reg/id/show', (req, res) => {
    res.send('handleShow');
});

app.put('/reg/id/:regid', (req, res) => {
    res.send(`Record ${req.params.regid} updated`); // handleUpdate
});

app.delete('/reg/id/:regid', (req, res) => {
    res.send(`I deleted record ${req.params.regid}`); // handleDelete
});

app.post('/reg/id/:regid', (req, res) => {
    res.send(`Record ${req.params.regid} was created`); // handleCreate
});

app.use(express.static('public'));

app.listen(3000, () => {
    console.log('Running on port 3000');
});
