export default function FormIndex() {
    return (
        <div>
        <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputEmail4">Nome</label>
          <input type="Nome" class="form-control" id="inputNome" />
        </div>
        <div class="form-group col-md-6">
          <label for="inputSobrenome">Sobrenome</label>
          <input type="password" class="form-control" id="inputSobrenome" />
        </div>
      </div>
      <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputEmail">E-mail</label>
        <input type="text" class="form-control" id="inputEmail" />
      </div>
      <div class="form-group col-md-6">
        <label for="inputTel">Telefone</label>
        <input type="text" class="form-control" id="inputTel" placeholder="Ex:2199934-5073" />
      </div>
      </div>
      <div class="form-group">
        <label for="inputAddress2">Endereço</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Rua, Avenida, Travessa, Alameda..." />
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputCidade">Cidade</label>
          <input type="text" class="form-control" id="inputCidade" />
        </div>
        <div class="form-group col-md-4">
          <label for="inputEstado">Estado</label>
          <select id="inputEstado" class="form-control">
            <option selected>Amazonas</option>
            <option>Minas Gerais</option>
            <option>São Paulo</option>
            <option>Rio de Janeiro</option>
            <option>Rio Grande do Sul</option>
          </select>
        </div>
        <div class="form-group col-md-2">
          <label for="inputCep">CEP</label>
          <input type="text" class="form-control" id="inputCep" placeholder="Ex:21342-040" />
        </div>
      </div>
      <button type="submit" class="btn btn-primary">Enviar</button>
      </div>
)

}