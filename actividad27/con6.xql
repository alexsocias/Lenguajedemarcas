for $libro in doc("books.xml")/bib/libro
where $libro[count(autor)>1]
return <book>{data($libro/titulo)}->{data($libro/@anyo)}</book>
