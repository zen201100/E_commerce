window.addEventListener("load",function (){

    const myAccount = document.querySelector(".form-my-account");
    const avata = document.querySelector(".avata");
    const namettcn = document.querySelector(".name-tt-cn");
    document.addEventListener("click",(e)=>{
        let clickedElem = e.target;
        if(clickedElem == avata || clickedElem == namettcn){
            myAccount.style= `display:block `;
        }
        else {
            myAccount.style= `display:none `;
        }

    });

});