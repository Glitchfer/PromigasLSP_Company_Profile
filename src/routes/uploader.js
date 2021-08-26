const router = require("express").Router();
const { upload } = require("../controller/uploader");
const uploadImage = require("../middleware/multerImage");
const uploadPdf = require("../middleware/multer");
const { authorization } = require("../middleware/auth");

router.post("/", uploadImage, upload);
router.post("/pdf", uploadPdf, upload);



module.exports = router;