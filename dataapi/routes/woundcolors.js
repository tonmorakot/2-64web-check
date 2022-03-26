var express = require('express');
var router = express.Router();
const controllers = require("../controllers/woundcolorsControllers")


/* GET users listing. */
router.get('/', controllers.read);

module.exports = router;
