$(function() {
	var pro_price = $('#pro_price').val();
	pro_price *= 1;
	var point_price = pro_price / 100;
	$('#point_price').attr('title',point_price);
	$('#point_price').text(point_price+' 원');
	
});

//옵션에 따른 총상품가격 값 바뀌게 하는 함수 
$(function() {
	var a = 0;	
	$('#opt_select').on('change', function() {
		a = $(this).val();
		a *= 1;
		var pro_price = $('#pro_price').val();
		pro_price *= 1;
		var total_price = 0;
		total_price = pro_price + a;
		$('#total_price').text(total_price+' 원');
		$('#total_price').attr('title', total_price);
	});
});

//기본 페이지 로드시, 총상품가격에 판매가격이 찍히게끔 하는 함수
$(function() {
	var total_price = $('#pro_price').val();
	total_price *=1;
	$('#total_price').text(total_price+' 원');
	$('#total_price').attr('title', total_price);
});


$(function() {
	$('.to_back_btn').click(function() {
		history.forward(1);
	});
});
