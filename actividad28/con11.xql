for $book in doc ("llibreria.xml")/bookstore/book
let $price_iva := ($book/price *1.21)
order by $price_iva 
return 
<libro> 
    <titulo> {$book/title/text()} </titulo>
    <precio> {$book/price/text()} €</precio>
    <precio_iva> {$price_iva} €</precio_iva>
</libro>