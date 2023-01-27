for $libro in doc("books.xml")/bib/libro
where $libro/editorial="Addison-Wesley" and $libro/@anyo>1992
return <book>{data($libro/titulo)}->{data($libro/@anyo)}</book>