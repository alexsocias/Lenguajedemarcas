for $book in doc("llibreria.xml")/bookstore/book
return <titulo> {data($book/title)} </titulo>