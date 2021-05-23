const { json, query } = require("express");

/**
 * Crear metodos que reporten el stock de productos en la base de datos.
 */
const stockControllers = {};

/**
 * Metodo para consultar el stock de motos en reservas.
 * @param {*} req
 * @param {*} res
 */
// stockControllers.stockMotosReserva = (req, res) => {
//   req.getConnection((err, conn) => {
//     conn.query("SELECT stock_reservas FROM motos", (err, rows) => {
//       if (err) {
//         res.send("Error al consultar stocks de las motos en reserva.");
//       }
//       console.log(rows);
//       res.json(rows);
//     });
//   });
// };

// Metodo de prueba para pedir ambos Stocks. // quizas convenga crear 2 variables para recibir esos datos.
stockControllers.allStocks = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query(
      "SELECT stock_reservas, stock_ventas FROM motos",
      (err, rows) => {
        if (err) {
          console.log("Error al usar la doble consulta de stock en motos.");
          res.send("Error al usar la doble consulta de stock en motos.");
        }
        console.log(rows);
        // res.json(rows);
        res.send(rows);
      }
    );
  });
};

// /**
//  * Metodo para consultar el stock de motos en ventas.
//  * @param {*} req
//  * @param {*} res
//  */
// stockControllers.stockMotosVentas = (req, res) => {
//   req.getConnection((err, conn) => {
//     conn.query("SELECT stock_ventas FROM motos", (err, rows) => {
//       if (err) {
//         res.send("Error al consultar stocks de las motos en ventas.");
//       }
//       console.log(rows);
//       res.json(rows);
//     });
//   });
// };

module.exports = stockControllers;
