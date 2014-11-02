(function()
{
	function build_row(data) 
	{
		var html = "<tr>";

		html += "<td>ID: "+data.id+"</td>";
		html += "<td>Endereço: "+data.address_unity_procon+"</td>";

		html += "</tr>";
		return html;
	}

	function custom_search(search)
	{
		$.ajax(
		{
			url: "/unity_procon/custom_search",
			type: "GET",
			data: { "search":search, "page":1 },
			success : function(response) 
			{
				var html = "";

				for(var i = 0; i < response.length; i++) 
				{
					html += build_row(response[i]);
				}
				
				$("#unity_procons").html(html);
			}
		});
	} 	

	$(document).ready(function()
	{
		$("#unity_search_button").click(function()
		{
			var search = $("#unity_uf").val();

			custom_search(search);
		});
	});
})();
