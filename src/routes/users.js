const router = require("express").Router();
const { authorization } = require("../middleware/auth");
const { registerUser, loginUser, getAll, update, deleteData } = require("../controller/users");

router.post("/login", loginUser);
router.post("/register", registerUser);
router.get("/", authorization, getAll);
router.patch("/:id", update);



module.exports = router;
