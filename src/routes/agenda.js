const router = require("express").Router();
const {
  getAll,
  getById,
  create,
  update,
  deleteData,
} = require("../controller/agenda");
const { authorization } = require("../middleware/auth");

router.get("/", getAll);
router.get("/:id", getById);
router.post("/", authorization, create);
router.patch("/:id", authorization, update);
router.delete("/:id", authorization, deleteData);

module.exports = router;
