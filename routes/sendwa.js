var express = require('express');
var router = express.Router();
var Auth_mdw = require('../middlewares/auth');
const { body, validationResult } = require('express-validator');
const fs = require('fs');
/* GET users listing. */
router.get('/', Auth_mdw.check_login,function(req, res, next) {
  return res.render('backend/sendwa',{
    success: req.flash("success"),
    errors: req.flash("errors")
  });
});

router.get('/listSender', Auth_mdw.check_login,function(req, res, next) {
  const SESSIONS_FILE = './whatsapp-sessions.json';
  var data = JSON.parse(fs.readFileSync(SESSIONS_FILE)).filter(function (entry) {
      return entry.userid === 'admin@gmail.com';
  });
  return res.status(200).json({
    status: 200,
    data:data,
    message: 'success'
  });
 
});


module.exports = router;
