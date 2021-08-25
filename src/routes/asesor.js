const router = require("express").Router();
const { getAll, create, update, deleteData } = require("../controller/asesor");
const { authorization } = require("../middleware/auth");

router.get("/", getAll);
router.post("/", authorization, create);
router.patch("/:id", authorization, update);
router.delete("/:id", authorization, deleteData)



module.exports = router;