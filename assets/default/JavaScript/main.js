function refreshOnce () {
    $('.refresh_once').each(function () {
        $(this).load( window.location.href + " .refresh_once > * " ).each(function() {
            if (this.complete) {
                $(this).trigger('load');
            }
        })
    })
}

// submit form data
$('form:not(.clear-form)').submit(function(e) {

    e.preventDefault();

    var form = $(this),
        btn = form.find('button[type=submit]'),
        id = form.data('id'),
        cmdName = form.data('cmd'),
        formData = new FormData(form[0]);
    // save

    if (id) {

        formData.append('id', id);
    }

    $.ajax({
        url: '?cmd=' + cmdName,
        type: 'post',
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function () {
            btn.prop('disabled', true);
        }, success: function (data) {

            // parse data
            try {
                var data = JSON.parse(data);
            } catch(e) {
                // data
                //console.log(data);
                return false;
            }

            // notify
            setTimeout(function() {
                // result
                var nType = data.messageType,
                    nTitle = data.messageTitle,
                    nMessage = data.message;
                $(form).find(".get-answer").html(data.message).hide().fadeIn();
                btn.prop('disabled', false);
                // reload page
                if (data.reload) {
                    btn.prop('disabled', true);
                    location.reload();
                }
                // reload page
                if (data.reset) {
                    setTimeout(function(){
                        document.getElementById("myForm").reset();
                    });
                }
                // href page
                if (data.href) {
                    btn.prop('disabled', true);
                    setTimeout(function(){
                        location.href = data.href;
                    }, 2000);
                }
            }, 300);
        },
        error: function () {
            $(form).find(".err").html('Անհայտ սխալ !').hide().fadeIn();
            btn.prop('disabled', false);
        }
    });
    return false;
});
// ajax actions (delete, archive)
$('.ajax-action').click(function (e) {
    e.preventDefault();
    var btn = $(this);
    ajaxAction(btn);
});
$('.ajax-action-confirm').click(function(e) {
    e.preventDefault();
    var btn = $(this);
    swal({
        title: '<span style="color: #333;">Are you sure ?</span>',
        type: 'warning',
        background: '#fff',
        buttonsStyling: false,
        confirmButtonClass: 'btn btn-danger',
        confirmButtonText: 'Yes',
        showCancelButton: true,
        cancelButtonClass: 'btn btn-light m-l-5',
        cancelButtonText: 'Cancel'
    }).then((result) => {
        if (result.value) {
            ajaxAction(btn);
        }
    });
});

$(function(){
    $("a[href^='/overlay/']").on("click", function(e){
        e.preventDefault();
        var a = this;
        if($('.modal').length > 0){
            $(".modal").remove();
            $(".modal-backdrop").remove();
            $("body").removeClass("modal-open");
            $("body").css("padding-right", 0);
            $("body").css("padding-left", 0);
        }
        getOverlay(a);
    });
});


function getOverlay(a){
    var url = a.href;
    if(url != "" && url != "close"){
        $.get(url, function(data){
            if($('.modal').length == 0){
                if(data != ""){
                    $("body").append(data);
                    $('.modal').modal('show');
                }else{
                    if($("a[href='?cmd=logOut']").length == 0){
                        location.href = "/";
                    }else{
                        location.hash = "#close";
                    }
                }
            }
        });
    }
}

// Load product
$(function(){
    $(document).on("click", ".reload", function(e){
        var reload_btn = this;
        var box = "."+reload_btn.dataset.box;
        var start = reload_btn.dataset.start;
        var end = reload_btn.dataset.end;
        var refresh_icon = $(reload_btn).find(".fa-sync");

        $(refresh_icon).fadeIn();
        $.get(''+this.href+'&start='+start+'&end='+end+'', function(data){
            var scrollTop = $(window).scrollTop();
            $(box).append(data);
            if(data.length > 0){
                reload_btn.dataset.start = Number(start) + Number(end);
            }
            $(refresh_icon).fadeOut();
        });
        e.preventDefault();
    });
});
$(function(e){
    $(".reload").click();
});

// Live change

$(document).ready(function(){
    $("[data-live]").on("change keyup click DOMSubtreeModified", function(e){

        if(e.type == 'change'){
            if ($(".live-save").length == 0) {
                toastr.success('Ձեր փոփոխությունները պահպանված են');
            }
        }

        if($(this).hasClass("mce-edit-area")){
            var editor = this;
            var textarea = $(editor).parent().parent().find("textarea");
            textarea.value = $(editor).html();
            textarea.click();
        }

        var table_name = $(this).data("live").split(',')[0];
        var field_name = $(this).data("live").split(',')[1];
        var id_name = $(this).data("live").split(',')[2];
        var id_value = $(this).data("live").split(',')[3];

        if($(this).attr("type")=="checkbox" && this.dataset.anyway==undefined){

            if ($(this).is(":checked")){

                var field_value = $(this).val();

            } else{

                var field_value = '0';

            }

        } else {

            var field_value = $(this).val();

        }

        if(table_name && field_name && id_name && id_value) {

            $.post('?cmd=changeField', {
                table_name : table_name,
                field_name : field_name,
                id_name : id_name,
                id_value : id_value,
                field_value : field_value
            }, function(data){
            });
        }
    });
});

// Photo manipulation

function addPhoto(group, parent, file, cat, act) {
    // $(".preloader").fadeIn();
    formdata = new FormData();
    formdata.append("group", group);
    formdata.append("parent", parent);
    for ( i = 0; i < file.files.length; i++ ) {
        formdata.append("file[]", file.files[i]);
    }
    formdata.append("cat", cat);
    formdata.append("act", act);
    $.ajax({
        url: "?cmd=addPhoto",
        type: "POST",
        data: formdata,
        processData: false,
        contentType: false,
        success: function (data) {

            swal("Հաջողվե՛ց", "Նկարը հաջողությամբ կցված է", {
                icon: "success",
            }).then(function () {
                location.reload();
            });

        }
    });
}

function removePhoto(cat, photoID){

    swal({
        title: "Դուք վստա՞հ էք",
        text: "Ֆայլը այլեևս չի լինի վերականգնել",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {

            $.post('?cmd=removePhoto', {cat: cat, photoID: photoID}, function (data) {

                swal("Էխ :(  Նկարը հեռացված է", {
                    icon: "success",
                }).then(function () {
                    location.reload();
                });

            });

        } else {

            swal("Նկարը փրկվա՛ծ է", {
                icon: "error",
            });

        }
    });
}

function confirmJoiner( id ){

    swal({
        title: "Դուք վստա՞հ էք",
        text: "Դուք վստա՞հ էք, որ ցանկանում եք հաստատել անդամակցության հայտը",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            swal("Ստեղծեք գաղտնաբառ", {
                content: "input",
                inputValidator: (value) => {
                    if (!value) {
                        return 'Նշեք գաղտնաբառը'
                    }
                }
            }).then((value) => {
                if ( value ) {
                    $.post('?cmd=confirmJoiner', {id: id, password: value}, function () {
                        swal("Անդամակցության հայտը հաջողությամբ հաստատված է", {
                            icon: "success",
                        }).then(function () {
                            location.reload();
                        });
                    })
                } else {
                    swal("Նշեք գաղտնաբառը", {
                        icon: "error",
                    });
                }
            });
        } else {
            swal("Հաստատումը չեղարկված է", {
                icon: "error",
            });
        }
    });
}

function confirm( id, cmd ){

    swal({
        title: "Դուք վստա՞հ էք",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            swal("Հաստատեք գործողությունը", {
                content: {
                    element: "input",
                    attributes: {
                        placeholder: "Գրեք ձեր գաղտնաբառը",
                        type: "password",
                    },
                },
                inputValidator: (value) => {
                    if (!value) {
                        return 'Գրեք գաղտնաբառը'
                    }
                }
            }).then((value) => {
                if ( value ) {
                    $.post('?cmd=' + cmd ,  {id: id, password: value, comment: $('#id_of_' + id).data('comment')}, function () {
                    })
                        .done(function ( data ) {

                            if ( data == "true" ) {
                                swal("Հաստատված է", {
                                    icon: "success",
                                }).then(function () {
                                    location.reload();
                                });
                            } else if ( data == "false" ) {
                                swal("Գաղտնաբառը սխալ է", {
                                    icon: "error",
                                })
                            }
                        })
                        .fail(function () {
                            swal("Առաջացավ խնդիր, կանչեք Ալենին", {
                                icon: "error",
                            })
                        })
                } else {
                    swal("Գրեք գաղտնաբառը", {
                        icon: "error",
                    });
                }
            });
        } else {
            swal("Հաստատումը չեղարկված է", {
                icon: "error",
            });
        }
    });
}

// End photo section
function removeData(group, inner_ID){

    swal({
        title: "Դուք վստա՞հ էք",
        text: "Հետ ճանապարհ չկա՛",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {

            $.post('?cmd=deleteData', {group: group, inner_ID: inner_ID}, function (data) {
                swal("Էխ :(  Հեռացրեցի", {
                    icon: "success",
                }).then(function () {
                    location.reload();
                });

            });

        } else {

            swal("Փրկվա՛ծ է", {
                icon: "error",
            });

        }
    });
}

// End photo section
function removeProfilePhoto(){

    swal({
        title: "Դուք վստա՞հ էք",
        text: "Հետ ճանապարհ չկա՛",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {

            $.post('?cmd=removeProfilePhoto', function (data) {
                swal("Էխ :(  Հեռացրեցի", {
                    icon: "success",
                }).then(refreshOnce);

            });

        } else {

            swal("Փրկվա՛ծ է", {
                icon: "error",
            });

        }
    });
}

// Autoreload content
$(document).ready(function () {

    if ( $('.reloadable') && $('.reloadable').attr('id') !== null ) {

        let timePoint = ( $('.reloadable').attr('data-time') !== false ) ? $('.reloadable').attr('data-time') : 1500;

        let id = $('.reloadable').attr('id');

        setInterval(function () {

            $("#" + id).load( window.location.href + " #" + id + " > * " ).each(function(){
                if(this.complete) {
                    $(this).trigger('load');
                }

            });

        }, timePoint);

    }

});

console.log('%c I spoke to God today and she said that she\'s ashamed', 'color: #444')
console.log('%c What have I become', 'color: #444')
console.log('%c What have I done', 'color: #444')
console.log('%c I spoke to the devil today and he swears he\'s not to blame', 'color: #444')
console.log('%c And I understood \'cause I feel the same', 'color: #444')