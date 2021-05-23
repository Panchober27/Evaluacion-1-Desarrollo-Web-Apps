// Archivo para manejar elementos en la vista motos.ejs

// Se deben crear elementos html para poder colocar los distintos mapas de google, dependiendo del
// tamaño de la pantalla:
//     - para pantallas grandes:
//         desplegar el googleMaps normal(grande)
//     - para pantallas chicas:
//         desplegar googleMaps chico(small)
// usar fragment y appendChild para esto.

const imagen1 = document.getElementById("img1");
const imagen2 = document.getElementById("img2");

imagen1.addEventListener('click', () => {
  
});


imagen2.addEventListener('click', () => {
  alert('diste click a la imagen 2');
});



// Dependiendo del ancho de la pantalla se mostraran o no elementos :)
// const ancho = screen.width;
// if (ancho <= 600) {
//   alert("pantalla chica!");
//   imagen1.addEventListener("click", () => {
//     console.log("diste click a la img 1");
//   });
//   imagen2.addEventListener("click", () => {
//     console.log("diste click a la img 2");
//   });
// } else if (ancho > 600) {
//   alert("pantalla grande!");
// }
