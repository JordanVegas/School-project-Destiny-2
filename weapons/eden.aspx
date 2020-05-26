<%@ Page Title="" Language="C#"  %>
<html>
<head></head>
<body>

<script type="text/javascript">
    var timeStart = new Date();
    function getTimeTaken() {
        var timeEnded = new Date();
        var getMilli = timeEnded - timeStart;
        getMilli /= 1000;
        var secondsTaken = Math.round(getMilli);
        if (secondsTaken < 60) {
            return secondsTaken + " seconds";
        } else {
            secondsTaken /= 60;
            secondsTaken = Math.round(secondsTaken);
            return secondsTaken + " minutes";
        }
    }


    function check() {
        var count = 0;
        if (document.getElementById("1").checked) {
            document.getElementById("a1").innerHTML = "<p style='color:Green'> Correct</p>";
            count++;
        }
        else {
            document.getElementById("a1").innerHTML = "<p style='color:Red'> Incorrect</p>";
        }
        if (document.getElementById("2").checked) {
            document.getElementById("a2").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a2").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("3").checked) {
            document.getElementById("a3").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a3").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("4").checked) {
            document.getElementById("a4").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a4").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("5").checked) {
            document.getElementById("a5").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a5").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("6").checked) {
            document.getElementById("a6").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a6").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("7").checked) {
            document.getElementById("a7").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a7").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("8").checked) {
            document.getElementById("a8").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a8").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("9").checked) {
            document.getElementById("a9").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a9").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        if (document.getElementById("10").checked) {
            document.getElementById("a10").innerHTML = "<p style='color:Green'>Correct</p>";
            count++;
        }
        else {
            document.getElementById("a10").innerHTML = "<p style='color:Red'>Incorrect</p>";
        }
        var seconds = getTimeTaken();
        document.getElementById("res").innerHTML = "time taken: " + seconds + "<br />correct answers: " + count + "<br />wrong answers: " + (10 - count);

        return false;
    }



</script>






<section id="content">
    <div class="main-block">
      <div class="container_12">
      <h1 style="font-family:Aharoni; margin-top:60;"> Welcome To Our Quiz!!<br /><br />
      Answer The following Questation :
        </h1><br /> 
        <form action="" id="regform" method="post" onsubmit="return check()">
        <table>
       
          <tr><td><h3> Who is The Main Chararcter? </h3><p id ="a1"></p>
        <h4 style="font-size:25;"><input type="radio" name="ques1" id="" /> Merdith <br />
        <input type="radio" name="ques1"  id="1" /> Derek <br />
        <input type="radio" name="ques1"  id=""/> Alex <br />
        <input type="radio" name="ques1"  id=""/> Izzie </h4></td>
        <td></td>
        </tr>

        <tr><td><h3>    How many seasons the show have??</h3><p id ="a2"></p> <br />
         <h4 style="font-size:25;"><input type="radio" name="ques2"  id="2"/> 10 <br />
        <input type="radio" name="ques2"  id="" />15 <br />
        <input type="radio" name="ques2" id="" /> 6 <br />
        <input type="radio" name="ques2" id=""/> 100 </h4></td>
        <td></td>
        </tr>

        <tr><td><h3>    How many characters the show have??</h3><p id ="a3"></p> <br />
         <h4 style="font-size:25;"><input type="radio" name="ques2" id="3" /> 10 <br />
        <input type="radio" name="ques2" id="" />18 <br />
        <input type="radio" name="ques2" id=""/> 28 <br />
        <input type="radio" name="ques2" id="" /> 100 </h4></td>
        <td></td>
        </tr>

        <tr><td><h3>  How Many Kids Merdith Have? </h3><p id ="a4"></p><br />
         <h4 style="font-size:25;"><input type="radio" name="ques3" id="" />3 <br />
        <input type="radio" name="ques3"  id="" />2 <br />
        <input type="radio" name="ques3"  id="" /> 1 <br />
        <input type="radio" name="ques3"  id="4" /> None </h4></td>
        <td></td>
        </tr>

        <tr><td><h3>  Who Died First? </h3><p id ="a5"></p> <br />
         <h4 style="font-size:25;"><input type="radio" name="ques4"  id=""/> Derek  <br />
        <input type="radio" name="ques4"  id="5" /> George <br />
        <input type="radio" name="ques4"  id=""/> Izzie <br />
        <input type="radio" name="ques4"  id=""/> Merdith </h4></td>
        <td></td>
        </tr>

        <tr><td><h3>  How Many Famouse Quotes the show have? </h3><p id ="a6"></p><br />
         <h4 style="font-size:25;"><input type="radio" name="ques5"  id=""/> 10 <br />
        <input type="radio" name="ques5"  id="" />15 <br />
        <input type="radio" name="ques5" id="6" /> 23 <br />
        <input type="radio" name="ques5" id="" /> 20 </h4></td>
        <td></td>
        </tr>

         <tr><td><h3>    How many Partners Merduth Had ??</h3><p id ="a7"></p> <br />
         <h4 style="font-size:25;"><input type="radio" name="ques6" id="" /> 3 <br />
        <input type="radio" name="ques6" id="7" />1 <br />
        <input type="radio" name="ques6" id=""/> 6 <br />
        <input type="radio" name="ques6" id=""/> 8 </h4></td>
        <td></td>
        </tr>


          <tr><td><h3>   what's the name of the hosspital? </h3><p id ="a8"></p><br />
         <h4 style="font-size:25;"><input type="radio" name="ques7" id="8" /> Seattle Grace <br />
        <input type="radio" name="ques7" id="" /> Wolfson <br />
        <input type="radio" name="ques7" id=""/> Private Privacy <br />
        <input type="radio" name="ques7" id="" /> Levi </h4></td>
        <td></td>
        </tr>

          <tr><td><h3>   what's the name of Merdith's Mom? </h3><p id ="a9"></p><br />
         <h4 style="font-size:25;"><input type="radio" name="ques8" id="" />Alice <br />
        <input type="radio" name="ques8" id="9"/> Debbi <br />
        <input type="radio" name="ques8" id=""/> Emily<br />
        <input type="radio" name="ques8" id="" /> Lea </h4></td>
        <td></td>
        </tr>

         <tr><td><h3>  Does Alice Grey's Alive ?</h3><p id ="a10"></p>
         <h4 style="font-size:25;"><input type="radio" name="ques7" id=""> yes <br /><br />
        <input type="radio" name="ques9"  id="10" /> No <br /><br /><br /></h4></td>
         <td></td>
        </tr>
        <tr><td id ="res"></td></tr>
        <tr><td><input type="submit" class="button" /> <input type="reset" name="reset" value="reset" class="button" /></td></tr></table></form><br /> 
      <center> <h1 style="margin-top:120;"> We Hope you'll enjoy , Thanks For Visiting Our Site !</h1></center>
      </div>
    </div>
  </section>



</body>
</html>