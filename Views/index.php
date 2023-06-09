<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Votación</title>
    <link rel="stylesheet" href="Views/resources/css/votacion.css">
</head>
<body>
    <div id="app">
        <form action="Controllers/ajax/ajax.php" method="POST">
            <div>
                <label for="nombre">Nombre y Apellido</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div>
                <label for="alias">Alias</label>
                <input type="text" id="alias" name="alias" required pattern="^(?=.*[a-zA-Z])(?=.*\d).{6,}$">
            </div>
            <div>
                <label for="rut">RUT</label>
                <input type="text" id="rut" name="rut" required>
            </div>
            <div>
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="regiones">Región</label>
                <select name="region" id="regiones" required>
                    <option disabled selected>Seleccione</option>
                </select>
            </div>
            <div>
                <label for="comunas">Comuna</label>
                <select name="comuna" id="comunas" required></select>
            </div>
            <div>
                <label for="candidato">Candidato</label>
                select
                <select id="candidatos" name="candidato" required></select>
            </div>
            <div>
                <label for="">Como se enteró de nosotros</label>
                <label><input name="fuente[]" required type="checkbox" id="cbox1" class="check" value="web">Web</label>
                <label><input name="fuente[]" required type="checkbox" id="cbox2" class="check" value="tv">Tv</label>
                <label><input name="fuente[]" required type="checkbox" id="cbox3" class="check" value="redes sociales">Redes Sociales</label>
                <label><input name="fuente[]" required type="checkbox" id="cbox4" class="check" value="amigo">Amigo</label>
            </div>
            <input type="hidden" name="funcion" value="guardar">
            <input type="submit">
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="Views/Resources/js/votacion.js"></script>
</body>
</html>