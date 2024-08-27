String buildPaymentTemplate(String url, String body, String method) {
  return """
<!DOCTYPE html>
<html>
<head>
    <title>3D Secure Verification</title>
    <script language="Javascript">
        function OnLoadEvent() { document.form.submit(); }
    </script>
    <style>
        .container {
            display: block;
            margin: auto;
            text-align: center;
            position: relative;
            margin-top: 5%;
        }
        @font-face {
            font-family: "primeformpro";

            src: url("PrimeformPro-Light.otf") format("opentype");
        }

        .awaiting_desc{
            font-family: 'primeformpro';
        }
    </style>
</head>
<body OnLoad="OnLoadEvent();">
<div class='container'>
    <p class='awaiting_desc'>
        Invoking 3-D secure form, please wait ...
    </p>
</div>
<form name="form" action="$url" method="$method">
    <input type="hidden" name="body" value="$body">
    <noscript>
        <p>Please click</p><input id="to-asc-button" type="submit">
    </noscript>
</form>
</body>
</html>
""";
}
