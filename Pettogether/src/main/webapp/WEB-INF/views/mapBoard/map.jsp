<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <section>
    	<!-- kakao api key -->
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fe9c4f49446ea70ac05193ca8f70f694&libraries=services"></script>
    	
    	
        <h1 style="text-align: center; font-size: 50px;">Map Point!</h1>
        <div style="text-align: center;">
            <select name="" id="">
                <option value="">����Ư����</option>
                <option value="">��õ������</option>
                <option value="">��⵵</option>
                <option value="">��û��</option>
            </select>
        </div>
        <br/>
        <div id="map" ></div>
        
    </section>


    <script>
        var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.54699, 127.09598), // ������ �߽���ǥ
                level: 3 // ������ Ȯ�� ����
            };

        // ������ ǥ���� div��  ���� �ɼ�����  ������ �����մϴ�
        var map = new kakao.maps.Map(mapContainer, mapOption);        

        var imageSrc = 'img/cafe.jpg', // ��Ŀ�̹����� �ּ��Դϴ�    
            imageSize = new kakao.maps.Size(30, 40), // ��Ŀ�̹����� ũ���Դϴ�
            imageOption = {offset: new kakao.maps.Point(27, 69)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.
            
        // ��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
            markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�

        // ��Ŀ�� �����մϴ�
        var marker = new kakao.maps.Marker({
            position: markerPosition, 
            image: markerImage // ��Ŀ�̹��� ���� 
        });

        // ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
        marker.setMap(map);

        // Ŀ���� �������̿� ǥ���� ������ �Դϴ�
        // Ŀ���� �������̴� �Ʒ��� ���� ����ڰ� �����Ӱ� �������� �����ϰ� �̺�Ʈ�� ������ �� �ֱ� ������
        // ������ �̺�Ʈ �޼ҵ带 �������� �ʽ��ϴ� 
        var content = '<div class="wrap">' + 
                    '    <div class="info">' + 
                    '        <div class="title">' + 
                    '            īī�� �����̽����' + 
                    '            <div class="close" onclick="closeOverlay()" title="�ݱ�"></div>' + 
                    '        </div>' + 
                    '        <div class="body">' + 
                    '            <div class="img">' +
                    '                <img src="img/pet1.png" width="73" height="70">' +
                    '           </div>' + 
                    '            <div class="desc">' + 
                    '                <div class="ellipsis">����Ư����ġ�� ���ֽ� ÷�ܷ� 242</div>' + 
                    '                <div class="jibun ellipsis">(��) 63309 (����) ���� 2181</div>' + 
                    '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">Ȩ������</a></div>' + 
                    '            </div>' + 
                    '        </div>' + 
                    '    </div>' +    
                    '</div>';

        var overlay = new kakao.maps.CustomOverlay({
            content: content,
            map: map,
            position: new kakao.maps.LatLng(37.54699, 127.09598)       
        });

        // ��Ŀ�� Ŭ������ �� Ŀ���� �������̸� ǥ���մϴ�
        kakao.maps.event.addListener(marker, 'click', function() {
            overlay.setMap(map);
        });

        // Ŀ���� �������̸� �ݱ� ���� ȣ��Ǵ� �Լ��Դϴ� 
        function closeOverlay() {
            overlay.setMap(null);     
        }


    </script>
</body>
</html>