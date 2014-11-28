(function()
{
	function build_row(data) 
	{
		var html = "<tr>";
		
		html += "<td><a href='/suppliers/"+data.id+"'>"+data.fantasy_name_supplier+"</a>"+"</td>";
		html += "<td> "+data.cnpj+"</td>";

		html += "</tr>";
		return html;
	}

	function custom_search(search, type_search)
	{
		$.ajax(
		{
			url: "/supplier/custom_search",
			type: "GET",
			data: { "search":search, "type_search":type_search,"page":1 },
			success : function(response) 
			{
				var html = "";
				for(var i = 0; i < response.length; i++) 
				{
					html += build_row(response[i]);
				}
				$("#suppliers").html(html);
			}
		});
	}
	$(document).ready(function()
	{
		$("#supplier_search_button").click(function()
		{
			var search = $("#supplier_search_text").val();
			var type_search = $(".search_type:checked").val();

			custom_search(search, type_search);

		});
	});
})();
