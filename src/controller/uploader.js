const helper = require("../helper");
module.exports = {
  upload: async (request, response) => {
    const { file } = request;
    let fileLoc = file.filename;
    try {
      return helper.response(
        response,
        200,
        "Berhasil menambahkan foto baru",
        fileLoc
      );
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
};
