window.addEventListener("load",function (){

    const promotion = document.querySelector(".form-promotion");
    const prmt = document.querySelectorAll(".col-promotion");
    const pmtLength = prmt.length;
    const width = prmt[0].offsetWidth;
    let postionX = 0;
    let index = 0;

    const nextPmt =document.querySelector(".next-pmt");
    const prevPmt =document.querySelector(".prev-pmt");


    nextPmt.addEventListener("click",function (){
        handleChangePmt(1);
    });
    prevPmt.addEventListener("click",function (){
        handleChangePmt(-1);
    });

    function handleChangePmt(direction){
        if(direction == 1){
            if (index >=pmtLength-4){
                return;
            }
            else {
                index ++;
                postionX = postionX - width;
                promotion.style = `transform: translateX(${postionX}px)`;
            }
        }
        else if(direction == -1){
            if(index <= 0){
                return;
            }
            else {
                index --;
                postionX = postionX + width;
                promotion.style = `transform: translateX(${postionX}px)`;
            }
            console.log(index);
            console.log(pmtLength);
        }
    }

});