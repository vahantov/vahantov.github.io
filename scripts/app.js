'use strict'

document.createElement('popup-toggle')

function $(item, count) {
    if ( !count ) {
        return document.querySelector(item)
    } else {
        return document.querySelectorAll(item)
    }
}

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

function callPopup() {

    const btn = $('.nav .number'),
        popup = $('.nav .popup')

    btn.addEventListener('click', () => {
        if ( popup.classList.contains('active') ) {
            popup.classList.remove('active')
        } else {
            (async function() {
                await popup.classList.add('active')

                window.addEventListener('click', (event) => {
                    if ( event.target !== btn && event.target !== popup && event.target.parentNode !== popup ) {
                        popup.classList.remove('active')
                    }
                })

                window.addEventListener('scroll', () => {
                    popup.classList.remove('active')
                })
            })()
        }
    })
}

window.addEventListener('DOMContentLoaded', function () {

    if ( $('.call_to_action')) {
        spinningButton()
    }

    if ( $('.nav .popup')) {
        callPopup()
    }

})