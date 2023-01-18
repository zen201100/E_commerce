window.addEventListener("load",function (){

    const rowttcn = document.querySelector(".row-tt-cn");
    const formtt = document.querySelector(".form-tt");
    const rowinfor = document.querySelector(".row-infor");

    document.addEventListener("click",(e)=>{
        let clickedElem = e.target;
        if(clickedElem == rowttcn){
            rowttcn.style= `display:none `;
            formtt.style= `display:block;padding-bottom:10px `;
        }

        if(clickedElem == rowinfor){
            rowttcn.style= `display:block `;
            formtt.style= `display:none `;
        }
    });
});