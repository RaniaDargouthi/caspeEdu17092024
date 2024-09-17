<html lang="en" dir="rtl">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Inclusion de Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<!-- General CSS File -->




<style>
    .triangle-button {
      width: 80px; /* Adjust the size of the button */
      height: 80px;
      background-color: transparent; /* Transparent background */
      border: none;
      cursor: pointer;
      position: relative;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: transform 0.2s;
    }
    
    .triangle-button:hover {
      transform: scale(1.1); /* Zoom effect on hover */
    }
    
    .triangle-icon {
      width: 80%; /* Fill the button */
      height: 80%;
      fill: #007bff; /* Blue color for the triangle */
    }
    
    .arrow-icon {
      position: absolute;
      width: 30px; /* Adjust the size of the arrow */
      height: 30px;
      fill: white; /* White color for the arrow */
      margin-top: 20px;
    }
    
    #verif {
      width: 100px;
      height: 100px;
      color: #05c548; /* Green color for the verification icon */
      display: inline-block;
      border-radius: 50%; /* Makes the background circular */
      font-size: 40px; /* Increases the icon size */
      text-align: center;
      line-height: 80px; /* Vertically centers the icon */
      margin-top: 40px
    }
    .rep {
      margin: 0 20px 0 20px;
    }
    </style>
<div class="container">
    <div class="row mt-5 mx-auto bg-warning  border border-success rounded" id="entete">
      <div class="col align-self-center mt-3">
        <p class="text-center fs-5 mx-auto"> الْمُسْتَوَى الْأَوَّلُ: الْأَحْيَاءُ</p>
      </div>
      <div class="col align-self-center mt-3">
        <p class="text-center fs-5 mx-auto"> جِسْمُ الْإِنْسَانِ: أُبْصِرُ بِعَيْنِي </p>
      </div>
    </div>

    <div class="row w-75 d-flex mt-1" id="question" >
      <div class="col-md-1" dir="ltr" >
          <i class="bi bi-volume-up-fill fs-2 mt-3" type="button"></i>
      </div>
      <div class="col-md-9">
        <p class="mt-3 fs-5" id="quest" >أَضْغَطُ عَلَى الْجَوَابِ666 الْمُنَاسِبِ:</p>
      </div>
    </div>
  </div>
  <div class="container mt-4 mx-auto text-center" id="words">

    <div class="row align-items-center mt-3">
      <div class="col-4">
        <p class="mt-5 fs-4 custom-font">الْعَيْنُ هِيَ:</p>
      </div>
    </div>

    <div class="row mx-auto justify-content-center align-items-center w-50 mt-3">
      <div class="col-4 mx-auto bg-light border border-success rounded fs-4 rep mb-3" style="align-items: center;" id="rep1" type="button" onclick="colorSelected('rep1')"> 
          عُضْوُ السَّمْعِ
      </div>
      <div class="col-3 mx-auto fs-4 rep bg-light border border-success rounded mb-3" style="align-items: center;" id="rep2" type="button" onclick="colorSelected('rep2')"> 
          عُضْوُ الرُّؤْيَةِ
      </div>
      <div class="col-3 mx-auto fs-4 rep bg-light border border-success rounded mb-3" style="align-items: center;" id="rep3" type="button" onclick="colorSelected('rep3')"> 
          عُضْوُ الشَّمِ
      </div>
  </div>
  
  

    <div class="row mx-auto align-items-center w-75" id="cart" style="display: none;">
      <div class="col-6 mx-auto">
        <p id="p2" class="shake" style='font-size:40px;margin: auto;'>&#128534;</p>
      </div>
      <div class="col-6 mx-auto">
        <p id="p3" class="shake" style='font-size:40px;margin: auto;'>&#128534;</p>
      </div>
    </div>
  </div>


  <div class="container text-center">
    <div class="row mx-auto d-flex flex-row justify-content-center align-items-center">
      
      <!-- First Triangle Button -->
      <div class="col  align-items-center">
      <div class="container mt-5 d-flex justify-content-center">
        <button class="triangle-button" onclick='window.location.href="index1.html"'>
          <svg xmlns="http://www.w3.org/2000/svg" class="bi bi-triangle-fill triangle-icon" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M7.022 1.566a1.13 1.13 0 0 1 1.96 0l6.857 11.667c.457.778-.092 1.767-.98 1.767H1.144c-.889 0-1.437-.99-.98-1.767z"/>
          </svg>
          <svg xmlns="http://www.w3.org/2000/svg" class="bi bi-arrow-90deg-right arrow-icon" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M14.854 4.854a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 4H3.5A2.5 2.5 0 0 0 1 6.5v8a.5.5 0 0 0 1 0v-8A1.5 1.5 0 0 1 3.5 5h9.793l-3.147 3.146a.5.5 0 0 0 .708.708z"/>
          </svg>
        </button>
      </div>
      </div>

      <!-- Verification Icon -->
      <div class="col align-items-center">
        <p class="align-center">
          <i class="bi bi-patch-check-fill" type="button" onclick="verification()" id="verif"></i>
        </p>
      </div>

      <!-- Second Triangle Button -->
      <div class="col  align-items-center">
      <div class="container mt-5 d-flex justify-content-center">
        <button class="triangle-button" onclick='window.location.href="index1.html"'>
          <svg xmlns="http://www.w3.org/2000/svg" class="bi bi-triangle-fill triangle-icon" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M7.022 1.566a1.13 1.13 0 0 1 1.96 0l6.857 11.667c.457.778-.092 1.767-.98 1.767H1.144c-.889 0-1.437-.99-.98-1.767z"/>
          </svg>
          <svg xmlns="http://www.w3.org/2000/svg" class="bi bi-arrow-90deg-left arrow-icon" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708z"/>
          </svg>
        </button>
      </div>
    </div>
  </div>
  </div>
  <div class="row-fluid mb-3">
    <p class="text-center" id="copyright">جميع الحقوق محفوظة © المركز العربي للخدمات التربوية بكندا - Arab Center Of
      Educational Services canada 2024</p>
  </div>


                                 
<?php /**PATH /home/ranya/Bureau/caspeeducation 1709/resources/views/web/default/pages/quizzes/reading/r1.blade.php ENDPATH**/ ?>