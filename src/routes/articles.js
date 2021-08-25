const router = require("express").Router();
const { authorization } = require("../middleware/auth");
const uploadFilterPdf = require("../middleware/Multer");
const { getAll, create, update, deleteData } = require("../controller/articles");

router.get("/", getAll);
router.post("/", authorization, uploadFilterPdf, create);
router.patch("/:id", update);
router.delete("/:id", deleteData)



module.exports = router;
