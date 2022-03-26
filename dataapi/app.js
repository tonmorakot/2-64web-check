process.env.TZ = "Asia/Bangkok";
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

const bodyParser = require("body-parser");
const helmet = require("helmet");
const cors = require("cors");
// const rateLimit = require("express-rate-limit");

// const limiter = rateLimit({
//   windowMs: 15 * 60 * 1000,
//   max: 200,
// });

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
const diseaseRouter = require('./routes/disease');
const factorsRouter = require('./routes/factors');
const leafcolorsRouter = require('./routes/leafcolors');
const moreleafsRouter = require('./routes/moreleafs');
const woundcolorsRouter = require('./routes/woundcolors');
const woundonleafsRouter = require('./routes/woundonleafs');

var app = express();

// app.use(limiter);
app.use(helmet());

app.use(cors());
app.use(bodyParser.json({ limit: "200mb" }));
app.use(bodyParser.urlencoded({ limit: "200mb", extended: true }));

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/api/disease', diseaseRouter);
app.use('/api/factors', factorsRouter);
app.use('/api/leafcolors', leafcolorsRouter);
app.use('/api/moreleafs', moreleafsRouter);
app.use('/api/woundcolors', woundcolorsRouter);
app.use('/api/woundonleafs', woundonleafsRouter);

module.exports = app;
