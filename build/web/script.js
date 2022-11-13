


function enviarFormularioOpcionLog(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('form'))).toString();
         
	  // Define what happens in case of error
	  XHR.addEventListener('error', (event) => {
	    alert('Oops! Something went wrong.');
	  });

	  // Set up our request
	  XHR.open('POST', 'NewServletLog', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
          
          XHR.onload = () => {
            if (XHR.readyState === XHR.DONE && XHR.status === 200) {
              console.log("response => " + XHR.response);
              //console.log("response xml=> " + XHR.responseXML);
              document.getElementById('bodyTable').innerHTML=XHR.response;
              mostrarMensaje();
              limpiarFormulario();
            }
          };
          
          XHR.send(formData);         
}

function enviarFormularioOpcionLibro(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('form'))).toString();
         
	  // Define what happens in case of error
	  XHR.addEventListener('error', (event) => {
	    alert('Oops! Something went wrong.');
	  });

	  // Set up our request
	  XHR.open('POST', 'NewServletLibro', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
          
          XHR.onload = () => {
            if (XHR.readyState === XHR.DONE && XHR.status === 200) {
              console.log("response => " + XHR.response);
              //console.log("response xml=> " + XHR.responseXML);
              document.getElementById('bodyTable').innerHTML=XHR.response;
              mostrarMensaje();
              limpiarFormulario();
            }
          };
          
          XHR.send(formData);  }




/*

-------------------- INICIAN CONTROLADORES DEL LOGIN --------------------

*/




function login(){
    var user, pass;
    user = document.getElementById("user").value;
    pass = document.getElementById("pass").value;
    if(user=="JP" && pass== "123"){
       mostrarMensaje();
    }else{
        errMsj('Invalid username or password');
    }
    
}

function errMsj(msj){
  Swal.fire({
  icon: 'error',
  title: msj,
  showConfirmButton: false,
  timer: 1500
})
}

function mostrarMensaje(){
  Swal.fire({
  icon: 'success',
  title: 'Estudiante guardado exitosamente',
  showConfirmButton: false,
  timer: 1500
})
}
      
function mostrarMensaje2(){
Swal.fire({
  title: 'Estas seguro?',
  text: "No podras revertir esto.!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Si, eliminalo!'
}).then((result) => {
  if (result.isConfirmed) {
    Swal.fire(
      'Eliminado!',
      'El alumno ha sido eliminado.',
      'success'
    )
  }
})
}