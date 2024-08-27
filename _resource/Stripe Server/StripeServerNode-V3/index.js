const stripeSecretKey = "sk_test_51HNabPCinksNdU0O94JTnu59hF0R9saY1Mva7Z6OpwQHLfZ5v74e5EYx2rzwUsL3GnLi8CGeFgAVeg0p085bFVWZ00tcnkT6Xz";
const stripe = require("stripe")(stripeSecretKey);

// BASE SETUP
// =============================================================================

// call the packages we need
const express = require("express"); // call express
const app = express(); // define our app using express
const bodyParser = require("body-parser");

// configure app to use bodyParser()
// this will let us get the data from a POST
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const port = process.env.PORT || 8080; // set our port

// ROUTES FOR OUR API
// =============================================================================
const router = express.Router(); // get an instance of the express Router

// test route to make sure everything is working (accessed at GET http://localhost:8080/api)

// more routes for our API will happen here
router.post("/payment-intent", function (req, res) {
    const body = req.body;

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
                res.json({ success: true, id: paymentIntent.id, client_secret: paymentIntent.client_secret });
            } else {
                res.json({ success: false, message: "Transaction error" + JSON.stringify(err) });
                // res.json({
                //     success: false,
                //     message: "Transaction failed. Please check the card information and try again."
                // });
            }
        }
    );
});

router.post("/payment", function (req, res) {
    const body = req.body;

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
                res.json({ success: true, message: "Payment has been charged!!" });
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
    const body = req.body;

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
                res.json({ success: true, id: paymentIntent.id, client_secret: paymentIntent.client_secret });
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

router.post("/payment-intent-v3", async function (req, res) {
    const { amount, request3dSecure, currencyCode, token, email, captureMethod, orderId } = req.body;

    // console.log("process payment", req.body);
    const customer = await stripe.customers.create({ email });

    try {
        const params = {
            confirm: false,
            customer: customer.id,
            payment_method_types: ['card'],
            payment_method_options: {
                card: {
                    request_three_d_secure: request3dSecure || 'automatic',
                },
            },
            metadata: {
                order_id: orderId,
            },
            amount: amount,
            currency: currencyCode || "usd",
            source: token, // token
            description: email,
            receipt_email: email,
            capture_method: captureMethod || 'automatic',
        }
        const paymentIntent = await stripe.paymentIntents.create(params);
        res.json({ success: true, id: paymentIntent.id, client_secret: paymentIntent.client_secret });
    } catch (error) {
        res.json({
            success: false,
            message: "Transaction failed. Please check the card information and try again."
        });
    }
});

router.get("/payment-intent/:id", async (req, res) => {
    try {
        const paymentIntent = await stripe.paymentIntents.retrieve(req.params.id)
        res.send(paymentIntent)
    } catch (error) {
        res.send(error)
    }
});

// REGISTER OUR ROUTES -------------------------------
// all of our routes will be prefixed with /api
app.use("/", router);

// START THE SERVER
// =============================================================================
app.listen(port);
console.log("Magic happens on port " + port);
