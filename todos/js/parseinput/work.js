var main = function(){


   
    // access the Post button
    $('.btn').click(function(){
        // get text 
        var post = $('.input-box').val();
        // reset the box text
        $('.status-box').val('');
        // add the status below
        $('<li>').text(post).prependTo('.posts');
    });
};

$(document).ready(main);