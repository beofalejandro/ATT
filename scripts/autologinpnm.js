const usuario = 'nocatt';
const contrasena = 'NewPNM2025!';
 
function automatizarLogin() {
    const botonMostrarFormulario = document.querySelector('.button2');
    
    if (botonMostrarFormulario) {
        botonMostrarFormulario.click();
    } else {
        console.error('Error: No se encontró el botón para mostrar el formulario.');
        return;
    }
 
    setTimeout(() => {
        const campoUsuario = document.querySelector('input#username');
        const campoContrasena = document.querySelector('input#password');
 
        if (campoUsuario && campoContrasena) {
            campoUsuario.value = usuario;
            campoContrasena.value = contrasena;
 
            const botonLogin = document.querySelector('.modal-footer button[type="submit"]');
 
            if (botonLogin) {
                botonLogin.click();
            } else {
                console.error('Error: No se encontró el botón de Login.');
            }
        } else {
            console.error('Error: No se encontraron los campos de usuario o contraseña.');
        }
 
    }, 1000);
}
 
automatizarLogin();