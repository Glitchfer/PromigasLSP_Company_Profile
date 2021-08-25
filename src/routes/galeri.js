const router = require("express").Router();
const { getAll, create, update, deleteData } = require("../controller/galeri");
const uploadFilter = require("../middleware/multerImage");
const { authorization } = require("../middleware/auth");

router.get("/", getAll);
router.post("/", authorization, uploadFilter, create);
router.patch("/:id", authorization, update);
router.delete("/:id", authorization, deleteData)



module.exports = router;