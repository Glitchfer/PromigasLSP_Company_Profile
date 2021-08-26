const connection = require("../config/mysql");

module.exports = {
  getAll: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT * from skema", (error, result) => {
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
      connection.query("INSERT INTO skema SET ?", setData, (error, result) => {
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
      connection.query(
        "UPDATE skema SET ? where id = ?",
        [setData, id],
        (error, result) => {
          if (!error) {
            const newResult = {
              ...setData,
            };
            resolve(newResult);
          } else {
            reject(new Error(error));
          }
        }
      );
    });
  },

  // update: (setData, id) => {
  //   return new Promise((resolve, reject) => {
  //     connection.query(
  //       "UPDATE skema SET ? WHERE id = ?",
  //       [setData, id],
  //       (error, result) => {
  //         if (!error) {
  //           const newResult = {
  //             id: id,
  //             ...setData,
  //           };
  //           resolve(newResult);
  //         } else {
  //           reject(new Error(error));
  //         }
  //       }
  //     );
  //   });
  // },

  deleteData: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "DELETE FROM skema where id = ?",
        id,
        (error, result) => {
          if (!error) {
            resolve(result);
          } else {
            reject(new Error(error));
          }
        }
      );
    });
  },
};
