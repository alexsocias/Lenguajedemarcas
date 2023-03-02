for $book in doc("llibreria.xml")/bookstore/book[price<=30]
return data($book)