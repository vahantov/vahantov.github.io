'use strict'

function spinningButton () {
    const boxes = document.querySelectorAll('.call_to_action')

    boxes.forEach(elem => {
        const btn = elem.querySelector('.btn'),
            img = elem.querySelector('.button img')

            btn.addEventListener('mouseover', async () => {
                if ( !img.classList.contains('active') ) {
                    await img.classList.add('active')
                    
                    btn.addEventListener('mouseout', () => {
                        img.addEventListener('webkitAnimationIteration', () => {
                            img.classList.remove('active')
                        }, {
                            once: true
                        })
                    }, {
                        once: true
                    })
                }
            })
    });
}

window.addEventListener('DOMContentLoaded', function () {

    if ( document.getElementsByClassName('call_to_action') ) {
        spinningButton()
    }

})