const connection = require("../config/mysql");

module.exports = {
  postUser: (setData) => {
    return new Promise((resolve, reject) => {
      connection.query("INSERT INTO users SET ?", setData, (error, result) => {
        if (!error) {
          const newResult = {
            ...setData,
          };
          delete newResult.password;
          resolve(newResult);
        } else {
          reject(new Error(error));
        }
      });
    });
  },
  checkUsername: (username) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "SELECT id, username, password FROM users WHERE username = ?",
        username,
        (error, result) => {
          !error ? resolve(result) : reject(new Error(error));
        }
      );
    });
  },
  getAll: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT * from users", (error, result) => {
        if (!error) {
          resolve(result);
        } else {
          reject(new Error(error));
        }
      });
    });
  },
  update: (setData, id) => {
    return new Promise((resolve, reject) => {
      connection.query("UPDATE users SET ? where id = ?", [setData, id], (error, result) => {
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
};
