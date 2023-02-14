const enemy = document.querySelector('.enemy');
const over = document.querySelector('.dark-mario');


let mario = null;

function init() {
    mario = document.getElementById("mario");
    mario.style.position = "absolute";
    mario.style.left = "0px";
    mario.style.top = "470px";
}
function getKeyAndMove(e) {
    var key_code = e.which || e.keyCode;
        switch (key_code) {
            case 37: //left arrow key
             moveLeft();
             break;
                    
            case 39: //right arrow key
             moveRight();
             break;

            case 38:
             jump();
             break;
    }
}

function moveLeft() {
    mario.style.left = parseInt(mario.style.left) - 5 + "px";
}

function moveRight() {
    mario.style.left = parseInt(mario.style.left) + 5 + "px";
}
            
window.onload = init;


function jump() {
    mario.classList.add('jump');

    setTimeout(() => {
        mario.classList.remove('jump')
    }, 500)
}

const loop = setInterval(() => {
    const enemyPosition = enemy.offsetLeft;
    const marioPosition = +window.getComputedStyle(mario).bottom.replace('px', '');

    if(enemyPosition <= 600 && enemyPosition > 0 && marioPosition < 80){
        enemy.style.animation = 'none';
        enemy.style.left = `${enemyPosition}px`;

        mario.style.animation = 'none';
        mario.style.left = `${marioPosition}px`;

        
        mario.src = 'img/mario-sleep.gif'
        mario.style.width = '200px'
        mario.style.marginLeft = '200px'
        mario.style.top = '470px'

        over.src = 'img/dark-mario.gif';

        clearInterval(loop);
    }
}, 10);

document.addEventListener('keydown', jump)

