import '../../estilos/estilos.css'

export default function Jumbo() {
    return (
        <div>
            <div className="jumbotron">
                <h2 className="mb-4">Sejam bem-vindos!</h2>
                <p>Aqui em nossa loja, compras acima de <b>R$ 100,00</b>, tem <b><i>frete grátis</i></b> para todo o país.</p>
                <a href="produtos.php" class="btn bg-warning">Clique aqui para ver nossos produtos!</a>
            </div>
            <hr />
            <div>
                <h2 className="mb-5 text-danger">Faça seu cadastro e fique por dentro de nossas novidades.</h2>
            </div>
        </div>

    )

}