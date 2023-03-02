for $book in doc("llibreria.xml")/bookstore/book
let $a := count ($book)
return <libros> <titulos> {data($book/title)} </titulos> ; <total> {count($book)} </total> </libros>