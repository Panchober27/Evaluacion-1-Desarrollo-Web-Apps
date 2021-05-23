// Archivo para trabajar la vista de venta de la moto.

// Primero se debera crear un eventlistener para las imagenes de los colores para la moto
// luego crear la forma para cambiar la imagen principal dependiendo de en cual selector
// se hizo click.

const igmPrincipal = document.getElementById("imgP").content; // Imagen principal de la vista.
const imgPrin = document.querySelector(".imagen-p");

// Imagenes de tipo selector.
const imgSelR = document.getElementById("iR");
const imgSelN = document.getElementById("iN");
const imgSelB = document.getElementById("iB");
const imgSelV = document.getElementById("iV");
const imgSelA = document.getElementById("iA");

// imgSelR.addEventListener("click", () => {
//   document.getElementById("imgP").src =
//     "images/motos/items/eco12ah/ecomoto-doble-roja.jpg";
// });

// Probando usar una funcion para el cambio de la imagen principal.
imgSelR.addEventListener("mouseover", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-roja.jpg";
});
imgSelN.addEventListener("mouseover", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-negra.jpg";
});
imgSelN.addEventListener("mouseover", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-negra.jpg";
});
imgSelB.addEventListener("mouseover", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-blanca.jpg";
});
imgSelV.addEventListener("mouseover", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-verde.jpg";
});
imgSelA.addEventListener("mouseover", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-amarilla.jpg";
});

// Como en modo mobile no se puede usar el metodo 'mouseover', reemplazo por 'click' 😊
imgSelR.addEventListener("click", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-roja.jpg";
});
imgSelN.addEventListener("click", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-negra.jpg";
});
imgSelN.addEventListener("click", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-negra.jpg";
});
imgSelB.addEventListener("click", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-blanca.jpg";
});
imgSelV.addEventListener("click", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-verde.jpg";
});
imgSelA.addEventListener("click", () => {
  document.getElementById("imgP").src =
    "images/motos/items/eco12ah/ecomoto-doble-amarilla.jpg";
});

