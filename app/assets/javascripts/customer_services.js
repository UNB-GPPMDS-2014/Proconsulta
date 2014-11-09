(function()
{
	function build_row(data) 
	{
		var html = "<tr>";

		html += "<td>Ano: "+data.year_customer_service+"</td>";
		html += "<td>UF: "+data.uf_customer_service+"</td>";
		html += "<td>ID: "+data.id+"</td>";
		html += "<td>Desc: "+data.description_subject_customer_service+"</td>";

		html += "</tr>";
		return html;
	}
	
	function custom_search(search, type_search, unities)
	{
		$.ajax(
		{
			url: "/customer_service/custom_search",
			type: "GET",
			data: { "search":search, "type_search":type_search, "unities":unities,"page":1 },
			success : function(response) 
			{
				var html = "";
				for(var i = 0; i < response.length; i++) 
				{
					html += build_row(response[i]);
				}
				$("#customer_services").html(html);
			}
		});
	}

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

		$("#customer_services_graphs").onload(function()			
	    {         
	        var chart = new Highcharts.Chart({
	            chart: 
	            {
	                renderTo: 'container',
	                type: 'pie',

	                options3d: 
	                {
	                    enabled: true,
	                    alpha: 45,
	                    beta: 0
	                }
	            },

	            title: 
	            {
	                text: 'Atendimentos por Estado'
	            },

	            tooltip: 
	            {
	                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	            },

	            plotOptions: 
	            {
	                pie: 
	                {
	                    allowPointSelect: true,
	                    cursor: 'pointer',
	                    depth: 35,

	                    dataLabels: 
	                    {
	                        enabled: false,
	                        format: '{point.name}'
	                    }
	                }
	            },

	            legend:
	            {
	                layout: 'vertical',
	                align: 'right',
	                verticalAlign: 'top',
	                x: -10,
	                y: 100,
	                borderWidth: 0,

	                labelFormatter: function() 
	                {
	                    if(this.name!='series')
	                    {
	                        return this.name;
	                    } else
	                    {
	                        return 'Legend';
	                    }
	                }
	            },

	            series: [{
	                showInLegend:true,
	                type: 'pie',
	                name: 'Atendimentos',
	                data: <%=raw @hash_uf.map { |key, value| [key, value] } %>
	            }]
	        });
	    });
	});
})();
