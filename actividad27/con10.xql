for $libro in doc("books.xml")/bib/libro
return <libro>{$libro/titulo}{count($libro/autor)}</libro>