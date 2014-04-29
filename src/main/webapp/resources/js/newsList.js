function loadNewsList(parent) {
    $.ajax({
        type: "POST",
        url: "api/news",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            for (var i in data) {
                var news = data[i];
                  writeNewsItem(news, parent);
//                console.log('-------------------------------------');
//                console.log('news: ' + news.id);
//                console.log('title: ' + news.title);
//                console.log('date: ' +news.date);
//                console.log('description: ' +news.description);
//                console.log('content: ' +news.content);
//                console.log('picture: ' +news.picture.id);
//                console.log('-------------------------------------');
            }
        },
        error: function () {
            console.log('load news list error');
        }
    });
}

function writeNewsItem(news, parent) {
    var html = '<div class="row clearfix">';
    html += '<div class="col-md-12 column">';
    html += '<div class="media">';
    html += '<a href="#" class="pull-left">';
    html += '<img height="64" width="64" src="data:image/jpeg;base64,' + news.picture.imageAsString + '" alt="" class="media-object"/>';
    html += '</a>';
    html += '<div class="media-body">';
    html += '<h4 class="media-heading">';
    html += news.title;
    html += '</h4>';
    html += '<p>';
    var date = new Date(news.date);
    var theyear = date.getFullYear()
    var themonth = date.getMonth() + 1
    var thetoday = date.getDate()
    html+= theyear + "-" + themonth + "-" + thetoday;
    html += '</p>';
    html += '<div class="media">';
    html += news.description;
    html += '</div>';
    html += '</div>';
    html += '</div>';
    html += '</div>';
    html += '</div>';
    html += '<br/>';
    parent.append(html);
}