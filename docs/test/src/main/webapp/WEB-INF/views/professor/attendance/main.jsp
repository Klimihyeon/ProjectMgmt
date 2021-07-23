<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/resources/QR/jsQR.js"></script>
	<div class="container">
		<div class="row">
			<div class="col-1"></div>
			<div class="card col-5" id="output">
				<div class="row">
					<div class="profile-img col-5">
						<img id="proImg"
							src="/lms/resources/vuexy/app-assets/images/portrait/small/avatar-s-2.jpg"
							class="rounded img-fluid" alt="Card image" style="visibility: hidden">
					</div>
					<div class="col-6 d-flex item-center" id="outputMessage"
						style="padding: 50px;">
						<h3>QR코드를 카메라에 노출시켜 주세요.</h3>
					</div>
				</div>
				<table class="table" style="font-size: 1.2em; font-weight: 600;">
					
					<tr>
						<td width="30%">날짜</td>
						<td id="attdDate"></td>
					</tr>
					<tr>
					<tr>
						<td width="30%">이 름</td>
						<td id="studentName"></td>
					</tr>
					<tr>
						<td>과 정</td>
						<td id="ingCourseName"></td>
					</tr>
					<tr>
						<td>입실시간
						</th>
						<td id="inTime"></td>
					</tr>
					<tr>
						<td>퇴실시간</td>
						<td id="outTime"></td>
					</tr>
					<tr>
						<td>출결여부</td>
						<td id="attendance"></td>
					</tr>
				</table>

			</div>
			<div class="card col-5">
				<div class="d-flex align-items-center text-align-center id="frame">
					<div id="loadingMessage">
						🎥 비디오 스트림에 액세스 할 수 없습니다<br />웹캠이 활성화되어 있는지 확인하십시오
					</div>
					<canvas id="canvas" class="card"></canvas>
				</div>
			</div>
			<div class="col-1"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="row col-10">
				<div class="card">
					<h1>출결리스트 같은 것</h1>
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	<div id="outputLayer" hidden>
		<span id="outputData"></span>
	</div>

	<!--/ center profile info section -->
	<!-- QR code reader js -->
	<script type="text/javascript">
		var isOK = true;
		document.addEventListener("DOMContentLoaded", function() {

			var video = document.createElement("video");

			var canvasElement = document.getElementById("canvas");

			var canvas = canvasElement.getContext("2d");

			var loadingMessage = document.getElementById("loadingMessage");

			var outputContainer = document.getElementById("output");

			var outputMessage = document.getElementById("outputMessage");

			var outputData = document.getElementById("outputData");

			function drawLine(begin, end, color) {

				canvas.beginPath();
				canvas.moveTo(begin.x, begin.y);
				canvas.lineTo(end.x, end.y);

				canvas.lineWidth = 4;

				canvas.strokeStyle = color;

				canvas.stroke();

			}

			// 카메라 사용시

			navigator.mediaDevices.getUserMedia({
				video : {
					facingMode : "environment"
				}
			}).then(function(stream) {

				video.srcObject = stream;

				video.setAttribute("playsinline", true); // iOS 사용시 전체 화면을 사용하지 않음을 전달

				video.play();

				requestAnimationFrame(tick);

			});

			function tick() {

				loadingMessage.innerText = "⌛ 스캔 기능을 활성화 중입니다."

				if (video.readyState === video.HAVE_ENOUGH_DATA) {

					loadingMessage.hidden = true;

					canvasElement.hidden = false;

					outputContainer.hidden = false;

					// 읽어들이는 비디오 화면의 크기

					canvasElement.height = video.videoHeight;

					canvasElement.width = video.videoWidth;

					canvas.drawImage(video, 0, 0, canvasElement.width,
							canvasElement.height);

					var imageData = canvas.getImageData(0, 0,
							canvasElement.width, canvasElement.height);

					var code = jsQR(imageData.data, imageData.width,
							imageData.height, {

								inversionAttempts : "dontInvert",

							});

					// QR코드 인식에 성공한 경우

					if (code && isOK) {
							// 인식한 QR코드의 영역을 감싸는 사용자에게 보여지는 테두리 생성
						isOK = false;
						drawLine(code.location.topLeftCorner,
								code.location.topRightCorner, "#FF0000");

						drawLine(code.location.topRightCorner,
								code.location.bottomRightCorner, "#FF0000");

						drawLine(code.location.bottomRightCorner,
								code.location.bottomLeftCorner, "#FF0000");

						drawLine(code.location.bottomLeftCorner,
								code.location.topLeftCorner, "#FF0000");

						outputMessage.hidden = true;

						outputData.parentElement.hidden = false;

						// QR코드 메시지 출력

						outputData.innerHTML = code.data;

						var qrs =  code.data;
						if(qrs == null){
							return;
						}
						
						
						console.log(qrs);
						if(qrs !=null){
							$.ajax({
								type : 'POST',
								url : "qr",
								dataType : "json",
								data: JSON.stringify({"id":qrs}),
								contentType: "application/json",
								success : function(result) {
									console.log(result);
									var id = result[0].studentId;
									var attdType = result[0].attdType								
									$('#attdDate').text(result[0].attdDateString);
									$('#studentName').text(result[0].name);
									$('#ingCourseName').text(result[0].ingCourseName);	
									$('#inTime').text(result[0].attdIntimeString);
									$('#outTime').text(result[0].attdOuttimeString);
									$('#attendance').text(result[0].attdType);
									
									alert(id+"님 출석체크 되었습니다.");	
									var img = document.getElementById('proImg');
									img.style.visibility = "visible";
									isOK = true;
									return;								
								},
								error : function(e) {
									console.log(e);
									alert("e");
								}
							});
						}
						// return을 써서 함수를 빠져나가 면 QR코드 프로그램이 종료된다.

					}

					// QR코드 인식에 실패한 경우 

					else {

						outputMessage.hidden = false;

						outputData.parentElement.hidden = true;

					}

				}

				requestAnimationFrame(tick);

			}

		});
	</script>
</body>