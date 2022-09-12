let menu = document.querySelectorAll("#test li");
let selector = document.getElementById("test");
let aTag = document.getElementsByTagName('a');
let liTest2 = document.getElementsByClassName('test2');

// document.querySelector('ul li ').addEventListener('mouseover',function(e){
//     e.target.style.backgroundColor="red"});

var test = document.querySelectorAll('ul#test li');
///hover for looop ul li
for (let index = 0; index < test.length; index++) {

    test[index].addEventListener('mouseover',function(e){
        e.target.style.backgroundColor = 'cadetblue';
    });

    test[index].addEventListener('mouseout',function(e){
        e.target.style.backgroundColor = 'white';
    });
};

////mouse hover
// menu.addEventListener('mouseover', function(e){
//     e.target.style.color = 'red';
//     e.target.style.backgroundColor="#e1e1e1";
// });

// menu.addEventListener('mouseout', function(e){
//     e.target.style.color = 'green';
//     e.target.style.backgroundColor = 'white';
// });



///languages skill
let skillHighlight = document.getElementById('skillsAddClass');
///if else if is home list my programming skill
if(window.location.pathname == "/kent/week7/brief1/index.php"){
    let mySkills1 = document.getElementById('mySkills');
    skills1 = ['html','css','javascript','PHP','sql','love'];
    let txt = '';
    for (let index = 0; index < skills1.length; index++) {
         mySkills1.innerHTML += '<li>' + skills1[index] + '</li>';
        
    }
    

///highlight my skills
skillHighlight.onclick = function name() {
    // this.classList.add('hoverAllElementshover');
    this.classList.toggle('hoverAllElementshover');
}
}else{
    console.log(window.location);
}


function changeColor(z){
    if(z.style.color == 'red'){
        z.style.color = 'green';
     }else{
       z.style.color = 'red'; 
     }
}


function myFunction() {
    var element = document.getElementById("myDIV");
    element.classList.toggle("mystyle");
 }

console.log("hello world");