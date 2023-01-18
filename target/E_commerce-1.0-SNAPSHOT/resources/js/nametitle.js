window.addEventListener("load",function (){

    const nametype = document.querySelectorAll(".name-type");
    const providers = document.querySelector(".form-providers");
    const typePhone = document.querySelector(".form-typephone");
    const caparityRam = document.querySelector(".form-caparity-ram");
    const price = document.querySelector(".form-price");
    document.addEventListener("click",(e)=>{
        let click =e.target;
        if (click == nametype.item(1)){
            providers.style=`display:block`;
        }
        else {
            providers.style=`display:none`;
        }
        if (click == nametype.item(2)){
            typePhone.style=`display:block`;
        }
        else {
            typePhone.style=`display:none`;
        }
        if (click == nametype.item(3)){
            caparityRam.style=`display:block`;
        }
        else {
            caparityRam.style=`display:none`;
        }
        if (click == nametype.item(4)){
            price.style=`display:block`;
        }
        else {
            price.style=`display:none`;
        }
    });
});