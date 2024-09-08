// $(document).ready(function () {



//   $.getJSON('https://api.ipify.org?format=json', function(data) {
//     var ip = data.ip;
    
//     $.ajax({
//       url: baseURL + "set-visitor-counter",
//       type: "GET",
//       data: { ip: ip },
//       success: function (response) 
//       {
//       },
//     });
//   });
// });

document.addEventListener('DOMContentLoaded', function() {

  const modals = document.querySelectorAll('.modal');

  modals.forEach(modal => {
      const closeButton = modal.querySelector('.btn-close');
      const backdrop = document.createElement('div');
      function showModal() {
          modal.classList.add('show');
          modal.style.display = 'block';
          backdrop.classList.add('modal-backdrop', 'fade', 'show');
          document.body.appendChild(backdrop);
      }

      function hideModal() {
          modal.classList.remove('show');
          modal.style.display = 'none';
          document.body.removeChild(backdrop);
      }
      showModal();


      closeButton.addEventListener('click', hideModal);

      document.addEventListener('keydown', function(event) {
          if (event.key === 'Escape' && modal.classList.contains('show')) {
              hideModal();
          }
      });

      // Hide the modal when clicking outside of it
      backdrop.addEventListener('click', hideModal);
  });



  $('.dropdown > .nav-link').on('click', function(e) {
    if ($(e.target).hasClass('caret') || $(e.target).closest('.caret').length) {
      e.preventDefault();
      $(this).parent().toggleClass('open');
    }
  });

  $(document).on('click', function(e) {
    if (!$(e.target).closest('.dropdown').length) {
      $('.dropdown').removeClass('open');
    }
  });

  if (window.innerWidth > 768) {
    $('.dropdown').hover(
      function() {
        $(this).addClass('open');
      },
      function() {
        $(this).removeClass('open');
      }
    );
  }
});

