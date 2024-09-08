$(document).ready(function () {
  const categorySearchInput = $("#categorySearch");
  const carret = $("#carret");
  const categoryList = $("#categoryList");
  const categoryToggle = $("#categoryToggle");
  const allCategoriesCheckbox = $("#allCategories");
  const categoryCheckboxes = $('input[name="cat_id[]"]');

  categoryToggle.on("click", function () {
    if (
      categoryList.css("display") === "none" ||
      categoryList.css("display") === ""
    ) {
      categoryList.css("display", "block");
      carret.html("&#9650;");
    } else {
      categoryList.css("display", "none");
      carret.html("&#9660;");
    }
  });

  allCategoriesCheckbox.on("change", function () {
    const isChecked = allCategoriesCheckbox.prop("checked");
    categoryCheckboxes.prop("checked", isChecked);
  });

  categorySearchInput.on("input", function () {
    const searchValue = categorySearchInput.val().toLowerCase();

    categoryList.find("li").each(function () {
      const labelText = $(this).find("label").text().toLowerCase();

      if (labelText.includes(searchValue)) {
        $(this).css("display", "block");
      } else {
        $(this).css("display", "none");
      }
    });
  });

  $("#changePassword").submit(function (event) {
    event.preventDefault();

    var oldPassword = $("#oldpassword").val();
    var newpassword = $("#password").val();
    var confirmpassword = $("#confirm_password").val();

    // console.log(formData);
    $.ajax({
      type: "POST",
      url: baseURL + "changepassword",
      data: {
        oldPass: oldPassword,
        newpass: newpassword,
        cnfrmpass: confirmpassword,
      },
      success: function (response) {
        if (response) {
          alert(response);
          $("#oldpassword").val('');
          $("#password").val('');
          $("#confirm_password").val('');
        }
      },
      error: function (xhr, status, error) {
        console.error("Error:", error);
      },
    });
  });
});
