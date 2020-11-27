const express = require("express");
const userModel = require.main.require("./models/userModel");
const moviesModel = require.main.require("./models/moviesModel");
const tvseriesModel = require.main.require("./models/tvseriesModel");
const softwaresModel = require.main.require("./models/softwaresModel");
const gamesModel = require.main.require("./models/gamesModel");

const router = express.Router();


router.get("/", (req, res) => {
  if (req.session.user) {
    if (req.session.user[0].type === "admin") {

     // ;
     gamesModel.getAll(function (results) {
        var games=results;
        moviesModel.getAll(function (results) {
            var movies=results;
            softwaresModel.getAll(function (results) {
                var softwares=results;
                tvseriesModel.getAll(function (results) {
                    var tvseries=results;
                    userModel.getAllMod(function (results) {
                        var mod=results;
                        res.render("admin/index",{admin :  req.session.user, games : games, movies : movies, softwares : softwares, tvseries : tvseries, mod : mod  })
                
                        });
                    });
        
                });
    
    
            });

        });



    } else {
      res.redirect("/");
    }
  } else {
    res.redirect("/login");
  }
});

module.exports = router;