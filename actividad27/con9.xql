for $libro in doc("books.xml")/bib/libro
return <result>
{$libro/titulo}{$libro/autor}
</result>