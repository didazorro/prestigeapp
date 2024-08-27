var stripeSecretKey = "sk_test_51HNabPCinksNdU0O94JTnu59hF0R9saY1Mva7Z6OpwQHLfZ5v74e5EYx2rzwUsL3GnLi8CGeFgAVeg0p085bFVWZ00tcnkT6Xz";
var stripe = require("stripe")(stripeSecretKey);

// BASE SETUP
// =============================================================================

// call the packages we need
var express = require("express"); // call express
var app = express(); // define our app using express
var bodyParser = require("body-parser");

// configure app to use bodyParser()
// this will let us get the data from a POST
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

var port = process.env.PORT || 8080; // set our port

// ROUTES FOR OUR API
// =============================================================================
var router = express.Router(); // get an instance of the express Router

// test route to make sure everything is working (accessed at GET http://localhost:8080/api)

// more routes for our API will happen here
router.post("/payment-intent", function (req, res) {
    var body = req.body;

    // console.log("process payment", req.body);

    stripe.paymentIntents.create(
        {
            confirm: true,
            payment_method_types: ['card'],
            payment_method: body.payment_method_id,
            return_url: body.returnUrl,
            amount: body.amount,
            currency: body.currencyCode || "usd",
            source: body.token, // token
            description: body.email,
            receipt_email: body.email,
            capture_method: body.captureMethod || 'automatic',
        },
        function (err, paymentIntent) {
            // asynchronously called
            console.log(err);
            if (!err) {
                res.json({success: true, id: paymentIntent.id, client_secret: paymentIntent.client_secret});
            } else {
                res.json({success: false, message: "Transaction error" + JSON.stringify(err)});
                // res.json({
                //     success: false,
                //     message: "Transaction failed. Please check the card information and try again."
                // });
            }
        }
    );
});

router.post("/payment", function (req, res) {
    var body = req.body;

    // console.log("process payment", req.body);

    stripe.charges.create(
        {
            amount: body.amount,
            currency: body.currencyCode || "usd",
            source: body.token, // token
            description: body.email,
        },
        function (err, charge) {
            // asynchronously called
            console.log(err);
            if (!err) {
                res.json({success: true, message: "Payment has been charged!!"});
            } else {
                // res.json({success: false, message: "Transaction error" + JSON.stringify(err)});
                res.json({
                    success: false,
                    message: "Transaction failed. Please check the card information and try again."
                });
            }
        }
    );
});


router.post("/payment-intent-v2", function (req, res) {
    var body = req.body;

    // console.log("process payment", req.body);

    stripe.paymentIntents.create(
        {
            confirm: false,
            payment_method_types: ['card'],
            amount: body.amount,
            currency: body.currencyCode || "usd",
            source: body.token, // token
            description: body.email,
            receipt_email: body.email,
            capture_method: body.captureMethod || 'automatic',
        },
        function (err, paymentIntent) {
            // asynchronously called
            if (!err) {
                res.json({success: true, id: paymentIntent.id, client_secret: paymentIntent.client_secret});
            } else {
                // res.json({success: false, message: "Transaction error" + JSON.stringify(err)});
                res.json({
                    success: false,
                    message: "Transaction failed. Please check the card information and try again."
                });
            }
        }
    );
});

// REGISTER OUR ROUTES -------------------------------
// all of our routes will be prefixed with /api
app.use("/", router);

// START THE SERVER
// =============================================================================
app.listen(port);
console.log("Magic happens on port " + port);
