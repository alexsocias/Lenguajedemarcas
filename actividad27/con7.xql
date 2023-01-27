for $libro in doc("books.xml")/bib/libro
where $libro/empty(autor)
return <book>{data($libro/titulo)}->{data($libro/@anyo)}</book>
