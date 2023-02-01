window.addEventListener("load",function (){

    // Get the modal
    var modal = document.getElementById("myModal");

// Get the button that opens the modal
    var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
    btn.onclick = function() {
        modal.style.display = "block";
    }

// When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        let e = event.target;
        console.log(e);
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    const pttt1 = document.querySelector(".pttt1");
    const pttt2 = document.querySelector(".pttt2");
    const submitorder = document.querySelector(".submit-order");

    pttt1.addEventListener("click",function (){
        btn.style=`display:none`;
        submitorder.style=`display:block`;
    });
    pttt2.addEventListener("click",function (){
        btn.style=`display:block`;
        submitorder.style=`display:none`;
    });

});