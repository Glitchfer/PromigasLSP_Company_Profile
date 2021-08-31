const helper = require("../helper");
const { getAll, getDataCount, create, update, deleteData } = require("../model/asesor");
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
      prevLink: prevLink && `http://127.0.0.1:3002/asesor?${prevLink}`,
      nextLink: nextLink && `http://127.0.0.1:3002/asesor?${nextLink}`,
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
    const { nama_asesor, nomor_registrasi, kompetensi_teknis } = request.body;

    const setData = {
      nama_asesor,
      nomor_registrasi,
      kompetensi_teknis
    };
    try {
      const result = await create(setData);
      return helper.response(response, 200, "Berhasil menambahkan data baru", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  update: async (request, response) => {
    const { nama_asesor, nomor_registrasi, kompetensi_teknis } = request.body;
    const id = request.params.id;

    const setData = {
      nama_asesor,
      nomor_registrasi,
      kompetensi_teknis,
      updated_at: new Date()
    };
    try {
      const result = await update(setData, id);
      return helper.response(response, 200, "Perubahan berhasil disimpan", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
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