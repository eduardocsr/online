 
<html>
    <body>
        <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post"> // aqui va tu url de paypal primeor prueba y luego real

            <input type="hidden" name="cmd" value="_xclick">
            <input type="hidden" name="business" value="ruieducassal-facilitator@gmail.com">
            <input type="hidden" name="item_name" value="Premium Subscription">
            <input type="hidden" name="currency_code" value="USD">
            <input type="hidden" name="amount" value="20.00">
            <input type="image" src="http://www.paypal.com/es_XC/i/btn/x-click-but01.gif"
                   name="submit"
                   alt="Make payments with PayPal - it's fast, free and secure!">
        </form>
    </body>
</html>