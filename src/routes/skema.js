const router = require("express").Router();
const { getAll, create, update, deleteData } = require("../controller/skema");
const uploadFilter = require("../middleware/multer");
const { authorization } = require("../middleware/auth");

router.get("/", getAll);
router.post("/", authorization, uploadFilter, create);
router.patch("/:id", authorization, update);
router.delete("/:id", authorization, deleteData);

module.exports = router;
