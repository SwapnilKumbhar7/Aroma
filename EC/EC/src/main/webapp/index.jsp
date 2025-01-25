<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Energy Conservation System</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Energy Conservation System</h1>
        <form action="result.jsp" method="post">
            <label for="devices">Number of Devices:</label>
            <input type="number" id="devices" name="devices" min="1" required>

            <div id="deviceInput">
                <div class="device">
                    <h3>Device 1</h3>
                    <label for="power1">Power Rating (W):</label>
                    <input type="number" id="power1" name="power1" step="0.1" required>

                    <label for="hours1">Usage Hours:</label>
                    <input type="number" id="hours1" name="hours1" step="0.1" required>
                </div>
            </div>

            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        // Optional JavaScript for dynamically adding devices can be implemented here.
    </script>
</body>
</html>


