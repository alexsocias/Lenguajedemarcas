for $libro in doc("books.xml")/bib/libro
order by $libro/@anyo
return <book>{data($libro/@anyo)}->{data($libro/titulo)}</book>
