window.addEventListener("load",function (){

    const productsSale = document.querySelector(".products-sale");
    const prsl = document.querySelectorAll(".col-prsl");
    const productsSaleLength = prsl.length;
    const width = prsl[0].offsetWidth;
    let postionX = 0;
    let index = 0;

    const nextPrsl =document.querySelector(".next-prsl");
    const prevPrsl =document.querySelector(".prev-prsl");


    nextPrsl.addEventListener("click",function (){
        handleChangePrsl(1);
    });
    prevPrsl.addEventListener("click",function (){
        handleChangePrsl(-1);
    });

    function handleChangePrsl(direction){
        if(direction == 1){
            if (index >=productsSaleLength-4){
                return;
            }
            else {
                index ++;
                postionX = postionX - width;
                productsSale.style = `transform: translateX(${postionX}px)`;
            }
        }
        else if(direction == -1){
            if(index <= 0){
                return;
            }
            else {
                index --;
                postionX = postionX + width;
                productsSale.style = `transform: translateX(${postionX}px)`;
            }
            console.log(index);
            console.log(productsSaleLength);
        }
    }

});