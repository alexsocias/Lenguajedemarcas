for $baile in doc("baile.xml")/academia/baile
where $baile/sala= 2 and $baile/precio < 35
return <baile> Baile: {data($baile/nombre)}; precio:{data($baile/precio)}; plazas: {data($baile/plazas)}; inicio: {data($baile/inicio)}; fin: {data($baile/finalizacion)}; dias: {data($baile/dias)}; profesor: {data($baile/profesor)}; sala {data($baile/nombre)};{data($baile/sala)};</baile>