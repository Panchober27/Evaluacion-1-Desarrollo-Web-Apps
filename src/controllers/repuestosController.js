const repuestosController = {};

repuestosController.list = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query("SELECT * FROM REPUESTOS", (err, rows) => {
      if (err) {
        console.log(err);
        res.render("errors/404");
      } else {
        // console.log(rows);
        res.render("repuestos", { rows });
      }
    });
  });
};

module.exports = repuestosController;

/**
 * Metodo para realizar la resta de stock en la tabla de repuestos.
 * por ahora este metodo solo nos traera los stock, falta agregar la logica para
 * apuntar a un accesorio en especifico y luego restarle el stock correspondiente.
 *
 * agregar una ruta a routes/index.js -> para poder ejecutar esta funcion.
 *
 * @param {*} req
 * @param {*} res
 */
repuestosController.sellItem = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query("SELECT  nombre, stock FROM REPUESTOS", (err, rows) => {
      if (err) {
        console.log(err);
      }
      res.send(rows);
      console.log(rows);
    });
  });
};
