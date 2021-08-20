const route = require("express").Router();


const users = require("./users");
const articles = require("./articles");



route.use("/users", users);
route.use("/articles", articles);



module.exports = route;
