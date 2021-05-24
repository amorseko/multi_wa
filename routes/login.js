var express = require('express');
var bcrypt = require('bcrypt');
var router = express.Router()
var knex = require('../database');
const { body, validationResult } = require('express-validator');

var Auth_mdw = require('../middlewares/auth');
/* GET users listing. */
router.get('/',Auth_mdw.check_session, function(req, res, next) {
  return res.render('backend/login',{
    success: req.flash("success"),errors: req.flash("errors")
  });
});

router.post('/auth', [
  body('email').notEmpty(),
  body('password').notEmpty(),
], async (request, response) => {
  const errors = validationResult(request).formatWith(({
    msg
  }) => {
    return msg;
  });
  if (!errors.isEmpty()) {
    request.flash('errors',Object.values(errors.mapped()));
    response.redirect('/login');
  }
  knex.transaction(function(trx) {
    knex('tbl_users').where({
      email: request.body.email
    }).select('*')
        .then()
        .then(trx.commit)
        .catch(trx.rollback);
    }).then(function(resp) {
      if(resp.length !==1){
        request.flash('errors','Correct Email, Email Not Found');
        response.redirect('/login');
      }else{
        const equels = bcrypt.compareSync(request.body.password,resp[0].password);
        if(!equels){
          request.flash('errors','Corect, Password Wrong');
          response.redirect('/login');
        }else{
          request.session.loggedin = true;
          request.session.email=request.body.email;
          request.session.role = resp[0].role;
          console.log(resp[0].role);
          response.render('backend/home', {emails:request.session.email });
        }
      }
    
    }).catch(function(err) {
      console.log(err)
    });
});

router.get('/logout',function(request,response){    
  request.session.destroy(function(err){  
      if(err){  
          console.log(err);  
      }  
      else  
      {  
        response.redirect('/');  
      }  
  });  
}); 

module.exports = router;
