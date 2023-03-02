
for $book in doc ("llibreria.xml")/bookstore
return <total> {count($book/book)}</total>