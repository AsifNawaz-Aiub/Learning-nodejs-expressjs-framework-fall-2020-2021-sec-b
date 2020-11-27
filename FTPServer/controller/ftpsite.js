const express = require("express");
const router = express.Router();
const moviesModel = require.main.require("./models/moviesModel");
const tvseriesModel = require.main.require("./models/tvseriesModel");
const softwaresModel = require.main.require("./models/softwaresModel");
const gamesModel = require.main.require("./models/gamesModel");

router.get("/", (req,res ) => {

    if (req.session.user) {
      
        moviesModel.getByAction(function (results) {
            var actionMovies=results;
            moviesModel.getByThriller(function (results) {
             var thrillerMovies=results;
             moviesModel.getByComedy(function (results) {
                 var comedyMovies=results;
                 tvseriesModel.getByAction(function (results) {
                     var actionTvSeries=results;
                     tvseriesModel.getByThriller(function (results) {
                         var thrillerTvSeries=results;
                         tvseriesModel.getByComedy(function (results) {
                             var comedyTvSeries=results;
                             softwaresModel.getByApplication(function (results) {
                                 var applicationSoft=results;
                                 softwaresModel.getByUtility(function (results) {
                                     var utilitySoft=results;
                                     softwaresModel.getByDriver(function (results) {
                                         var driverSoft=results;
                                         gamesModel.getByOpenWorld(function (results) {
                                             var openWorld=results;
                                             gamesModel.getByRPG(function (results) {
                                                 var RPG=results;
                                                 gamesModel.getByRacing(function (results) {
                                                     var racing=results;
                                                     res.render("ftpsite/index",
                                                       {actionMovies : actionMovies, 
                                                        thrillerMovies : thrillerMovies, 
                                                        comedyMovies : comedyMovies,
                                                        actionTvSeries : actionTvSeries,
                                                        thrillerTvSeries : thrillerTvSeries,
                                                        comedyTvSeries : comedyTvSeries,
                                                        applicationSoft : applicationSoft,
                                                        utilitySoft : utilitySoft,
                                                        driverSoft : driverSoft, 
                                                        openWorld : openWorld, 
                                                        RPG : RPG, 
                                                        racing : racing  });
       
                                                     });
                                                 });
                                             });
                                         });
                                     });
                                 });
                            
                             });
                         });
                  
                     });
              
                 });
      
              });
     
           });
       } else {
         res.redirect("/login");
       }

   
});

//res.render("ftpsite/index",{actionMovies : actionMovies, thrillerMovies : thrillerMovies, comedyMovies : comedyMovies,actionTvSeries : actionTvSeries,thrillerTvSeries : thrillerTvSeries,comedyTvSeries : comedyTvSeries, applicationSoft : applicationSoft,utilitySoft : utilitySoft,driverSoft : driverSoft });
  
module.exports = router;