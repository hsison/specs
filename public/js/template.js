function buildTemplate(result) {
  var resultTemplate = $.trim($('#result_template').html());
  var template = $(resultTemplate)

  template.find('.picture').append("<img src="+""+result.MainImage.url_170x135+""+">");

  template.find('.title').append("<a href="+""+result.url+""+">"+result.title+"</a>");

  template.find('.status').append("<p>"+"$"+result.price+""+"</p>");

  return template;

}

