
  function navFunction() {
    var navDropdownContent = document.querySelector('#nav .nav-dropdown-content');
    var navDropdownIcon = document.querySelector('#nav .angle-down .fa-angle-down');
    if (navDropdownContent.style.display === "none") {
        navDropdownContent.style.display = "block";
        navDropdownIcon.style.transform = "rotate(180deg)";
    }
    else{
        navDropdownContent.style.display = "none";
        navDropdownIcon.style.transform = "rotate(360deg)";
    }
}

function showNav() {
    var nav = document.getElementById("nav");
    nav.style.display = "block";
    // setTimeout(() => {
    //     nav.className = nav.className.replace("show","")
    // }, 2000);
}

function closeNav() {
    var nav = document.getElementById("nav");
    nav.style.display ="none";
}


function showShoppingCart() {
    var shoppingCart = document.getElementById("shopping-cart")
    shoppingCart.style.display = "flex";
}

function closeShoppingCart() {
    var shoppingCart = document.getElementById("shopping-cart");
    shoppingCart.style.display = "none";
}
       





