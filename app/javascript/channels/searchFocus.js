const listenFocus = () => {
  const searchBtn = document.getElementById("search-caller");
  const searchContain = document.getElementById("search-form");

  const searchBar = document.getElementById("query");
  searchBtn.addEventListener("click", (e) => {
    e.preventDefault();
    searchContain.classList.toggle("bar-active");
    searchBar.focus();
  });
};
export { listenFocus };
