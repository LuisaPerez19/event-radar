// function increase (pricePerTicket, ticketCount) {
//   if (isNaN(pricePerTicket) || isNaN(ticketCount)) {
//     return total;
//   }

//   let total = pricePerTicket * ticketCount;
//   updateTotalPrice(total);
// }
// function calculateTotalPrice(e){
//   let pricePerTicket = parseFloat(document.getElementById("price_per_ticket").value)
//   let ticketCountElement = e.target;
//   let ticketCount = parseFloat(ticketCountElement.value)
//   increase(pricePerTicket, ticketCount)
// }

// function updateTotalPrice(total) {
//   document.getElementById("display_total_price").textContent = total.toFixed(2);
// }
// document.addEventListener("DOMContentLoaded", function() {
//   const ticketCountElement = document.getElementById("ticket_count");
//   ticketCountElement.addEventListener("input",
//    (e) => calculateTotalPrice(e));
// })
