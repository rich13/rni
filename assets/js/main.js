$(document).ready(function() {
    // Add smooth scrolling to all hash links
    $('a[href^="#"]').on('click', function(event) {
        var target = $($(this).attr('href'));
        
        if (target.length) {
            event.preventDefault();
            $('html, body').animate({
                scrollTop: target.offset().top
            }, 1000);
        }
    });

    // Handle external links
    $('a[href^="http"]').each(function() {
        var href = $(this).attr('href');
        var hostname = window.location.hostname;
        
        if (href && href.indexOf(hostname) === -1) {
            $(this).attr('target', '_blank');
            $(this).attr('rel', 'noopener');
        }
    });
}); 