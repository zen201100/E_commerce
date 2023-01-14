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
            slides.style=`margin-left:${postionX}px`;
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
            slides.style=`margin-left:${postionX}px`;
        }
        else if (direction == -1){
            index--;
            postionX=postionX + sliderItemWidth
            if(index <0){
                index = slidesLength-1;
                postionX= -(sliderItemWidth * index);
            }
            slides.style=`margin-left:${postionX}px`;
        }
        [...bar].forEach(el =>el.classList.remove("active"));
        bar[index].classList.add("active");

    }
    setInterval(function (){
        handleChangeSlide(1);
    },4000);

});