const multer = require("multer");
const helper = require("../helper/index");
const { request } = require("express");

const storage = multer.diskStorage({
  destination: (request, file, callback) => {
    callback(null, "./uploads/");
  },
  filename: (request, file, callback) => {
    const fileName = file.originalname;
    const newName = fileName.replace(/\s/g, "_");
    callback(null, new Date().toISOString().replace(/:/g, "-") + "-" + newName);
  },
});

const fileFilter = (request, file, callback) => {
  if (file.mimetype === "application/pdf") {
    callback(null, true);
  } else {
    return callback(new Error("Extension File harus dalam bentuk pdf"));
  }
};

let upload = multer({ storage, fileFilter }).single("file");

const uploadFilter = (request, response, next) => {
  upload(request, response, function (err) {
    if (err instanceof multer.MulterError) {
      return helper.response(response, 400, err.message);
    } else if (err) {
      return helper.response(response, 400, err.message);
    }
    next();
  });
};

module.exports = uploadFilter;
