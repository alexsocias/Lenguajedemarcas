for $book in doc("llibreria.xml")/bookstore/book
where $book/price<=30
return data($book/title)