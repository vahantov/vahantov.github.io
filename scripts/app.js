'use strict'

function $(item, arr) {
    if ( !arr ) {
        return document.querySelector(item)
    } else {
        return document.querySelectorAll(item)
    }
}

function callPopup() {

    const btn = $('.nav .number'),
        popup = $('.nav .popup')

    btn.addEventListener('mouseover', () => {
        if ( popup.classList.contains('active') ) {
            popup.classList.remove('active')
        } else {
            (async function() {
                await popup.classList.add('active')

                /*window.addEventListener('click', (event) => {  // убираем попап при уходе мышки
                    if ( event.target !== btn && event.target !== popup && event.target.parentNode !== popup ) {
                        popup.classList.remove('active')
                    }
                })*/
                popup.addEventListener("mouseleave", () => {
                    popup.classList.remove('active')
                })
               /* window.addEventListener('scroll', () => { // Убираем попал при скроле
                    popup.classList.remove('active')
                })*/
            })()
        }

    })
}

function halfUp () {
    const node = $('.half-up', true)

    node.forEach(item => {
        item.style.marginTop = '-' + item.clientHeight / 2 + 'px'
    })
}

function thirdUp() {
    const node = $('.third-up', true)

    node.forEach(item => {
        item.style.marginTop = '-' + item.clientHeight / 3 + 'px'
    })
}

window.addEventListener('DOMContentLoaded', function () {

    if ( $('.nav .popup')) {
        callPopup()
    }

    if ( $('.half-up')) {
        halfUp()
    }

    if ( $('.third-up')) {
        thirdUp()
    }

})