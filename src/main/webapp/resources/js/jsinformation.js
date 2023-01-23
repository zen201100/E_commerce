window.addEventListener("load",function (){

    const myAccount = document.querySelector(".form-my-account");
    const avata = document.querySelector(".avata");
    const namettcn = document.querySelector(".name-tt-cn");
    const colmyaccount = document.querySelector(".col-my-account");
    const username = document.querySelectorAll(".userid-name");
    document.addEventListener("click",(e)=>{
        let clickedElem = e.target;
        if(clickedElem == avata || clickedElem == namettcn || clickedElem==colmyaccount ||
            clickedElem==username.item(0) || clickedElem==username.item(1)){
            myAccount.style= `display:block `;
        }
        else {
            myAccount.style= `display:none`;
        }
    });

});