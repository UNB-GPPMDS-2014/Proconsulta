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
}