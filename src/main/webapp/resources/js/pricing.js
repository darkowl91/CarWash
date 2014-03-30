function makeAsAjaxRequest(id) {
//    var text = $("#brand").find("option:selected").val();
    $.ajax({
        type: 'POST',
        url: "/newServiceRequest?id=" + id,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            $('#le-alert').addClass('in');

        },
        error: function (data, status, er) {
//            $('#model').empty();
            alert(data + status +er);
            //debug
            //alert("error: " + data + " status: " + status + " er:" + er);
        }
    });
}