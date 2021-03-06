function header() {
    let pageContent = $$('main')
    pageContent.style.marginTop = $$('nav').clientHeight + 'px';
}

function marginNav() {
    let node = $$('.margin-nav', true)

    node.forEach(item => {
        item.style.marginTop = $$('nav').clientHeight + 'px';
    })
}

function spinningButton () {
    const boxes = $$('.spinning-button', true)

    boxes.forEach(elem => {
        const btn = elem.querySelector('.button a'),
            img = elem.querySelector('.button img')

       if (btn) {
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
       }
    });
}

window.addEventListener('DOMContentLoaded', () => {
    if ( $$('main.mt-nav')) {
        header()
    }

    if ( $$('.spinning-button') && window.innerWidth > windowMedium) {
        spinningButton()
    }

    if ( $$('.margin-nav') && window.innerWidth > windowMedium) {
        marginNav()
    }

    if ( $$('.slider')) {
        $('.slider__content').slick({
            centerMode: true,
            slidesToShow: 3,
            infinite: true,
            variableWidth: true,
            zIndex: 1,
            prevArrow: $('.slider .arrows .left'),
            nextArrow: $('.slider .arrows .right')
        })
    }

    if ( $$('.testimonials')) {
        $('.testimonials__content').slick({
            centerMode: true,
            slidesToShow: 1,
            variableWidth: true,
            infinite: true,
            zIndex: 1,
            prevArrow: $('.testimonials .arrows .left'),
            nextArrow: $('.testimonials .arrows .right')
        })
    }

    if ( $$('.index-slider')) {
        $('.index-slider .content').slick({
            slidesToShow: 1,
            infinite: true,
            zIndex: 1,
            prevArrow: $('.index-slider .arrows .left'),
            nextArrow: $('.index-slider .arrows .right')
        })
    }

    if ( $$('body.portfolio')) {
        var mixer = mixitup('.portfolio-content', {
            selectors: {
                target: '.portfolio-content .item'
            },
            animation: {
                duration: 300
            }
        });
    }
})