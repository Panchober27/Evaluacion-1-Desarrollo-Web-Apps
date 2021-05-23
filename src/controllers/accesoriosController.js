/**
 * Consultas a la base de datos sobre los datos especifos de un producto, precio, modelo, etc...
 * Dentro de la lista de productos a trabajar en este controlador estaran todos los.
 *
 * Motos.
 * Accesorios
 * Repuestos
 */
const accesoriosController = {};

/**
 * Se obtienen los datos de los productos en la base de datos.
 *
 * despues se pintaran estos datos en las vistas, los datos mas relevantes son el precio y el stock :)
 *
 * ahora se manejaran los objetos con el fin de mostrar sus atributos (precio, stock)
 *
 * @param {*} req
 * @param {*} res
 */
accesoriosController.list = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query("SELECT * FROM ACCESORIOS", (err, rows) => {
      if (err) {
        console.log(err);
        res.render("errors/404");
      } else {
        console.log(rows);
        res.render("accesorios", { rows });
      }
    });
  });
};

/**
 * Metodo para realizar la resta de stock en la tabla de accesorios.
 *
 * por ahora este metodo solo nos traera los stock, falta agregar la logica para
 * apuntar a un accesorio en especifico y luego restarle el stock correspondiente.
 * @package-origin -> routes/index.js  req -> sellItemDemo
 */
accesoriosController.sellItem = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query("SELECT nombre, stock FROM ACCESORIOS", (err, rows) => {
      if (err) {
        console.log(err);
      }
      console.log(rows);
      res.send(rows);
    });
  });
};

module.exports = accesoriosController;
