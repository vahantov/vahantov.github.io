function header() {
    let pageContent = $('main')
    pageContent.style.marginTop = $('nav').clientHeight + 'px';
}

function marginNav() {
    let node = $(".margin-nav", true)
    node.forEach(item => {
        item.style.marginTop = $('nav').clientHeight + 'px';
    })
}

function spinningButton () {
    const boxes = $('.spinning-button', true)

    boxes.forEach(elem => {
        const btn = elem.querySelector('.button a'),
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

window.addEventListener('DOMContentLoaded', () => {
    if ( $('main.mt-nav')) {
        header()
    }

    if ( $('.spinning-button')) {
        spinningButton()
    }

    if ( $(".margin-nav")) {
        marginNav()
    }
})