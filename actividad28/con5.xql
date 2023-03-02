for $book in doc("llibreria.xml")/bookstore/book
where $book/year=2005
return <lib2005><titulo>{data($book/title)}</titulo><autor>{data($book/author)}</autor></lib2005>