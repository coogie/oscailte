function renderDeliciousLinks(items) {
  var output = '<ul class="divided">';
  for (var i=0,l=items.length; i<l; i++) {
    output += '<li><a href="' + items[i].u + '" title="Tags: ' + (items[i].t == "" ? "" : items[i].t.join(', ')) + '">' + items[i].d + '</a></li>';
  }
  output += '</ul>';
  $('#delicious').html(output);
}

jQuery(function(){
  var gravatarImage = jQuery('img.gravatar');
  var email         = jQuery(gravatarImage).data('gravatar');
  jQuery(gravatarImage).attr({src: "http://www.gravatar.com/avatar/" + CryptoJS.MD5(email) + "?s=250"});
});