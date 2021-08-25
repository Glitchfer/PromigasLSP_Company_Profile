const route = require("express").Router();


const users = require("./users");
const articles = require("./articles");
const tuk = require("./tuk");
const asesor = require("./asesor");
const asesi = require("./asesi");
const galeri = require("./galeri");



route.use("/users", users);
route.use("/articles", articles);
route.use("/tuk", tuk);
route.use("/asesor", asesor);
route.use("/asesi", asesi);
route.use("/galeri", galeri);



module.exports = route;
