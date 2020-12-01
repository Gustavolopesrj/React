import '../../estilos/estilos.css'

export default function Categorias () {
    return (
        <div>
            <header>
                <h2 className="display-4">Produtos</h2>
                <hr />
            </header>
            <section className="categorias">
                <h3 className="text-center">Categorias</h3>
                <ul className="list-group ulCat">
                    <li onclick="exibir_todos()" className="list-group-item ">Todos (15)</li>
                    <li onclick="exibir_categoria('Ação')" className="list-group-item">Ação (3)</li>
                    <li onclick="exibir_categoria('Corrida')" className="list-group-item">Corrida (3)</li>
                    <li onclick="exibir_categoria('Luta')" className="list-group-item">Luta (3)</li>
                    <li onclick="exibir_categoria('Tiro')" className="list-group-item">Tiro (3)</li>
                    <li onclick="exibir_categoria('RPG')" className="list-group-item">RPG (3)</li>
                </ul>
            </section>
        </div>
    )
}