<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CON11</title>
</head>
<body>
    <h1>
        Listado de libros
    </h1>
    <table border="1px">
        <tr>
                <th>Título:</th>
                <th>Editorial:</th>
                <th>Precio:</th>
        </tr>
        {
            for $libro in doc("books.xml")/bib/libro

        return <tr>
            <td text-align="left">{data($libro/titulo)}</td>
            <td text-align="left">{data($libro/editorial)}</td>
            <td text-align="right">{data($libro/precio)}</td>
        </tr>
        }
    </table>
</body>
</html>

