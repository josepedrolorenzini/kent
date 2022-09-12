<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}


            .car-valuator {
                width: inherit;
            }
            .list_car_banner
            {
                background-image:url('https://static.drivemycar.com.au/Images/ListYourCar-header-tint.jpg');
                width: 100%;
                min-height: 350px;
                background-repeat: no-repeat;
                text-align: center;
                color: #fff;
                font-weight: bold;
                font-size: 3em;
                padding: 95px 0;

            }
            .list_your_car_new
            {
                margin-top: 83px;
                font-size:14px;
            }
            .after-navbar-content
            {
                opacity: 0.85;
            }
            .list_car_banner h1{
                text-align: center;
                color: #fff;
                font-weight: bold;
                font-size: 1.15em;
                margin: 0;
            }
            .lyc_container{
                width: 100%;
                margin: 0 auto;
                padding:0 10px;
            }
            .mrgn{
                margin-top: 40px;
                margin-bottom: 10px;
            }
            .lyc_desc{
                text-align: left;
                margin: 40px 0;
                color: #494949;
            }
            .qualify_criteria
            {
                text-align:left;
                margin-bottom:50px;
            }
            .qualify_criteria ul
            {
                padding: 0 17px;
            }
            .qualify_criteria h5
            {
                font-weight:bold;
            }
            .whats_involved
            {
                margin-top: 50px;
            }
            .whats_involved h4
            {
                font-weight:bold;
                margin-bottom: 20px;

            }
            .lyc_anchor,.lyc_anchor:focus,.lyc_anchor:hover,.lyc_anchor:active{
                border: 3px solid #418FDE;
                padding: 4px 12px;
                font-weight: bold;
                color: #418FDE;
                margin-top:10px;
                display: inline-block;
                text-decoration:none;
            }
            .lyc_btn,.lyc_btn:focus,.lyc_btn:hover,.lyc_btn:active{
                font-weight: normal;
                font-size: 12px;
                width: 78px;
                height: 75px;
                background-color: #D50032;
                display: inline-block;
                text-align: left;
                padding: 10px 10px;
                position:fixed;
                right: 15%;
                top: 420px;
                cursor: pointer;
                border: none;
                outline: none;
                color:#fff;
                text-decoration:none;
                cursor:pointer;
                z-index:9;
                border-radius: 8px;
            }
            .mT35{margin-top:35px;}
            #monthly-rate,.calculator-rate-per{text-align: center;font-weight: bold;}
            .create_prof_btn,.create_prof_btn:focus,.create_prof_btn:hover,.create_prof_btn:active{
                background-color: #D50032;
                border: none;
                font-size: 20px;
                padding: 5px 20px;
                color: #fff;
                font-weight: normal;
                text-decoration:none;
                padding-bottom: 8px;
                border-radius: 6px;
            }

            @media (min-width: 1010px) {
                .lyc_container { width: 970px;padding:0;}
            }
            @media (min-width: 768px) and (max-width: 1480px)
            {
                .lyc_btn, .lyc_btn:focus, .lyc_btn:hover, .lyc_btn:active{right:0;}
            }
            @media (max-width: 767px)
            {
                #home-link2{padding:7px 0 !important;}
                .navbar-fixed-top{position:fixed;}
                .after-navbar-content
                {
                    background: #001489;
                    position: fixed;
                    /*top: 26px;*/
                    width: 100%;
                    height: 50px;
                    z-index: 9;
                    opacity: 1;
                }
                .list_car_banner
                {
                    padding: 77px 0;
                }
                .list_your_car_new {
                    margin-top: 50px;
                }
                #list-your-car-mobile
                {
                    font-weight: normal;
                    font-size: 12px;
                    background-color: #D50032;
                    padding: 10px 10px;
                    cursor: pointer;
                }
                .create_prof_btn
                {
                    display:none;
                }
                .lyc_btn,.lyc_btn:hover,.lyc_btn:active{
                    right: 20px;
                    top: 350px;
                }
                .rent-calc-right-short{ margin: 15px 0; float: left;}
            }

        
    </style>
</head>
<body>
<form action="/Home/CalculateRental" id="valuateForm" method="post" usestyle="True" novalidate="novalidate"><input name="__RequestVerificationToken" type="hidden" value="SOgX11GxD7Zi3bs90U8N0DcrT38-LMIXtRk2NVbgoyRkF4P1WaBQFKfXEEBndsT5NJj2amboKcbZR9QGRG8iNs8QWg_6gh57qIVxtm_S8MU1">    <div class="vs-outer"><div class="validation-summary-valid" data-valmsg-summary="true"><ul><li style="display:none"></li>
</ul></div> </div>
    <div style="margin-top:15px;">
        <div class="car-valuator">
            <div class="col-md-12 car-valuator-title">Rental calculator</div>
            <div class="col-md-12" id="valuator-subtitie" style="text-align:left;margin-bottom:15px;font-size:14px;">Try the Rental Calculator below to see how much you can earn from your car.</div>
            <div id="valuator-form-block" style="display:block;">
            <div class="col-md-12">
                <div class="col-md-6 p0px">
                    <div class="form-group calculator-form" style="overflow:hidden;">
                        <select class="form-control" data-val="true" data-val-number="The field CarMakeID must be a number." data-val-required="Car Make is a Required Field." id="CarMakeID" name="CarMakeID" title=""><option value="">Make</option>
<option value="305">Abarth</option>
<option value="167">Alfa Romeo</option>
<option value="122">Audi</option>
<option value="124">BMW</option>
<option value="276">Chery</option>
<option value="128">Chrysler</option>
<option value="169">Citroen</option>
<option value="170">Daewoo</option>
<option value="171">Daihatsu</option>
<option value="129">Dodge</option>
<option value="14">Fiat</option>
<option value="131">Ford</option>
<option value="303">Ford Performance Vehicles</option>
<option value="302">Foton</option>
<option value="326">Genesis</option>
<option value="280">Great wall</option>
<option value="16">Hdt</option>
<option value="166">Holden</option>
<option value="304">Holden Special</option>
<option value="133">Honda</option>
<option value="134">Hummer</option>
<option value="135">Hyundai</option>
<option value="300">Infiniti</option>
<option value="137">Isuzu</option>
<option value="138">Jaguar</option>
<option value="139">Jeep</option>
<option value="140">Kia</option>
<option value="142">Land rover</option>
<option value="301">LDV</option>
<option value="143">Lexus</option>
<option value="23">Lotus</option>
<option value="296">Mahindra</option>
<option value="148">Mazda</option>
<option value="149">Mercedes Benz</option>
<option value="182">MG</option>
<option value="151">Mini</option>
<option value="152">Mitsubishi</option>
<option value="153">Nissan</option>
<option value="299">Opel</option>
<option value="183">Peugeot</option>
<option value="156">Porsche</option>
<option value="184">Proton</option>
<option value="201">Renault</option>
<option value="34">Rover</option>
<option value="158">Saab</option>
<option value="203">Skoda</option>
<option value="190">Smart</option>
<option value="188">Ssangyong</option>
<option value="161">Subaru</option>
<option value="162">Suzuki</option>
<option value="298">Tata</option>
<option value="163">Toyota</option>
<option value="38">Trd</option>
<option value="164">Volkswagen</option>
<option value="165">Volvo</option>
</select>
                    </div>
                </div>
                <div class="col-md-6 p0px">
                    <div class="form-group calculator-form" style="overflow:hidden;">
                        <select class="form-control" data-val="true" data-val-required="Car Model is a Required Field." id="MakeModelCode" name="MakeModelCode" title=""><option value="">Model</option>
</select>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="col-md-6 p0px">
                    <div class="col-md-6 p0px pL0px">
                        <div class="form-group calculator-form" style="overflow:hidden;">
                            <select class="form-control" data-val="true" data-val-number="The field Year must be a number." data-val-required="Car Year is a Required Field." id="Year" name="Year" title=""><option value="">Year</option>
</select>
                        </div>
                    </div>
                    <div class="col-md-6 p0px pR0px">
                        <div class="form-group calculator-form" style="overflow:hidden;">
                            <select class="form-control" data-val="true" data-val-number="The field CarStyleID must be a number." data-val-range="Body type is a Required Field." data-val-range-max="9999999" data-val-range-min="1" data-val-required="Body type is a Required Field." id="CarStyleID" name="CarStyleID" title=""><option value="">Body type</option>
</select>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 p0px">
                    <div class="form-group calculator-form" style="overflow:hidden;">
                        <select class="form-control" data-val="true" data-val-required="Car Specifications is a Required Field." id="VehicleKey" name="VehicleKey" title=""><option value="">Specifications</option>
</select>
                    </div>
                </div>
            </div>  
            <div class="col-md-12">
                <div class="col-md-6 p0px">
                    <div class="form-group calculator-form" style="overflow:hidden;margin-bottom:0px;clear:both;">
                        <input class="form-control" data-val="true" data-val-regex="Please enter valid Phone Number. Only Numbers (0-9) are allowed. Must be 8 or 10 digits" data-val-regex-pattern="^([+61|0]?[\d]+)?([\d]{8})$" data-val-required="Mobile is a Required Field." id="Mobile" name="Mobile" placeholder="Australian Mobile Number" type="text" value="">
                        <div style="font-size:10px;min-height:22px;padding: 5px 0px;">We will <b>SMS</b> you with how much you can earn.</div>
                    </div> 
                </div>
                <div class="col-md-6 p0px">
                    <div class="form-group calculator-form" style="overflow:hidden;">
                        <input class="form-control" data-val="true" data-val-required="Email is a Required Field." id="Email" name="Email" placeholder="Email address" type="text" value="">
                    </div>
                </div>
            </div>       
                <div class="col-md-12" style="text-align:center;">
                    <div class="form-group">
                        <p style="font-size:12px;">
                            I agree to DriveMyCar's website <a href="/terms-and-conditions" style="color:#418FDE;font-weight:bold;" target="_blank">Terms and Conditions</a> and <a href="/privacypolicy" style="color:#418FDE;font-weight:bold;" target="_blank">Privacy Policy</a>
                        </p>
                        
                    </div>
                </div>    

                <div class="col-md-12" style="text-align:center;">
                    <input id="EnquirySource" name="EnquirySource" type="hidden" value="">
                    <input data-val="true" data-val-range="Please accept DriveMyCar's website terms and conditions and Privacy Policy" data-val-range-max="True" data-val-range-min="True" data-val-required="The AgreeToMailing field is required." id="AgreeToMailing" name="AgreeToMailing" type="hidden" value="True">
                    <input type="submit" class="static-submit-btn-red" style="margin:0px;" value="SUBMIT" onmousedown="dataLayer.push({'event':'owner_lead', 'eventCategory':'owners', 'eventAction':'mousedown', 'eventLabel':'more_info'})" onmouseup="ga('send', 'event', 'owners', 'mouseup', 'calculator');">                        
                </div>                         
                
                
                
            </div>

            <div id="valuator-rate-block" style="display:none;font-size:18px;">
                <div class="col-md-6" style="padding: 5px 0;">
                    <div id="monthly-rate" class="calculator-rate">$300.00</div>
                    <div class="calculator-rate-per">per month</div>
                </div>

                <div class="col-md-6">
                    <div style="text-align:left;margin-bottom:10px;font-size:18px;">This is how much you can earn.</div>
                    <div style="text-align:left;line-height:1.2em;font-size:18px;">List your car now or call us for more information.</div>
                </div>   

                <div class="col-md-12" style="padding:0px 20px 10px 0px;">
                    <div class="rent-calc-right-short" style="text-align: center;">
                        
                        <div style="margin-top: 20px;"><input type="button" class="listcar-btn" value="LIST YOUR CAR" onclick="ListYourCar();"></div>
                    </div>
                </div>    
            </div>

            <div id="valuator-notfound-block" style="display:none;">
                <div class="col-md-12">
                    <div style="text-align:left;margin-bottom:10px;">One of our staff will manually price your car within the next business day.</div>
                    <div style="text-align:left;line-height:1.2em;margin-bottom:30px;">This will come through as an <b>SMS</b> to the number you have provided.</div>
                </div>   
            </div>

            <div class="col-md-12" style="text-align:center;padding: 10px 0;">
                
                    <p class="car-valuator-questions">Any questions? Call 1300 980 706</p>
            </div>
        </div>
            
   </div>
</form>
</body>
</html>