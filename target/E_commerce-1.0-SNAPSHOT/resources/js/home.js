window.addEventListener("load",function (){
    const slides = document.querySelector(".slides");
    const slide = document.querySelectorAll(".slide");
    const bar =document.querySelectorAll(".bar");
    const nextBtn =document.querySelector(".next");
    const prevBtn =document.querySelector(".prev");
    const sliderItemWidth = slide[0].offsetWidth;
    const slidesLength = slide.length;
    let postionX = 0;
    let index=0;
    nextBtn.addEventListener("click",function (){
        handleChangeSlide(1);
    });
    prevBtn.addEventListener("click",function (){
        handleChangeSlide(-1);
    });

    [...bar].forEach(item =>
        item.addEventListener("click",function (e){
            [...bar].forEach(el =>el.classList.remove("active"));
            e.target.classList.add("active");
            const slideIndex = parseInt(e.target.dataset.index);
            index=slideIndex;
            postionX=index * (-sliderItemWidth);
            slides.style=`  margin-left:${postionX}px`;
        })
    );

    function handleChangeSlide(direction){
        if(direction == 1){
            index++;
            postionX=postionX - sliderItemWidth;
            if(index >= slidesLength){
                index=0;
                postionX=0;
            }
            slides.style=` margin-left:${postionX}px`;
        }
        else if (direction == -1){
            index--;
            postionX=postionX + sliderItemWidth
            if(index <0){
                index = slidesLength-1;
                postionX= -(sliderItemWidth * index);
            }
            slides.style=` margin-left:${postionX}px`;
        }
        [...bar].forEach(el =>el.classList.remove("active"));
        bar[index].classList.add("active");

    }
    setInterval(function (){
        handleChangeSlide(1);
    },4000);

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