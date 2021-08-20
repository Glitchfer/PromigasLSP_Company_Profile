const helper = require("../helper");
const { getAll, create, update, deleteData } = require("../model/articles");

module.exports = {
  getAll: async (request, response) => {
    try {
      const result = await getAll();
      return helper.response(response, 200, "Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },

  create: async (request, response) => {
    const { title, body, file } = request.body;
    let fileUpload = request.file === undefined ? "" : request.file.filename;

    const setData = {
      title,
      body,
      file: fileUpload
    };
    try {
      const result = await create(setData);
      return helper.response(response, 200, "Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },

  // create: async (request, response) => {
  //   try {
  //     const {
  //       title,
  //       body,
  //       // file,
  //     } = request.body;
  //     let fileUpload = request.file === undefined ? "" : request.file.filename;
  //     if (image !== "") {
  //       const setData = {
  //         title,
  //         body,
  //         // file: fileUpload,
  //       };
  //       const result = await create(setData);
  //       return helper.response(
  //         response,
  //         200,
  //         "Berhasil menambahkan artikerl terbaru!",
  //         result
  //       );
  //     } else {
  //       return helper.response(
  //         response,
  //         400,
  //         "upload file gagal"
  //       );
  //     }
  //   } catch (error) {
  //     return helper.response(response, 400, "Bad Request", error);
  //   }
  // },

  update: async (request, response) => {
    const { title, body, file } = request.body;
    const id = request.params.id;

    const setData = {
      title,
      body,
    };
    try {
      const result = await update(setData, id);
      return helper.response(response, 200, "Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  deleteData: async (request, response) => {
    const id = request.params.id;

    try {
      const result = await deleteData(id);
      return helper.response(response, 200, "Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
};
