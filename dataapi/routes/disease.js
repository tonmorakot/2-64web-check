var express = require('express');
var router = express.Router();
const controllers = require("../controllers/diseaseControllers")


/* GET users listing. */
router.get('/', controllers.read);
router.get('/name/:text', controllers.name);
// router.get('/details/:text', controllers.details);


module.exports = router;
