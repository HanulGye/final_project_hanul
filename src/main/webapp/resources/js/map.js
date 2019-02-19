
$(function() {
	var x = 0.0;
	var y = 0.0;
	var mName = '';
	var mAddr = '';
	var mTel = '';
	var mTime = '';
	$('.mBtn').click(function() {
		var name = $(this).attr('title');
		if(name==='sinchon'){
			x = 37.5553449;
			y = 126.9363158;
				
			mName = '신촌점'
			mAddr = '서울특별시 마포구 신촌로 90';
			mTel = '01-1234-5678';
			mTime = '화-일 오전 10시 - 오후 9시';
			
		}else if(name==='gangnam'){
			//37.4981744, 127.0283366
			x = 37.4981744;
			y = 127.0283366;
			mName = '강남점';
			mAddr = '서울특별시 강남구 강남대로 396';
			mTel = '02-1111-1111';
			mTime = '월-토 오전 9시 - 오후 10시';
			
		}else{
			//37.5087709, 126.8911162
			x = 37.5087709;
			y = 126.8911162;
			mName = '신도림점'
			mAddr = '서울특별시 구로구 새말로 117-21';
			mTel = '03-1234-5678';
			mTime = '월-일 오전 10시 - 오후 7시';
		}
		$('#mName').text(mName);
		$('#mAddr').text(mAddr);
		$('#mTel').text(mTel);
		$('#mTime').text(mTime);
		
		var mapOptions = {
				center: new naver.maps.LatLng(x, y),
				zoom: 12
		};
		
		var map = new naver.maps.Map('map', mapOptions);
	});
	
	
})