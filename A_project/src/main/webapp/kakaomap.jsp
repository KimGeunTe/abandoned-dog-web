<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Flower Dog</title>
	 <style>
       .customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #558cef;background: #558cef url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>
</head>
<body>
	<div id="map" style="width:800px;height:700px;"></div>
	<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=02cf07e6f0dd30ebf8c188bf4713b928"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(35.167299689204505, 126.84830192405522), // 지도의 중심좌표
            level: 11 // 지도의 확대 레벨
        };
     
    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
     
    // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(35.167299689204505, 126.84830192405522); 
     
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });
     
    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
     
    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : "<div style='position: absolute; left: 0px; top: 0px;'><div style='width:140px;padding:1px;text-align:center;'>칠성종합시장</div></div>" 
    });
      
    // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    //infowindow.open(map, marker); 
     
    var imageSrc = 'marker01.png';                              // 마커이미지 주소
        imageSize = new kakao.maps.Size(34, 36);                // 마커이미지의 크기
        imageOption = {offset: new kakao.maps.Point(17, 36)};   // 마커의 좌표와 일치시킬 이미지 안에서의 좌표설정
          
    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
     
     
    var arr = new Array();
    arr[0] = ["목포시유기동물보호소",34.8534718790473,126.431496472431, "전남 무안군 삼향읍 석매길 36","608549161"];
    arr[1] = ["보성유기동물보호센터",34.8299386301769,127.066213731867, "전남 보성군 노동면 신천리 71","1083419524"];
    arr[2] = ["아이조아 파양입양통합요양보호소 전남광주점",35.0408226960546,126.851815775654, "전남 나주시 남평읍 강변2길 15","1032954709"];
    arr[3] = ["광주광역시동물보호소 ",35.2225551714642,126.88177151997, "광주 북구 본촌마을길 27","14569757"];
    arr[4] = ["장성군유기동물보호소 ",35.2398571050242,126.611529038253, "전남 장성군 삼서면 대중길 29-38","1685994946"];
    arr[5] = ["해남군유기동물보호소 ",34.5695432959047,126.606216757238, "전남 해남군 해남읍 남부순환로 18-1","626415702"];
    arr[6] = ["정읍동물보호소 ",35.5913864039875,126.873548626142, "전북 정읍시 2산단5길 37-1","1685994946"];
     
     
    var markerTmp;      // 마커
    var customOverlay;  // 오버레이
    var contentStr;
     
    for (var i=0;i<arr.length;i++) {
        markerTmp = new daum.maps.Marker({
            position: new daum.maps.LatLng(arr[i][1],arr[i][2]),
            title: arr[i][0],
            map:map
        });
     
        contentStr = "<div class='customoverlay'><a href='https://place.map.kakao.com/"+ arr[i][4] +"' target='_blank'><span class='title'>"+ arr[i][0] +"</span></a></div>";
     
        customOverlay = new kakao.maps.CustomOverlay({
            map: map,
            position: new daum.maps.LatLng(arr[i][1],arr[i][2]),
            content: contentStr,
            yAnchor: 1 
        });
    }
     
     
    // 지도 타입 변경 컨트롤을 생성한다
    var mapTypeControl = new kakao.maps.MapTypeControl();
     
    // 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);    
     
    // 지도에 확대 축소 컨트롤을 생성한다
    var zoomControl = new kakao.maps.ZoomControl();
     
    // 지도의 우측에 확대 축소 컨트롤을 추가한다
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
     
    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
    // marker.setMap(null);    
    </script>
</body>
</html>