import '../../estilos/estilos.css'

export default function Lojas() {
    return (
        <div>
            <main>
                <header>
                    <h2 class="display-4">Nossas lojas</h2>
                </header>
                <hr />
                    <div class="row">
                        <div class="container_lojas">
                            <div class="lojas">
                                <h3>Rio de Janeiro</h3>
                                <p>Avenida Olegário Maciel, Nº 438</p>
                                <p>15º andar</p>
                                <p>Barra</p>
                                <p>(21) 4141-4026</p>
                            </div>

                            <div class="lojas">
                                <h3>São Paulo</h3>
                                <p>Avenida São João, Nº 439</p>
                                <p>2º andar</p>
                                <p>República</p>
                                <p>(11) 3576-9834</p>
                            </div>

                            <div class="lojas">
                                <h3>Curitiba</h3>
                                <p>Rua Conselheiro Laurindo, Nº 809</p>
                                <p>4º andar</p>
                                <p>Centro</p>
                                <p>(41) 2587-3567</p>
                            </div>
                        </div>
                    </div>
            </main>
        </div>
    )
}