// File: result.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Energy Consumption Results</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Energy Consumption Results</h1>
        <table>
            <thead>
                <tr>
                    <th>Device</th>
                    <th>Power (W)</th>
                    <th>Usage Time (Hours)</th>
                    <th>Consumption (Watt-Hours)</th>
                </tr>
            </thead>
            <tbody>
                <%
                int devices = Integer.parseInt(request.getParameter("devices"));
                double totalConsumption = 0;

                for (int i = 1; i <= devices; i++) {
                    double power = Double.parseDouble(request.getParameter("power" + i));
                    double hours = Double.parseDouble(request.getParameter("hours" + i));
                    double consumption = power * hours;
                    totalConsumption += consumption;
                %>
                    <tr>
                        <td>Device <%= i %></td>
                        <td><%= power %></td>
                        <td><%= hours %></td>
                        <td><%= consumption %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <h2>Total Energy Consumption: <%= totalConsumption %> Watt-Hours</h2>

        <h3>Energy Conservation Tips</h3>
        <ul>
            <li>Turn off lights and appliances when not in use.</li>
            <li>Use energy-efficient LED bulbs.</li>
            <li>Unplug chargers and devices when not in use.</li>
            <li>Utilize natural light during the day.</li>
            <li>Use energy-efficient appliances with high star ratings.</li>
        </ul>

        <a href="index.jsp">Back</a>
    </div>
</body>
</html>