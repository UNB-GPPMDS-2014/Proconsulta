(function()
{
	$(document).ready(function()
	{
		$("#custom_search_button").click(function()
		{
			var search = $("#custom_search_text").val();
			var type_search = $(".search_type:checked").val();
			var unities = [];

			$(".unidades_checkbox:checked").map(function(index, element)
			{
				unities.push(element.value);
			});

			custom_search(search, type_search, unities);
		});
	});
})();