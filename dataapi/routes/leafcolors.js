var express = require('express');
var router = express.Router();
const controllers = require("../controllers/leafcolorsControllers")


/* GET users listing. */
router.get('/', controllers.read);

module.exports = router;
