const helper = require("../helper");
const { getAll, getDataCount, create, update, deleteData } = require("../model/skema");
const qs = require("querystring");

const getPrevLink = (page, currentQuery) => {
  if (page > 1) {
    const generatedPage = {
      page: page - 1,
    };
    const resultPrevLink = { ...currentQuery, ...generatedPage };
    return qs.stringify(resultPrevLink);
  } else {
    return null;
  }
};

const getNextLink = (page, totalPage, currentQuery) => {
  if (page < totalPage) {
    const generatedPage = {
      page: page + 1,
    };
    const resultNextLink = { ...currentQuery, ...generatedPage };
    return qs.stringify(resultNextLink);
  } else {
    return null;
  }
};


module.exports = {
  getAll: async (request, response) => {
    let { page, limit } = request.query;
    page = parseInt(page);
    limit = parseInt(limit);
    let totalData = await getDataCount();
    let totalPage = Math.ceil(totalData / limit);
    let offset = page * limit - limit;
    let prevLink = getPrevLink(page, request.query);
    let nextLink = getNextLink(page, totalPage, request.query);

    const pageInfo = {
      page,
      totalPage,
      limit,
      totalData,
      prevLink: prevLink && `http://127.0.0.1:3002/skema?${prevLink}`,
      nextLink: nextLink && `http://127.0.0.1:3002/skema?${nextLink}`,
    };
    try {
      const result = await getAll(limit, offset);
      const newData = {
        result,
        pageInfo,
      };
      return helper.response(
        response,
        200,
        "Success Get Data",
        newData
      );
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },
  create: async (request, response) => {
    const { nama_skema, file } = request.body;

    const setData = {
      nama_skema,
      file: file,
    };
    try {
      const result = await create(setData);
      return helper.response(
        response,
        200,
        "Berhasil menambahkan skema baru",
        result
      );
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },

  update: async (request, response) => {
    const { nama_skema, file } = request.body;
    const id = request.params.id;

    const setData = {
      nama_skema,
      file,
      updated_at: new Date(),
    };
    try {
      const result = await update(setData, id);
      return helper.response(
        response,
        200,
        "Perubahan berhasil disimpan",
        result
      );
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },

  // update: async (request, response) => {
  //   const { nama, file } = request.body;
  //   // let fileUpload = request.file === undefined ? "" : request.file.filename;
  //   const id = request.params.id;

  //   const setData = {
  //     nama,
  //     file,
  //     updated_at: new Date(),
  //   };
  //   try {
  //     const result = await update(setData, id);
  //     return helper.response(
  //       response,
  //       200,
  //       "Perubahan berhasil disimpan",
  //       result
  //     );
  //   } catch (error) {
  //     return helper.response(response, 400, "Bad Request");
  //   }
  // },

  // update: async (request, response) => {
  //   try {
  //     const { id } = request.params;
  //     const { nama, file } = request.body;

  //     const checkId = await update(id);
  //     if (checkId.length > 0) {
  //       const setData = {
  //         nama: nama ? nama : checkId[0].nama,
  //         file: request.file === undefined ? "" : request.file.filename,
  //         updated_at: new Date(),
  //       };
  //       const result = await update(setData, id);
  //       const fsUnlink = fs.unlink(`./uploads/${checkId[0].file}`, () => {});

  //       return helper.response(response, 201, "Data Updated", result);
  //     } else {
  //       return helper.response(response, 404, `Data : ${id} Not Found`);
  //     }
  //   } catch (error) {
  //     return helper.response(response, 400, "Bad Request", error);
  //   }
  // },

  deleteData: async (request, response) => {
    const id = request.params.id;

    try {
      const result = await deleteData(id);
      return helper.response(response, 200, "Berhasil dihapus", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
};
