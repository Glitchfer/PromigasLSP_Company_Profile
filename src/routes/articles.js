const router = require("express").Router();
const { authorization } = require("../middleware/auth");
const uploadFilterPdf = require("../middleware/multer");
const {
  getAll,
  getById,
  create,
  update,
  deleteData,
} = require("../controller/articles");

router.get("/", getAll);
router.get("/:id", getById);
router.post("/", authorization, uploadFilterPdf, create);
router.patch("/:id", update);
router.delete("/:id", deleteData);

module.exports = router;
