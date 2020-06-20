'use strict'

function $$(item, arr) {
    if ( !arr ) {
        return document.querySelector(item)
    } else {
        return document.querySelectorAll(item)
    }
}

function forms() {
    const forms = document.querySelectorAll('form')

    forms.forEach(item => {
        const inputs = item.querySelectorAll('input[required]'),
            btn = item.querySelector('button[type="submit"]')

        inputs.forEach(elem => {
            elem.addEventListener('input', () => {

                let pos = 0

                for (let i = 0; i !== inputs.length; i++) {
                    if ((inputs[i].value !== '' && inputs[i].value !== ' ') && !inputs[i].classList.contains('checkbox-required')) {
                        pos++
                    } else if (inputs[i].classList.contains('checkbox-required') && inputs[i].checked === true) {
                        pos++
                    }

                    if ( i === inputs.length - 1 && pos === inputs.length ) {
                        btn.disabled = false
                    } else if ( i === inputs.length - 1 && pos !== inputs.length) {
                        btn.disabled = true
                    }
                }
            })
        })
    })
}

function modal() {
    const btn = $$('.modal-handler', true)

    btn.forEach(item => {
        item.addEventListener('click', () => {
            let modal = document.querySelector('#' + item.dataset.modal),
                body = $$('body')

            modal.classList.add('active')


            if ( modal.querySelector('form') ) {
                const form = modal.querySelector('form'),
                    formBox = modal.querySelector('.form')

                form.addEventListener('submit', event =>  {
                    event.preventDefault()
                    /*AJAX*/

                    // On success
                    const success = modal.querySelector('.success'),
                        descr = modal.querySelector('.descr')

                    descr.querySelector('.active').classList.remove('active')
                    descr.querySelector('.disactive').classList.add('active')
                    descr.querySelector('.disactive').classList.remove('disactive')

                    success.style.width = formBox.clientWidth + 'px'
                    success.classList.add('active')
                })
            }

            modal.querySelector('.close').addEventListener('click', () => {
                modal.classList.remove('active')
                body.removeAttribute('style')
            })
        })
    })
}

function portfolioMore() {
    const box = $$('.about-reviews'),
        button = $$('.about-more a')

    button.addEventListener('click', () => {
        if ( box.classList.contains('active') ) {
            box.classList.remove('active')
            setTimeout(() => {
                button.textContent = 'показать больше отзывов'
            }, 700)
        } else {
            box.classList.add('active')
            setTimeout(() => {
                button.textContent = 'скрыть'
            }, 700)
        }
    })
}

function callPopup() {

    const btn = $$('.nav .number'),
        popup = $$('.nav .popup')

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

                /* Remove timeout if popup not hovered */
                const timeOut = setTimeout(() => {
                    popup.classList.remove('active')
                }, 2000)

                popup.addEventListener('mouseenter', () => {
                    clearTimeout(timeOut)
                })
                /* --- */

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
    const node = $$('.half-up', true)

    node.forEach(item => {
        item.style.marginTop = '-' + item.clientHeight / 2 + 'px'
    })
}

function thirdUp() {
    const node = $$('.third-up', true)

    node.forEach(item => {
        item.style.marginTop = '-' + item.clientHeight / 3 + 'px'
    })
}

window.addEventListener('DOMContentLoaded', function () {

    if ( $$('.nav .popup')) {
        callPopup()
    }

    if ( $$('.half-up')) {
        halfUp()
    }

    if ( $$('.third-up')) {
        thirdUp()
    }

    if ( $$('.about-more')) {
        portfolioMore()
    }

    if ( $$('.modal')) {
        modal()
    }

    if ( $$('form')) {
        forms()
    }

})