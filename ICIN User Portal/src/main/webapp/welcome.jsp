<%@ page contentType="text/html; charset=iso-8859-1" language="java" %> 
<html> 
<head>
</head> 
 <style>
      

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.clearfix::after {
    content: "";
    display: table;
    clear: both;
}

body {
    color: #555;
    font-family: Open Sans;
    font-size: 16px;
    position: relative;
    height: 100vh;
    font-weight: 400;
}

.right { float: right; }
.red { color: #FF5049 !important; }
.red-focus:focus { border: 1px solid #FF5049 !important; }

/**********************************************
*** TOP PART
**********************************************/

.top {
    height: 40vh;
    background-image: linear-gradient(rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.35)), url(back.png);
    background-size: cover;
    background-position: center;
    position: relative;
}

.budget {
    position: absolute;
    width: 350px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: #fff;
}

.budget__title {
    font-size: 18px;
    text-align: center;
    margin-bottom: 10px;
    font-weight: 300;
}

.budget__value {
    font-weight: 300;
    font-size: 46px;
    text-align: center;
    margin-bottom: 25px;
    letter-spacing: 2px;
}

.budget__income,
.budget__expenses {
    padding: 12px;
    text-transform: uppercase;
}

.budget__income {
    margin-bottom: 10px;
    background-color: #28B9B5;
}

.budget__expenses {
    background-color: #FF5049;
}

.budget__income--text,
.budget__expenses--text {
    float: left;
    font-size: 13px;
    color: #444;
    margin-top: 2px;
}

.budget__income--value,
.budget__expenses--value {
    letter-spacing: 1px;
    float: left;
}

.budget__income--percentage,
.budget__expenses--percentage {
    float: left;
    width: 34px;
    font-size: 11px;
    padding: 3px 0;
    margin-left: 10px;
}

.budget__expenses--percentage {
    background-color: rgba(255, 255, 255, 0.2);
    text-align: center;
    border-radius: 3px;
}


/**********************************************
*** BOTTOM PART
**********************************************/

/***** FORM *****/
.add {
    padding: 14px;
    border-bottom: 1px solid #e7e7e7;
    background-color: #f7f7f7;
}

.add__container {
    margin: 0 auto;
    text-align: center;
}

.add__type {
    width: 55px;
    border: 1px solid #e7e7e7;
    height: 44px;
    font-size: 18px;
    color: inherit;
    background-color: #fff;
    margin-right: 10px;
    font-weight: 300;
    transition: border 0.3s;
}

.add__description,
.add__value {
    border: 1px solid #e7e7e7;
    background-color: #fff;
    color: inherit;
    font-family: inherit;
    font-size: 14px;
    padding: 12px 15px;
    margin-right: 10px;
    border-radius: 5px;
    transition: border 0.3s;
}

.add__description { width: 400px;}
.add__value { width: 100px;}

.add__btn {
    font-size: 35px;
    background: none;
    border: none;
    color: #28B9B5;
    cursor: pointer;
    display: inline-block;
    vertical-align: middle;
    line-height: 1.1;
    margin-left: 10px;
}

.add__btn:active { transform: translateY(2px); }

.add__type:focus,
.add__description:focus,
.add__value:focus {
    outline: none;
    border: 1px solid #28B9B5;
}

.add__btn:focus { outline: none; }

/***** LISTS *****/
.container {
    width: 1000px;
    margin: 60px auto;
}

.income {
    float: left;
    width: 475px;
    margin-right: 50px;
}

.expenses {
    float: left;
    width: 475px;
}

h2 {
    text-transform: uppercase;
    font-size: 18px;
    font-weight: 400;
    margin-bottom: 15px;
}

.icome__title { color: #28B9B5; }
.expenses__title { color: #FF5049; }

.item {
    padding: 13px;
    border-bottom: 1px solid #e7e7e7;
}

.item:first-child { border-top: 1px solid #e7e7e7; }
.item:nth-child(even) { background-color: #f7f7f7; }

.item__description {
    float: left;
}

.item__value {
    float: left;
    transition: transform 0.3s;
}

.item__percentage {
    float: left;
    margin-left: 20px;
    transition: transform 0.3s;
    font-size: 11px;
    background-color: #FFDAD9;
    padding: 3px;
    border-radius: 3px;
    width: 32px;
    text-align: center;
}

.income .item__value,
.income .item__delete--btn {
    color: #28B9B5;
}

.expenses .item__value,
.expenses .item__percentage,
.expenses .item__delete--btn {
    color: #FF5049;
}


.item__delete {
    float: left;
}

.item__delete--btn {
    font-size: 22px;
    background: none;
    border: none;
    cursor: pointer;
    display: inline-block;
    vertical-align: middle;
    line-height: 1;
    display: none;
}

.item__delete--btn:focus { outline: none; }
.item__delete--btn:active { transform: translateY(2px); }

.item:hover .item__delete--btn { display: block; }
.item:hover .item__value { transform: translateX(-20px); }
.item:hover .item__percentage { transform: translateX(-20px); }


.unpaid {
    background-color: #FFDAD9 !important;
    cursor: pointer;
    color: #FF5049;

}

.unpaid .item__percentage { box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.1); }
.unpaid:hover .item__description { font-weight: 900; }
        </style>
<body> 
  <div class="top">
            <div class="budget">
                <div class="budget__title">
                    Available balance in your account<span class="budget__title--month">%Month%</span>:
                </div>
                
                <div class="budget__value">+ 2,345.64</div>
                
                <div class="budget__income clearfix">
                    <div class="budget__income--text">Credited</div>
                    <div class="right">
                        <div class="budget__income--value">+ 4,300.00</div>
                        <div class="budget__income--percentage">&nbsp;</div>
                    </div>
                </div>
                
                <div class="budget__expenses clearfix">
                    <div class="budget__expenses--text">Debited</div>
                    <div class="right clearfix">
                        <div class="budget__expenses--value">- 1,954.36</div>
                        <div class="budget__expenses--percentage">45%</div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        <div class="bottom">
            <div class="add">
                <div class="add__container">
                    <select class="add__type">
                        <option value="inc" selected>+</option>
                        <option value="exp">-</option>
                    </select>
                    <input type="text" class="add__description" placeholder="Add description">
                    <input type="number" class="add__value" placeholder="Value">
                    <button class="add__btn"><i class="ion-ios-checkmark-outline"></i></button>
                </div>
            </div>
            
            <div class="container clearfix">
                <div class="income">
                    <h2 class="icome__title">Credited</h2>
                    
                    <div class="income__list">
                       
                       
                    </div>
                </div>
                
                
                
                <div class="expenses">
                    <h2 class="expenses__title">Debited</h2>
                    
                    <div class="expenses__list">
                       
                      
                        
                    </div>
                </div>
            </div>
            
            
        </div>
         
<script type="text/javascript" src="app.js"> 
</script> 
</body> 
</html> 