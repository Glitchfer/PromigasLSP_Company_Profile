const helper = require("../helper");
const { getAll, create, update, deleteData } = require("../model/asesi");

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
    const { nama_asesi, sertifikat_kompetensi, tanggal_terbit } = request.body;

    const setData = {
      nama_asesi,
      sertifikat_kompetensi,
      tanggal_terbit
    };
    try {
      const result = await create(setData);
      return helper.response(response, 200, "Berhasil menambahkan data baru", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  update: async (request, response) => {
    const { nama_asesi, sertifikat_kompetensi, tanggal_terbit } = request.body;
    const id = request.params.id;

    const setData = {
      nama_asesi,
      sertifikat_kompetensi,
      tanggal_terbit,
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