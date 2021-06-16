const slidePage = document.querySelector(".slidepage");
const firtNextBtn = document.querySelector(".nextBtn");
const prevBtnSec = document.querySelector(".prev-1");
const nextBtnSec = document.querySelector(".next-1");
const prevBtnThird = document.querySelector(".prev-2");
const submitBtn = document.querySelector(".Submit");
const p_step1 = document.querySelector("#p_step1");
const p_step2 = document.querySelector("#p_step2");
const p_step3 = document.querySelector("#p_step3");

const Check1 = document.querySelector("#check1");
const Check2 = document.querySelector("#check2");
const Check3 = document.querySelector("#check3");


const bullet1 = document.querySelector("#bullet1");
const bullet2 = document.querySelector("#bullet2");
const bullet3 = document.querySelector("#bullet3");



firtNextBtn.addEventListener("click", function(){
  slidePage.style.marginLeft = "-25%";
  bullet1.classList.add("active");
  Check1.classList.add("active");
  p_step1.classList.add("active");
});
nextBtnSec.addEventListener("click", function(){
    slidePage.style.marginLeft = "-50%";
    bullet2.classList.add("active");
    Check2.classList.add("active");
    p_step2.classList.add("active");
});

prevBtnSec.addEventListener("click", function(){
  slidePage.style.marginLeft = "0%";
  bullet1.classList.remove("active");
  Check1.classList.remove("active");
  p_step1.classList.remove("active");
    
});
prevBtnThird.addEventListener("click", function() {
    slidePage.style.marginLeft = "-25%";
    bullet2.classList.remove("active");
    Check2.classList.remove("active");
    p_step2.classList.remove("active");
    bullet3.classList.remove("active");
    Check3.classList.remove("active");
    p_step3.classList.remove("active");
  });
  submitBtn.addEventListener("click", function() {
    bullet3.classList.add("active");
    Check3.classList.add("active");
    p_step3.classList.add("active");
  });