/**
 * Las rutas seran las siguientes:
 * - Inicio ('/')
 * - Motos ('/motos')
 * - Accesorios ('/accesorios')
 * - Repustos('/repuestos')
 * - E-Moto ('/e-moto')
 * - contacto ('/contacto')
 */
const express = require("express");
const router = express.Router();

const customersController = require("../controllers/customerController");
const accesoriosController = require("../controllers/accesoriosController");
const repuestosController = require("../controllers/repuestosController");

// Ruta inicial. o Home
router.get("/", (req, res) => {
  res.render("index");
});

router.get("/error", (req, res) => {
  res.render("errors/404");
});

/**
 * Rutas para iniciar trabajos de sesiones y connect-flash
 */
// Ruta para registrar un usuario
// aqui se reciben los datos.
router.post("/register", (req, res) => {
  console.log(req.body); // Contiene toda la info enviada por el usuario

  req.session.user_data = req.body;

  res.redirect("profile");
});

// Ruta para revisar los datos de los usuarios registrados.
router.get("/profile", (req, res) => {
  const user_data = req.session.user_data; // se guardan los datos de la sesion.
  delete req.session.user_data; // se eliminan los datos en la sesion.
  res.render("profile", {
    user_data,
  });
});

// Ruta demo para obtener stock de las motos en reserva.
// router.get("/stock-m-r", stockControllers.stockMotosReserva);

/**
 * Crear logica paren caso de que stock sea < a 1 mostrar que no hay stock
 */

// Ruta demo para obtener stock de las motos en ventas.
// router.get("/stock-m-v", stockControllers.stockMotosVentas); // agregar metodo.

// Ruta Motos --------------------------------------------------------------------------------------
router.get("/motos", (req, res) => {
  res.render("motos");
});
// Rutas de las distintas motos en el sitio web cada una tendra su propio controlador.
// ruta de la moto de 20 ah
router.get("/moto-em1", (req, res) => {
  res.render("emoto1");
});
// Ruta de la moto 12 ah
router.get("/moto-em2", (req, res) => {
  res.render("emoto2");
});
// FIN RUTAS DEPENDIENTES DE motos--------------------------------------------------------------------------------------

router.get("/hola", (req, res) => {
  console.log(process.env);
  res.send("hola");
});

// Ruta Accesorios
router.get("/accesorios", accesoriosController.list);

// ruta para desarrollar la resta del stock de un item comprado. (ir a controllers/accesoriosController.js)
router.get("/sellItemDemo", accesoriosController.sellItem);
// fin rutas de accesorios.

// Ruta Respuestos
router.get("/repuestos", repuestosController.list);

// Ruta E-moto
router.get("/e-moto", (req, res) => {
  res.render("e-moto");
});
// Ruta Contacto
router.get("/contacto", (req, res) => {
  res.render("contacto");
});

// Se añadiran mas rutas con el tiempos....

// -------------------------------------------------------------------------------------------------------
// Rutas de prueba para elementos css js y html ❤😁❤

router.get("/demo", (req, res) => {
  res.render("demos/demo");
});

module.exports = router;
