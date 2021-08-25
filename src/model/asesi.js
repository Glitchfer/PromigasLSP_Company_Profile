const connection = require("../config/mysql");

module.exports = {
  getAll: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT * from asesi", (error, result) => {
        if (!error) {
          resolve(result);
        } else {
          reject(new Error(error));
        }
      });
    });
  },
  create: (setData) => {
    return new Promise((resolve, reject) => {
      connection.query("INSERT INTO asesi SET ?", setData, (error, result) => {
        if (!error) {
          const newResult = {
            ...setData,
          };
          resolve(newResult);
        } else {
          reject(new Error(error));
        }
      });
    });
  },
  update: (setData, id) => {
    return new Promise((resolve, reject) => {
      connection.query("UPDATE asesi SET ? where id = ?", [setData, id], (error, result) => {
        if (!error) {
          const newResult = {
            ...setData,
          };
          resolve(newResult);
        } else {
          reject(new Error(error));
        }
      });
    });
  },
  deleteData: (id) => {
    return new Promise((resolve, reject) => {
      connection.query("DELETE FROM asesi where id = ?", id, (error, result) => {
        if (!error) {
          resolve(result);
        } else {
          reject(new Error(error));
        }
      });
    });
  },
};