$(function() {
	
		var price = 0;
		var totalPrice = 0;
		var prices = new Array(); 
		$('.cartArea').each(function(i) {
			price = $('#price'+i).val();
			price *= 1;
			prices[i] = price;
			
		})
		for(var i=0;i<prices.length;i++){
			totalPrice += prices[i];
		}
		$('#productP').val(totalPrice);
		$('#view1').text(totalPrice+' 원');
		if(totalPrice>50000){
			$('#shippingP').val(0);
			$('#view2').text('무 료');
		}else{
			$('#shippingP').val(2500);
			$('#view2').text(2500+' 원');
		}
		var totalPrice2 = 0;
		var sPp = $('#shippingP').val();
		sPp *=1;
		totalPrice2 = totalPrice + sPp;
		$('#totalP').val(totalPrice2);
		$('#view3').text(totalPrice2+' 원');
	
});

$(function() {
	
	$('.qPlus').click(function() {
		var a =$(this).parent('div').siblings('input').val();
		a *= 1;
		a = a+1;
		if(a<4){
			$(this).parent('div').siblings('input').val(a);			
		}else{
			alert('동일 상품은 3개까지 구매 가능합니다.');
		}
	});
	$('.qMinus').click(function() {
		var a =$(this).parent('div').siblings('input').val();
		a *= 1;
		a = a-1;
		if(a>=1){
			$(this).parent('div').siblings('input').val(a);			
		}else{
			alert('최소 1개 이상의 수량을 선택해주십시오.');
		}
	}); 
});

