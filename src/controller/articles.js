const helper = require("../helper");
const { getAll, getById, create, update, deleteData } = require("../model/articles");

module.exports = {
  getAll: async (request, response) => {
    try {
      const result = await getAll();
      return helper.response(response, 200, "Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  getById: async (request, response) => {
    try {
      const { id } = request.params;
      const result = await getById(id);
      if (result.length > 0) {
        return helper.response(
          response,
          200,
          "Success Get Article by ID",
          result
        );
      } else {
        return helper.response(
          response,
          404,
          `ID Article : ${id} Not Found`
        );
      }
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },

  create: async (request, response) => {
    const { title, body, file } = request.body;

    const setData = {
      title,
      body,
      file: file
    };
    try {
      const result = await create(setData);
      return helper.response(response, 200, "Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },

  update: async (request, response) => {
    const { title, body, file } = request.body;
    const id = request.params.id;

    const setData = {
      title,
      body,
      file
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
