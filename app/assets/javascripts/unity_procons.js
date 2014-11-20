(function()
{
	function build_row(data) 
	{
		var html = "<tr>";
		html += "<td><a href='/unity_procons/"+data.id+"'>"+data.id+"</a>"+"</td>";
		html += "<td>"+data.address_unity_procon+"</td>";

		html += "</tr>";
		return html;
	}

	function build_row_ranking(data,count) 
	{
		var html = "<tr>";
		html += "<h6>"
		html += " <td>" + count + "</td>";
		html += " <td>" + data.average_pontuation + "</td>";
		html += "<td><a href='/unity_procons/"+data.id+"'>"+data.id+"</a>"+"</td>";
		html += "<td>"+data.uf_procon+"</td>";
		html += "<td>"+data.address_unity_procon+"</td>";
		html += "<td>"+data.list_phones+"</td>";
		html += "<td>"+data.email_unity_procon+"</td>";
		html += "</h6>"
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

				//if (response.length==0)

			}
		});
	} 

	function custom_search_ranking(search)
	{
		$.ajax(
		{
			url: "/unity_procon/custom_search_ranking",
			type: "GET",
			data: { "search":search, "page":1 },
			success : function(response) 
			{
				var html = "";
				var count = 1;
				for(var i = 0; i < response.length; i++) 
				{
					html += build_row_ranking(response[i],count);
					count++;
				}
				
				$("#ranking_filter").html(html);
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
		$("#ranking_button").click(function()
		{
			var search = $("#unity_uf").val();

			custom_search_ranking(search);
		});
	});
})();
