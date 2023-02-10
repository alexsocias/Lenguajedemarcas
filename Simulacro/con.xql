for $baile in doc("baile.xml")/academia/baile
return concat(($baile/nombre),($baile/profesor),($baile/precio))