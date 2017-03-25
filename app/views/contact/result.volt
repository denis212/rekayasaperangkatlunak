<section>
    <div class="container">
        <div class="center wow fadeInDown">
            <h1>Message Sent</h1>
              <h2>Thank you
              for contacting us.</h2>
              <h3>We have received your message. It will be handled by our administrators soon.</h3>

              <p>Click {{ link_to('', 'here','id':'redirect') }} to go to the main page.</p>
      </div>
</section>

<script>
       var timer = setTimeout(function() {
           window.location=document.getElementById('redirect').href;
       }, 5000);
</script>
