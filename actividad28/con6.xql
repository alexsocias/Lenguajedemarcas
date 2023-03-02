for $book in doc("llibreria.xml")/bookstore/book
let $a := data ($book/year)
let $b := data ($book/title)
return <publicacion> {$a} ; {$b} </publicacion>