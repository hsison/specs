function buildTemplate(result) {
  var resultTemplate = $.trim($('#result_template').html());
  var $template = $(resultTemplate)

  $template.find('.picture').append("<img src="+""+result.MainImage+""+">");

  $template.find('.title').append("<a href="+""+result.url+""+">"+result.title+"</a>");

  $template.find('.title').append("<img src="+""+result.description+""+">");

  return $template;

}
