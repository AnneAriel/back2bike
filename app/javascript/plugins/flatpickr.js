export const init = () => {

  const startDate = document.getElementById("reservation_start_date");
const endDate = document.getElementById("reservation_end_date");

const dynamicPrice = () => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
  let nbrOfDays = dateDiffInMilliseconds / 86400000;
};

dynamicPrice();

console.log(startDate);
console.log(dynamicPrice());

[startDate, endDate].forEach(date => {
  date.addEventListener("change", (event) => {
    dynamicPrice();
  });
})


const totalDays = document.getElementById("total-days")

//const totalDays = dynamicPrice();

// [...]

const dynamicPriceCalculator = () => {
  if(startDate.value && endDate.value) {
    totalDays.innerText = nbrOfDays
  }
};

const bikePricePerDay = document.getElementById("bike-price-per-day").innerText;
const totalPriceElement = document.getElementById("total-price");

if(startDate.value && endDate.value) {
  // [...]
  totalPriceElement.innerText = nbrOfdays * bikePricePerDay
}

}
