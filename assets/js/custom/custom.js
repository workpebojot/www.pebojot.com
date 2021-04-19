// Event Bus Architecture
window.addEventListener('click', Button.bind(this));

function Button(event) {
    event.path[0].id === "menu" || "menu-src" ? Menu() : null;
}

function Menu() {
    const menu = document.getElementById("menu-src");
    const regex = new RegExp("menu.webp", );
    if (regex.test(menu.src)) {
        menu.src = "/assets/images/menu-close.webp";
        const menuTab = document.getElementById("menu-tab");
        menuTab.setAttribute("style", "visibility: visible;display: block;")
        const menuContent = document.getElementById("menu-content");
        menuContent.style.visibility = "hidden";
    } else {
        menu.src = "/assets/images/menu.webp";
        const menuTab = document.getElementById("menu-tab");
        menuTab.setAttribute("style", "visibility: hidden;display: none;")
        const menuContent = document.getElementById("menu-content");
        menuContent.style.visibility = "visible";
    }
/* 
    const offcanvas = document.getElementById("offcanvas");
    if (offcanvas.className === "offcanvas") {
        offcanvas.style.visibility = "visible";
        offcanvas.className = "offcanvas offcanvas-bottom show";
    } */
}