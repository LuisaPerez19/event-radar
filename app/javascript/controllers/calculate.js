calculateTotalPrice();

function calculateTotalPrice() {
  var pricePerTicket = parseFloat(
    document.getElementById("price_per_ticket").value
  );
  var ticketCount = parseFloat(document.getElementById("ticket_count").value);
  var total = pricePerTicket * ticketCount;
  updateTotalPrice(total);
}

function updateTotalPrice(total) {
  document.getElementById("display_total_price").textContent = total.toFixed(2);
}

document.getElementById("ticket_count").addEventListener("input", function () {
  calculateTotalPrice();
});
