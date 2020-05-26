<%@ Page Title="" Language="C#" MasterPageFile="~/weapons/weapons.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                                <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                                <img src="../images/slider/TheRedWar.jpg" class="ls-bg" alt="Slide background"/>
</div></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
Quiz
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="zzz" Runat="Server">
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

        var seconds = getTimeTaken();
        document.getElementById("res").innerHTML = "time taken: " + seconds + "<br />correct answers: " + count + "<br />wrong answers: " + (5 - count);

        return false;
    }



</script>
<p style="color:Green"></p>

<form method="get" onsubmit="return check()" action="">
<table>
<tr><td>what is the main story of destiny?</td><td id="a1"></td></tr>
  <tr><td><input type="radio" name="go" value="The red war" id ="1"/> The red war</td></tr>
  <tr><td><input type="radio" name="go" value="Forsaken" /> Forsaken</td></tr>
  <tr><td><input type="radio" name="go" value="other" /> Other</td></tr>

 <tr><td> who dies in the story?</td><td id="a2"></td></tr>
  <tr><td><input type="radio" name="gend" value="cyde 6"  id="2"/>Cayde</td></tr>
  <tr><td><input type="radio" name="gend" value="clyde 6" /> clyde</td></tr>
  <tr><td><input type="radio" name="gend" value="other" /> Other</td></tr>

  <tr><td>how much dlcs are?</td><td id="a3"></td></tr>
    <tr><td><input type="radio" name="gen" value="1" /> 1</td></tr>
  <tr><td><input type="radio" name="gen" value="2" /> 2</td></tr>
  <tr><td><input type="radio" name="gen" value="2" id="3" /> 3</td></tr>
  
  <tr><td>who is the main player in the game?</td><td id="a4"></td></tr>
      <tr><td><input type="radio" name="g" value="you" id="4" />The player himself</td></tr>
  <tr><td><input type="radio" name="g" value="clyde" /> clyde</td></tr>
  <tr><td><input type="radio" name="g" value="3" /> Cayde</td></tr>

  <tr><td>do you like the web site?</td><td id="a5"></td></tr>
      <tr><td><input type="radio" name="ge" value="1" id="5" /> yes</td></tr>
  <tr><td><input type="radio" name="ge" value="2" /> no</td></tr>
</table>
<div class="rightside">
<div class="feature">
<div class="description">
<table>
    <tr><td id ="res">&nbsp</td></tr>
      
<tr><td><input type="submit" />  <input type="reset" value="Reset" /></td></tr>  
</table>
</div></div></div>
</form>
</asp:Content>
<asp:Content ID="right" ContentPlaceHolderID="right" Runat="Server">

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="zzzz" Runat="Server">
</asp:Content>

 