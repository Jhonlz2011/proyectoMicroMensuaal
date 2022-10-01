//Obtener la tabla : 

const tabla = document.querySelector("example1");

tabla.addEventListener("click", guardarId);

function guardarId(e){
    e.preventDefault();
    
    const seleccion = document.querySelector(e.target);    

    if(seleccion.classList.contains("btn-warning")){
        const fila = seleccion.parentElement.parentElement.parentElement;
        const id = fila.firstChild.textContent;

        console.log(id);
    }
}