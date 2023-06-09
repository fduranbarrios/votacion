$(document).ready(function () {
    //CARGA DE REGIONES
    let funcion = "obtenerRegiones";
    $.ajax({
        url: "Controllers/ajax/ajax.php",
        data: { funcion: funcion },
        method: "GET",
        datatype: "json",
        success: function (response) {
        let data = JSON.parse(response);
        html = "";
        $.each(data, function (index, item) {
            html += '<option value="' + item.id + '">' + item.nombre + "</option>";
        });
        $("#regiones").append(html);
        },
        error: function (error) {
        console.log(error);
        },
    });
    //CARGA CANDIDATOS
    funcion = "obtenerCandidatos";
    $.ajax({
        url: "Controllers/ajax/ajax.php",
        data: { funcion: funcion },
        method: "GET",
        datatype: "json",
        success: function (response) {
        let data = JSON.parse(response);
        console.log(data);
        html = "";
        $.each(data, function (index, item) {
            html += '<option value="' + item.id + '">' + item.nombre + "</option>";
        });
        $("#candidatos").append(html);
        },
        error: function (error) {
            console.log(error);
        },
    });
    //CARGA DE COMUNAS SEGUN LA REGION ELEGIDA
    $("#regiones").change(function () {
        let region = $(this).val();
        let funcion = "buscarComuna";
        $.ajax({
            url: "Controllers/ajax/ajax.php",
            data: { funcion: funcion, region: region },
            method: "GET",
            datatype: "json",
            success: function (response) {
                console.log(response);
                let data = JSON.parse(response);
                html = "";
                $.each(data, function (index, item) {
                html +=
                    '<option value="' + item.id + '">' + item.nombre + "</option>";
                });
                $("#comunas").empty().append(html);
            },
            error: function (error) {
                console.log(error);
            },
        });
    });
    //VALIDAR RUT
    $("#rut").change(function () {
        rut = $(this).val();
        if(!validarRutChileno(rut)){
            alert("rut invalido");
            $(this).val("");
        }else{
            var rutFormateado = formatearRutChileno(rut);
            $(this).val(rutFormateado);
        }
    });

    function validarRutChileno(rut) {
        rut = rut.replace(/[.-]/g, '');

        if(!/^[0-9]{1,8}[0-9kK]{1}$/.test(rut)){
            return false;
        }
    
        var rutNumero = rut.slice(0, -1);
        var rutDV = rut.slice(-1).toUpperCase();
        var dvEsperado = calcularDV(rutNumero);
    
        return rutDV === dvEsperado;
    }

    function calcularDV(rutNumero) {
        var suma = 0;
        var multiplo = 2;
    
        for (var i = rutNumero.length - 1; i >= 0; i--) {
          suma += rutNumero.charAt(i) * multiplo;
          multiplo = multiplo >= 7 ? 2 : multiplo + 1;
        }
    
        var resto = suma % 11;
        var dv = 11 - resto;
        if(dv === 11){
          dv = 0;
        }else if(dv === 10) {
          dv = 'K';
        }
    
        return dv.toString();
    }
    function formatearRutChileno(rut) {
        rut = rut.replace(/[.-]/g, '');
    
        if (!/^[0-9]{1,8}[0-9kK]{1}$/.test(rut)) {
          return rut;
        }
    
        var rutNumero = rut.slice(0, -1);
        var rutDV = rut.slice(-1).toUpperCase();
        var rutFormateado = rutNumero.replace(/\B(?=(\d{3})+(?!\d))/g, '.') + '-' + rutDV;
    
        return rutFormateado;
    }

    //VALIDAR QUE SE CHECKEN DOS OPCIONES MINIMO
    $(".check").click(function(){
        let minCheck = 2;
        let checkSelected = $(".check:checked");
        if(checkSelected.length >= minCheck){
            $(".check").each(function(){
                var isChecked = $(this).prop('checked');
                if(!isChecked){
                    $(this).removeAttr("required");
                }
            })
        }else{
            $(".check").each(function(){
                $(this).prop("required",true);
            })
        }
    })
});
