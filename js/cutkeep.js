$(window).load(function() {
  $('img.caption').captionjs({
    'class_name' : 'captionjs',  // Class name assigned to each <figure>
    //'schema'     : true,         // Use schema.org markup (i.e., itemtype, itemprop)
    'mode'       : 'animated',    // default | static | animated | hide
    'debug_mode' : true   
  });
});
