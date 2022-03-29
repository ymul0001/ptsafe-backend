'use strict';

const env = require('dotenv');
const cors = require('cors');
env.config();

const express = require('express');
const app = express();
const PORT = process.env.PORT;

//configure express dependencies
app.use(express.json()); 
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.options('*', cors());

app.listen(PORT, () => {
    console.log(`Listening to port ${PORT}`);
})

module.exports = app;