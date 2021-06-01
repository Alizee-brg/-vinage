const listenFocus = () => {
  const searchBtn = document.getElementById("search-caller");

  const searchBar = document.getElementById("query");
  searchBtn.addEventListener("click", (e) => {
    e.preventDefault();
    searchBar.focus();
  });
};
export { listenFocus };
