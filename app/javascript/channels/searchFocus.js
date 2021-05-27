const listenFocusTest = () => {
  const searchBtn = document.getElementById("search-caller");

  const searchBar = document.getElementById("search-form");
  searchBtn.addEventListener("click", (e) => {
    e.preventDefault();
    searchBar.focus();
    console.log("focus");
    return True;
  });
};
export { listenFocusTest };
