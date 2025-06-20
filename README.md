# Ruby Back-End Challenge

<!-- <div>
  <% @transactions.each do |transaction| %>
    <h2>Transação</h2>
    <p>
      <strong>id:</strong> <%= transaction.id %> <br>
      <strong>data:</strong> <%= transaction.date %> <br>
      <strong>hora:</strong> <%= transaction.time %> <br>
      <strong>Proprietario:</strong> <%= transaction.store.owner_name %><br>
      <strong>Loja:</strong> <%= transaction.store.store_name %> <br>
      <strong>Tipo:</strong> <%= transaction.transaction_type.description %><br>
      <strong>valor:</strong> <%= number_to_currency(transaction.value, unit: "R$ ") %> <br>
    </p>
    <hr>
  <% end %>
</div> -->



<!-- 
<h1>Lojas e Operações</h1>

<% @stores.each do |store| %>
  <div class="store-card">
    <h2><%= store.store_name %></h2>
    <p><strong>Proprietário:</strong> <%= store.owner_name %></p>

    <ul>
      <% store.transactions.each do |transaction| %>
        <% tipo = transaction.transaction_type %>
        <% sinal = tipo.signal == '-' ? '-' : '+' %>
        <li>
          <%= tipo.description %>: <%= sinal %>R$ <%= number_to_currency(transaction.value, unit: "", separator: ",", delimiter: ".") %>
        </li>
      <% end %>
    </ul>

    <% saldo = store.transactions.sum do |t| t.transaction_type.signal == '-' ? -t.value : t.value end %>
    <p><strong>Saldo total:</strong> R$ <%= number_with_precision(saldo, precision: 2, separator: ",", delimiter: ".") %></p>

    <hr>
  </div>
<% end %> -->
