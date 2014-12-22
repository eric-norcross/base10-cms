// Fallback for placeholder attribute
//---------------------------------------------------------
$(document).on("focus", ".clear-input", function(event) {
  if (!("placeholder" in document.createElement("input"))) {
    if ($(this).val() == $(this).attr("placeholder")) {
      $(this).val("");
    }
  }
});

$(document).on("blur", ".clear-input", function(event) {
  if (!("placeholder" in document.createElement("input"))) {
    if ($(this).val() == ""){
      $(this).val($(this).attr("placeholder"));
    }
  }
});