<!--jquery-->
<script src="/static/js/jquery-2.1.4.min.js"></script>
<!--jquery-->
<!--semantic-->
<script src="/static/dist/semantic.min.js"></script>
<!--semantic-->
<script src="/static/plugins/cookie/js.cookie.js"></script>
<script src="/static/plugins/nicescrool/jquery.nicescroll.min.js"></script>

<script data-pace-options='{ "ajax": false }' src="/static/plugins/pacejs/pace.js"></script>

<script src="/static/js/main.js"></script>
<script>
    $(document)
            .ready(function() {
                $('.navwrap').visibility({
                    type: 'fixed'
                });
            });

    $('.ui.menu a.item').on('click', function () {
        $(this)
                .addClass('active')
                .siblings()
                .removeClass('active');
    })
</script>