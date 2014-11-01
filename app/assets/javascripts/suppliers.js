(function()
{

	function custom_search(search, type_search, suppliers)
	{
		$.ajax(
		{
			url: "/supplier/custom_search",
			type: "GET",
			data: { "search":search, "type_search":type_search, "suppliers":suppliers,"page":1 },
			success : function(response) 
			{
				var html = "";
				for(var i = 0; i < response.length; i++) 
				{
					
				}
				$("#suppliers").html(html);
			}
		});
	}
	$(document).ready(function()
	{
		$("#supplier_button").click(function()
		{
			var search = $("#supplier_text").val();
			var type_search = $(".search_type:checked").val();
			var suppliers = [];

			custom_search(search, type_search, suppliers);

		});
	});
})();
