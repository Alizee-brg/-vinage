const formBottles = () => {
  const inputQuantity = document.getElementById("stock_quantity");
  const btnLess = document.getElementById("btn-select-less");
  const btnMore = document.getElementById("btn-select-more");
  if (inputQuantity && btnLess && btnMore) {
    btnLess.addEventListener("click", (event) => {
      if (Number(inputQuantity.value) > 0) {
        inputQuantity.value = Number(inputQuantity.value) - 1;
      }
    });
    btnMore.addEventListener("click", (event) => {
      inputQuantity.value = Number(inputQuantity.value) + 1;
    });
  }
};

export { formBottles };
