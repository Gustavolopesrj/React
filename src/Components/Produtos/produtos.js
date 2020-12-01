import React, { useState, useEffect } from 'react';

const ListaProdutos = () => {
    const [prods, setProds] = useState([]);

    useEffect(async () => {
        const url = "http://localhost/www/FullStackEletro_BootstrapAtt/getContent.php?table=produtos";
        const res = await fetch(url);
        setProds(await res.json());
    }, [])

    return (
        <>
        {
            prods.map(row => {
                return (
                    <div key={row.idproduto} className="box_produto bg-white" id={row.categoria}>
                        <img className="itens img-fluid" src={`../../imagens/produtos/${row.imagem}`} alt={row.descricao}  />
                            <br />
                            <p className="descricao">{row.descricao}</p>
                            <p className="descricao" style={{textDecoration: "line-through"}}>R${row.precoinicial}</p>
                            <p className="preco text-danger">R${row.precofinal}</p>
                            <p>Cores: {row.cor}</ p>
                            <hr />
                    </div>
                    
                )
            }
            )}
        </>
    )
}

export default ListaProdutos;