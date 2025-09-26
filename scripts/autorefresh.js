let ventanaDeControl = window.open('', '_blank', 'width=400,height=200');

// This script opens a new window with a timer that refreshes the original window every 60 seconds.
if (ventanaDeControl) {
    // Inyect the HTML content into the new window.
    ventanaDeControl.document.write(`
        <!DOCTYPE html>
        <html>
        <head>
            <title>Control de Recarga</title>
        </head>
        <body>
            <style>
                body {
                    background-position: center;
                    background-color: #030a1d;
                    color: #FFF;

                    background-color: #030a1d;
                    background-image: repeating-linear-gradient(90deg,
                            rgba(175, 238, 238, 0.02) 0,
                            rgba(175, 238, 238, 0.02) 1px,
                            transparent 1px,
                            transparent 40px),
                        repeating-linear-gradient(0deg,
                            rgba(175, 238, 238, 0.02) 0,
                            rgba(175, 238, 238, 0.02) 1px,
                            transparent 1px,
                            transparent 40px);

                    background-size: 40px 40px, 40px 40px, cover, cover;
                    background-position: center center;
                    background-repeat: no-repeat;
                    background-attachment: fixed;

                    font-family: Arial, Helvetica, sans-serif;
                }
            </style>
            <h2>Recargando página...</h2>
            <p>No cierres esta ventana para mantener la recarga.</p>
            <script>

                // Script
                setInterval(() => {
                    if (window.opener && !window.opener.closed) {
                        window.opener.location.reload();
                        console.log('Página original recargada.');
                    } else {
                        // If the original window is closed, stop the timer and close this window.
                        clearInterval(this);
                        document.body.innerHTML = '<h2>Ventana original cerrada.</h2><p>Temporizador detenido.</p>';
                    }
                }, 60000); // 60000 ms = 60 secoonds
            </script>
        </body>
        </html>
    `);
    ventanaDeControl.document.close();
} else {
    console.error('No se pudo abrir la ventana de control. Asegúrate de que los pop-ups estén permitidos.');
}