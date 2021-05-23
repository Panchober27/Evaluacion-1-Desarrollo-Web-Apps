const express = require("express"),
  path = require("path"),
  morgan = require("morgan"),
  mysql = require("mysql"),
  emotoConnection = require("express-myconnection"),
  { urlencoded } = require("express"),
  // Requeriendo modulo para manejo de sessiones.
  session = require("express-session"),
  { database } = require("./keys");

app = express();

// Settings
app.set("port", process.env.PORT || 3000);
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

// App and Mysql Settings.--------------------------------------------------

// Middlewares
app.use(morgan("dev"));
// Database.
app.use(emotoConnection(mysql, database));
// Manejar datos recibidos a tipo json.
app.use(express.json()); // cada vez que recibamos datos desde un formulario, estos se convierten a .json
// Middleware URL ENCODED settings.
app.use(express.urlencoded({ extended: false }));
// Modulo de SESIONES.
app.use(
  session({
    secret: "secretkey_panchober27",
    resave: false,
    saveUninitialized: false,
  })
);
// Static files.
app.use(express.static(path.join(__dirname, "public")));

// Routes.
app.use(require("./routes"));

// Starting the server.
app.listen(app.get("port"), () => {
  console.log("Server started on port ", app.get("port"));
});
