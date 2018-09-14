$('#helpdeskdeletebtn').on('click', function() {
	$('#modalmsg').text("게시글을 삭제하시겠습니까?");
	$('#helpdeskDeleteModal').modal('show');
	var delvalue = $('#helpdeskh_seq').val();
	$('#helpdeskdelbtn').on('click', function() {
		var url = "helpdeskDelete?h_seq=" + delvalue;
		$(location).attr('href', url);
	});
	return;
});

$(document).ready(
		function() {
			$('#helpdeskdeletebtn').on('click',function() {
						var h_seq = $('#helpdeskh_seq').val();
						var h_ref = $('#h_ref').val();
						$('#helpdeskDeleteModal').modal('show'); // 삭제팝업창
						$('.modal-body').text("삭제 하시겠습니까?");
						$('#helpdeskdelbtn').on(
								'click',
								function() {
									location.href = "helpdeskDelete?h_seq="
											+ h_seq + "&h_ref=" + h_ref;
								});
					});
		});