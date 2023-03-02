for $book in doc("llibreria.xml")/bookstore/book
order by $book/@category, $book/title
return $book