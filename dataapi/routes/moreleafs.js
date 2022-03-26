var express = require('express');
var router = express.Router();
const controllers = require("../controllers/moreleafsControllers")


/* GET users listing. */
router.get('/', controllers.read);
router.get('/show/:text', controllers.show);

module.exports = router;
