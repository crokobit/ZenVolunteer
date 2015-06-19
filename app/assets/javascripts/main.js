$(document).ready(function() {
  $(".basic-single").select2();
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  $('.dropdown-button').dropdown({
      hover: true, // Activate on hover
      belowOrigin: true // Displays dropdown below the button
    }
  );
  $('select').material_select();
});


