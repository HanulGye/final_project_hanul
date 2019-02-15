/*!
 * Start Bootstrap - SB Admin 2 v3.3.7+1 (http://startbootstrap.com/template-overviews/sb-admin-2)
 * Copyright 2013-2016 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap/blob/gh-pages/LICENSE)
 */
$(function() {
    $('#side-menu').metisMenu();
});

//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {
    $(window).bind("load resize", function() {
        var topOffset = 50;
        var width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse');
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse');
        }

        var height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });

    var url = window.location;
    // var element = $('ul.nav a').filter(function() {
    //     return this.href == url;
    // }).addClass('active').parent().parent().addClass('in').parent();
    var element = $('ul.nav a').filter(function() {
        return this.href == url;
    }).addClass('active').parent();

    while (true) {
        if (element.is('li')) {
            element = element.parent().addClass('in').parent();
        } else {
            break;
        }
    }
});



$(function() {
	$('#addBtn_opt').click(addOpt);
	$(document).on('click', '.close', function(event) {
		count--;
		$(this).parent().remove();
	});
});
var count = 0;
function addOpt() {
	var add_opt = '<div class="form-group mar_top_two"><label for="opt_name">옵션 상품명</label><button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button><input type="text" class="form-control" id="opt_name" placeholder="옵션 상품명을 입력하세요." name="options['+count+'].name"><label for="opt_price">옵션 가격</label><input type="number" class="form-control" id="opt_price" placeholder="옵션 가격 입력하세요." name="options['+count+'].price"></div>'
	if(count<5){
		count++;
		$('#add_opt_area').append(add_opt);
	}else{
		alert('옵션 상품 추가는 최대 5개.');
	}
}


