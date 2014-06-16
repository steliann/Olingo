<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

	<table>
        <tr>
            <td valign="top">
                <h3>Service Document and Metadata</h3>
                <ul>
                    <li><a href="CarsService.svc?_wadl" target="_blank">wadl</a></li>
                    <li><a href="CarsService.svc/" target="_blank">service document</a></li>
                    <li><a href="CarsService.svc/$metadata" target="_blank">metadata</a></li>
                </ul>
                <h3>EntitySets</h3>
                <ul>
                    <li><a href="CarsService.svc/Manufacturers" target="_blank">Manufacturers</a></li>
                    <li><a href="CarsService.svc/Manufacturers/?$expand=Cars" target="_blank">Manufacturers/?$expand=Cars</a></li>
                    <li><a href="CarsService.svc/Cars" target="_blank">Cars</a></li>
                    <li><a href="CarsService.svc/Cars/?$expand=Driver" target="_blank">Cars/?$expand=Driver</a></li>
                    <li><a href="CarsService.svc/Drivers" target="_blank">Drivers</a></li>
                    <li><a href="CarsService.svc/Drivers/?$expand=Car" target="_blank">Drivers/?$expand=Car</a></li>
                    <li><a href="CarsService.svc/Drivers/?$orderby=Lastname" target="_blank">Drivers/?$orderby=Lastname</a></li>
                    <li><a href="CarsService.svc/Drivers/?$filter=year(Birthday)%20gt%201981" target="_blank">Drivers/?$filter=year(Birthday) gt 1981</a></li>
                </ul>
                <h3>Entities</h3>
                <ul>
                    <li><a href="CarsService.svc/Manufacturers('1')" target="_blank">Manufacturers('1')</a></li>
                    <li><a href="CarsService.svc/Manufacturers('1')/Cars" target="_blank">Manufacturers('1')/Cars</a></li>
                    <li><a href="CarsService.svc/Cars('1')" target="_blank">Cars('1')</a></li>
                    <li><a href="CarsService.svc/Cars('1')/Driver" target="_blank">Cars('1')/Driver</a></li>
                    <li><a href="CarsService.svc/Cars('1')/?$expand=Manufacturer" target="_blank">Cars('1')/?$expand=Manufacturer</a></li>
                    <li><a href="CarsService.svc/Drivers(1)" target="_blank">Drivers(1)</a></li>
                    <li><a href="CarsService.svc/Drivers(1)/Car" target="_blank">Drivers(1)/Car</a></li>
                </ul>
            </td>
        </tr>
        <tr>
            <td valign="bottom">
                <div class="code">
                    <form method="POST" action="util">
                        <div>
                            For generation of sample data this button can be used.
                            <br/>
                            But be aware that multiple clicking results in multiple data generation.
                        </div>
                        <input type="submit" id="genSampleData" name="genSampleData" value="Generate sample Data"/>
                    </form>
                </div>
            </td>
        </tr>
	</table>
</body>
</html>
