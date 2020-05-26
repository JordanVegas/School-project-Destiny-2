<%@ Page Title="" Language="C#" MasterPageFile="~/weapons/weapons.master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["sub"] != null)
        {
            string Uname = Request.Form["Uname"];
            string pass = Request.Form["pass"];
            string fname = Request.Form["fname"];
            string lname = Request.Form["lname"];
            string phone = Request.Form["phone"];
            int id = int.Parse(Request.Form["id"]);
            string email = Request.Form["email"];
            string conStr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            string cmdStr = string.Format("INSERT INTO userstable  (id, firstName, lastName, email, phone, username, password)  VALUES  ({0}, N'{1}', N'{2}', N'{3}', N'{4}', N'{5}', N'{6}')", id, fname, lname, email, phone, Uname, pass);
            SqlConnection conObj = new SqlConnection(conStr);
            SqlCommand cmdObj = new SqlCommand(cmdStr, conObj);
            conObj.Open();
            cmdObj.ExecuteNonQuery();
            conObj.Close();




        }
    }
</script>
<asp:Content ID="Content6" ContentPlaceHolderID="script" Runat="Server">
<script language="javascript" type="text/javascript">
    function chkForm() {
        var a = checkName();
        var b = checkLastName();
        var d = checkpass();
        var e = checkrepass();
        var f = mail();
        var g = username();
        var h = chkid();
        var i = chkphone();
        if (a && b && d && e && f && g && h && i) {
            return true;
        }
        else {
            return false;
        }
    }
    function username() {
        var x = document.getElementById("Uname").value;
        var flag1 = false;
        var flag2 = false;
        var flag3 = false;
        if (x == "") {
            document.getElementById("Usererr").innerHTML = "please fill";
            return false;
        }
        for (var i = 0; i < x.length; i++) {
            if (!((x[i] >= 'a' && x[i] <= 'z') || (x[i] >= 'A' && x[i] <= 'Z') || (x[i] >= '0' && x[i] <= '9'))) {
                document.getElementById("Usererr").innerHTML = "Only english letters and numbers";
                return false;
            }
        }

        for (var j = 0; j <= x.length; j++) {
            if (x[j] >= 'a' && x[j] <= 'z') {
                flag1 = true;
            }
            else if (x[j] >= 'A' && x[j] <= 'Z') {
                flag2 = true;
            }
            else if (x[j] >= '0' && x[j] <= '9') {
                flag3 = true;
            }
        }
        if (flag1 && flag2 && flag3) {
            document.getElementById("Usererr").innerHTML = "";
            return true;
        }
        else {
            document.getElementById("Usererr").innerHTML = "Username invaild";
            return false;
        }
    }
    function checkName() {
        var x = document.getElementById("fname").value;
        if (x == "") {
            document.getElementById("fnameerr").innerHTML = "Enter Name";
            return false;
        }

        else if (x.length < 2) {
            document.getElementById("fnameerr").innerHTML = "Name too short";
            return false;
        }
        flag = true;
        for (var i = 0; i < x.length && flag; i++) {
            if (!(x[i] >= 'a' && x[i] <= 'z')) {
                flag = false;
                document.getElementById("fnameerr").innerHTML = "Small letters only ";
            }
        }
        if (flag) {
            document.getElementById("fnameerr").innerHTML = "";
            return true;
        }
        return false;
    }


    function checkLastName() {
        var x = document.getElementById("lname").value;
        if (x == "") {
            document.getElementById("lnameerr").innerHTML = "Enter Last Name ";
            return false;
        }

        else if (x.length < 2) {
            document.getElementById("lnameerr").innerHTML = "Name too short";
            return false;
        }
        flag = true;
        for (var i = 0; i < x.length && flag; i++) {
            if (!(x[i] >= 'a' && x[i] <= 'z')) {
                flag = false;
                document.getElementById("lnameerr").innerHTML = "Small Letters Only ";
            }
        }
        if (flag) {
            document.getElementById("lnameerr").innerHTML = "";
            return true;
        }
        return false;
    }
    function mail() {
        var str = document.getElementById("email").value;
        var lastAtPos = str.lastIndexOf('@');
        var lastDotPos = str.lastIndexOf('.');
        if (!(lastAtPos < lastDotPos && lastAtPos > 0 && str.indexOf('@@') == -1 && lastDotPos > 2 && (str.length - lastDotPos) > 2)) {
            document.getElementById("mailerr").innerHTML = "Mail isn't vaild ";
            return false;
        }
        else
            document.getElementById("mailerr").innerHTML = "";
        return true;
    }
    function checkrepass() {
        var pass = document.getElementById("password").value;
        var repass = document.getElementById("repassword").value;
        if (pass != "") {
            if (pass != repass) {
                document.getElementById("repasserr").innerHTML = 'passwords does not match';
                return false;
            }
            else {
                document.getElementById("repasserr").innerHTML = "";
                return true;
            }



        }

    }
    function checkpass() {
        var flag = true;
        var commonPassword = Array("123456", "password", "12345678", "pussy", "dragon", "qwerty", "696969", "mustang", "letmein", "baseball", "master", "michael", "football", "shadow", "monkey", "abc123", "pass", "6969", "jordan", "harley", "ranger", "iwantu", "jennifer", "hunter", "2000", "test", "batman", "trustno1", "thomas", "tigger", "robert", "access", "love", "buster", "1234567", "soccer", "hockey", "killer", "george", "sexy", "andrew", "charlie", "superman", "asshole", "dallas", "jessica", "panties", "pepper", "1111", "austin", "william", "daniel", "golfer", "summer", "heather", "hammer", "yankees", "joshua", "maggie", "biteme", "enter", "ashley", "thunder", "cowboy", "silver", "richard", "orange", "merlin", "michelle", "corvette", "bigdog", "cheese", "matthew", "121212", "patrick", "martin", "freedom", "ginger", "blowjob", "nicole", "sparky", "yellow", "camaro", "secret", "dick", "falcon", "taylor", "111111", "131313", "123123", "bitch", "hello", "scooter", "please", "", "porsche", "guitar", "chelsea", "black", "diamond", "nascar", "jackson", "cameron", "654321", "computer", "amanda", "wizard", "xxxxxxxx", "money", "phoenix", "mickey", "bailey", "knight", "iceman", "tigers", "purple", "andrea", "horny", "dakota", "aaaaaa", "player", "sunshine", "morgan", "starwars", "boomer", "cowboys", "edward", "charles", "girls", "booboo", "coffee", "xxxxxx", "bulldog", "ncc1701", "rabbit", "peanut", "john", "johnny", "gandalf", "spanky", "winter", "brandy", "compaq", "carlos", "tennis", "james", "mike", "brandon", "fender", "anthony", "blowme", "ferrari", "cookie", "chicken", "maverick", "chicago", "joseph", "diablo", "sexsex", "hardcore", "666666", "willie", "welcome", "chris", "panther", "yamaha", "justin", "banana", "driver", "marine", "angels", "fishing", "david", "maddog", "hooters", "wilson", "butthead", "dennis", "captain", "bigdick", "chester", "smokey", "xavier", "steven", "viking", "snoopy", "blue", "eagles", "winner", "samantha", "house", "miller", "flower", "jack", "firebird", "butter", "united", "turtle", "steelers", "tiffany", "zxcvbn", "tomcat", "golf", "bond007", "bear", "tiger", "doctor", "gateway", "gators", "angel", "junior", "thx1138", "porno", "badboy", "debbie", "spider", "melissa", "booger", "1212", "flyers", "fish", "porn", "matrix", "teens", "scooby", "jason", "walter", "cumshot", "boston", "braves", "yankee", "lover", "barney", "victor", "tucker", "princess", "mercedes", "5150", "doggie", "zzzzzz", "gunner", "horney", "bubba", "2112", "fred", "johnson", "xxxxx", "tits", "member", "boobs", "donald", "bigdaddy", "bronco", "penis", "voyager", "rangers", "birdie", "trouble", "white", "topgun", "bigtits", "bitches", "green", "super", "qazwsx", "magic", "lakers", "rachel", "slayer", "scott", "2222", "asdf", "video", "london", "7777", "marlboro", "srinivas", "internet", "action", "carter", "jasper", "monster", "teresa", "jeremy", "11111111", "bill", "crystal", "peter", "pussies", "cock", "beer", "rocket", "theman", "oliver", "prince", "beach", "amateur", "7777777", "muffin", "redsox", "star", "testing", "shannon", "murphy", "frank", "hannah", "dave", "eagle1", "11111", "mother", "nathan", "raiders", "steve", "forever", "angela", "viper", "ou812", "jake", "lovers", "suckit", "gregory", "buddy", "whatever", "young", "nicholas", "lucky", "helpme", "jackie", "monica", "midnight", "college", "baby", "brian", "mark", "startrek", "sierra", "leather", "232323", "4444", "beavis", "bigcock", "happy", "sophie", "ladies", "naughty", "giants", "booty", "blonde", "golden", "0", "fire", "sandra", "pookie", "packers", "einstein", "dolphins", "0", "chevy", "winston", "warrior", "sammy", "slut", "8675309", "zxcvbnm", "nipples", "power", "victoria", "asdfgh", "vagina", "toyota", "travis", "hotdog", "paris", "rock", "xxxx", "extreme", "redskins", "erotic", "dirty", "ford", "freddy", "arsenal", "access14", "wolf", "nipple", "iloveyou", "alex", "florida", "eric", "legend", "movie", "success", "rosebud", "jaguar", "great", "cool", "cooper", "1313", "scorpio", "mountain", "madison", "987654", "brazil", "lauren", "japan", "naked", "squirt", "stars", "apple", "alexis", "aaaa", "bonnie", "peaches", "jasmine", "kevin", "matt", "qwertyui", "danielle", "beaver", "4321", "4128", "runner", "swimming", "dolphin", "gordon", "casper", "stupid", "shit", "saturn", "gemini", "apples", "august", "3333", "canada", "blazer", "cumming", "hunting", "kitty", "rainbow", "112233", "arthur", "cream", "calvin", "shaved", "surfer", "samson", "kelly", "paul", "mine", "king", "racing", "5555", "eagle", "hentai", "newyork", "little", "redwings", "smith", "sticky", "cocacola", "animal", "broncos", "private", "skippy", "marvin", "blondes", "enjoy", "girl", "apollo", "parker", "qwert", "time", "sydney", "women", "voodoo", "magnum", "juice", "abgrtyu", "777777", "dreams", "maxwell", "music", "rush2112", "russia", "scorpion", "rebecca", "tester", "mistress", "phantom", "billy", "6666", "albert");

        var pass = document.getElementById("password").value;
        if (pass == "") {
            document.getElementById("passerr").innerHTML = 'please choose a password';
            return false;
        }
        else if (pass.length < 8) {
            document.getElementById("passerr").innerHTML = 'this password is too short';
            return false;
        }
        else {

            for (var i = 0; i < commonPassword.length; i++) {

                if (commonPassword[i] == pass) {
                    document.getElementById("passerr").innerHTML = 'common password detected';
                    flag = false;
                }

                else {
                    document.getElementById("passerr").innerHTML = "";
                }

            }
            var y = document.getElementById("Uname").value;
            if (x == y) {
                document.getElementById("passerr").innerHTML = 'the password cannot be the same as your username';
            }
            return flag;
        }
    }
    function passstrong() {
        var flag1 = false;
        var flag2 = false;
        var flag3 = false;
        var flag = true;
        var count = 0;
        var x = document.getElementById("password").value;
        if (x != "") {
            for (var i = 0; i < x.length; i++) {
                if (x[i] >= 'a' && x[i] <= 'z') {
                    flag1 = true;
                }
                else if (x[i] >= 'A' && x[i] <= 'Z') {
                    flag2 = true;
                }
                else if (x[i] >= '0' && x[i] <= '9') {
                    flag3 = true;
                }
            }
            if (flag1) {
                count++;
            }
            if (flag2) {
                count++;
            }
            if (flag3) {
                count++;
            }
            document.getElementById("strong").innerHTML = ("password level is: " + count);

            var commonPassword = Array("123123123", "1234", "123", "123456", "password", "12345678", "pussy", "dragon", "qwerty", "696969", "mustang", "letmein", "baseball", "master", "michael", "football", "shadow", "monkey", "abc123", "pass", "6969", "jordan", "harley", "ranger", "iwantu", "jennifer", "hunter", "2000", "test", "batman", "trustno1", "thomas", "tigger", "robert", "access", "love", "buster", "1234567", "soccer", "hockey", "killer", "george", "sexy", "andrew", "charlie", "superman", "asshole", "dallas", "jessica", "panties", "pepper", "1111", "austin", "william", "daniel", "golfer", "summer", "heather", "hammer", "yankees", "joshua", "maggie", "biteme", "enter", "ashley", "thunder", "cowboy", "silver", "richard", "orange", "merlin", "michelle", "corvette", "bigdog", "cheese", "matthew", "121212", "patrick", "martin", "freedom", "ginger", "blowjob", "nicole", "sparky", "yellow", "camaro", "secret", "dick", "falcon", "taylor", "111111", "131313", "123123", "bitch", "hello", "scooter", "please", "", "porsche", "guitar", "chelsea", "black", "diamond", "nascar", "jackson", "cameron", "654321", "computer", "amanda", "wizard", "xxxxxxxx", "money", "phoenix", "mickey", "bailey", "knight", "iceman", "tigers", "purple", "andrea", "horny", "dakota", "aaaaaa", "player", "sunshine", "morgan", "starwars", "boomer", "cowboys", "edward", "charles", "girls", "booboo", "coffee", "xxxxxx", "bulldog", "ncc1701", "rabbit", "peanut", "john", "johnny", "gandalf", "spanky", "winter", "brandy", "compaq", "carlos", "tennis", "james", "mike", "brandon", "fender", "anthony", "blowme", "ferrari", "cookie", "chicken", "maverick", "chicago", "joseph", "diablo", "sexsex", "hardcore", "666666", "willie", "welcome", "chris", "panther", "yamaha", "justin", "banana", "driver", "marine", "angels", "fishing", "david", "maddog", "hooters", "wilson", "butthead", "dennis", "captain", "bigdick", "chester", "smokey", "xavier", "steven", "viking", "snoopy", "blue", "eagles", "winner", "samantha", "house", "miller", "flower", "jack", "firebird", "butter", "united", "turtle", "steelers", "tiffany", "zxcvbn", "tomcat", "golf", "bond007", "bear", "tiger", "doctor", "gateway", "gators", "angel", "junior", "thx1138", "porno", "badboy", "debbie", "spider", "melissa", "booger", "1212", "flyers", "fish", "porn", "matrix", "teens", "scooby", "jason", "walter", "cumshot", "boston", "braves", "yankee", "lover", "barney", "victor", "tucker", "princess", "mercedes", "5150", "doggie", "zzzzzz", "gunner", "horney", "bubba", "2112", "fred", "johnson", "xxxxx", "tits", "member", "boobs", "donald", "bigdaddy", "bronco", "penis", "voyager", "rangers", "birdie", "trouble", "white", "topgun", "bigtits", "bitches", "green", "super", "qazwsx", "magic", "lakers", "rachel", "slayer", "scott", "2222", "asdf", "video", "london", "7777", "marlboro", "srinivas", "internet", "action", "carter", "jasper", "monster", "teresa", "jeremy", "11111111", "bill", "crystal", "peter", "pussies", "cock", "beer", "rocket", "theman", "oliver", "prince", "beach", "amateur", "7777777", "muffin", "redsox", "star", "testing", "shannon", "murphy", "frank", "hannah", "dave", "eagle1", "11111", "mother", "nathan", "raiders", "steve", "forever", "angela", "viper", "ou812", "jake", "lovers", "suckit", "gregory", "buddy", "whatever", "young", "nicholas", "lucky", "helpme", "jackie", "monica", "midnight", "college", "baby", "brian", "mark", "startrek", "sierra", "leather", "232323", "4444", "beavis", "bigcock", "happy", "sophie", "ladies", "naughty", "giants", "booty", "blonde", "golden", "0", "fire", "sandra", "pookie", "packers", "einstein", "dolphins", "0", "chevy", "winston", "warrior", "sammy", "slut", "8675309", "zxcvbnm", "nipples", "power", "victoria", "asdfgh", "vagina", "toyota", "travis", "hotdog", "paris", "rock", "xxxx", "extreme", "redskins", "erotic", "dirty", "ford", "freddy", "arsenal", "access14", "wolf", "nipple", "iloveyou", "alex", "florida", "eric", "legend", "movie", "success", "rosebud", "jaguar", "great", "cool", "cooper", "1313", "scorpio", "mountain", "madison", "987654", "brazil", "lauren", "japan", "naked", "squirt", "stars", "apple", "alexis", "aaaa", "bonnie", "peaches", "jasmine", "kevin", "matt", "qwertyui", "danielle", "beaver", "4321", "4128", "runner", "swimming", "dolphin", "gordon", "casper", "stupid", "shit", "saturn", "gemini", "apples", "august", "3333", "canada", "blazer", "cumming", "hunting", "kitty", "rainbow", "112233", "arthur", "cream", "calvin", "shaved", "surfer", "samson", "kelly", "paul", "mine", "king", "racing", "5555", "eagle", "hentai", "newyork", "little", "redwings", "smith", "sticky", "cocacola", "animal", "broncos", "private", "skippy", "marvin", "blondes", "enjoy", "girl", "apollo", "parker", "qwert", "time", "sydney", "women", "voodoo", "magnum", "juice", "abgrtyu", "777777", "dreams", "maxwell", "music", "rush2112", "russia", "scorpion", "rebecca", "tester", "mistress", "phantom", "billy", "6666", "albert");
            for (var j = 0; j < commonPassword.length; j++) {

                if (commonPassword[j] == x) {
                    document.getElementById("strong").innerHTML = 'common password detected';
                }

            }
            var y = document.getElementById("Uname").value;
            if (x == y) {
                document.getElementById("strong").innerHTML = 'the password cannot be the same as your username';
            }
        }
    }
    function chkid() {
        var num = document.getElementById("id").value;
        var tot = 0;
        var tz = new String(num);
        for (i = 0; i < 8; i++) {
            x = (((i % 2) + 1) * tz.charAt(i));
            if (x > 9) {
                x = x.toString();
                x = parseInt(x.charAt(0)) + parseInt(x.charAt(1))
            }
            tot += x;
        }

        if ((tot + parseInt(tz.charAt(8))) % 10 == 0) {
            document.getElementById("iderr").innerHTML = "";
            return true;
        } else {

            document.getElementById("iderr").innerHTML = "your Id is invaild";
            return false;
        }
    }
    function chkphone() {
        var x = document.getElementById("phone").value;
        if (x[0] == 0) {
            for (var i = 1; i < x.length; i++) {
                if (!((x[i] >= 0 && x[i] <= 9) || (x[i] == '-'))) {
                    document.getElementById("phoneerr").innerHTML = "phone is invaild";
                    return false;
                }
            }
            document.getElementById("phoneerr").innerHTML = "";
            return true;
        }
        else {
            document.getElementById("phoneerr").innerHTML = "phone is invaild";
            return false;
        }
    }
</script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                                <img src="images/slider/TheRedWar.jpg" class="ls-bg" alt="Slide background"/></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
Register
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="zzz" Runat="Server">
<form action="" method="post" onsubmit="return chkForm()">
<table>
  <tr><td>Firt name:</td></tr>
  <tr><td><input type="text" id="fname" name ="fname"/></td><td id="fnameerr"></td></tr>
  <tr></tr>
  <tr><td>Last name:</td></tr>
  <tr><td><input type="text" id="lname" name ="lname"/></td><td id="lnameerr"></td></tr>
  <tr></tr>
  <tr><td>Id:</td></tr>
  <tr><td><input type="text" id="id" name ="id"/></td><td id="iderr"></td></tr>
  <tr></tr>
  <tr><td>Email:</td></tr>
  <tr><td><input type="text" id="email" name="email"/></td><td id="mailerr"></td></tr>
  <tr></tr>
  <tr><td>Phone:</td></tr>
  <tr><td><input type="text" id="phone" name="phone"/></td><td id="phoneerr"></td></tr>
  <tr></tr>
  <tr><td>Username:</td></tr>
  <tr><td><input type="text" id="Uname" name="Uname"/></td><td id="Usererr"></td></tr>
  <tr></tr>
  <tr><td>Password:</td></tr>
  <tr><td></td></tr>
  <tr><td><input type="password" id="password" name="pass"onblur="passstrong()"/></td><td id ="passerr" ></td></tr>
  <tr><td id ="strong">&nbsp</td></tr>
  <tr><td>repeat Password:</td></tr>
  <tr><td><input type="password" id="repassword" name="repass"/></td><td id ="repasserr"></td></tr>
  <tr></tr>
  <tr><td>Gender:</td></tr>
  <tr><td><input type="radio" name="gender" value="male" checked /> Male</td></tr>
  <tr><td><input type="radio" name="gender" value="female" /> Female</td></tr>
  <tr><td><input type="radio" name="gender" value="other" /> Other</td></tr>
  <tr></tr>
   <tr><td>Birthday:</td></tr>
  <tr><td><input type="date" name="bday" /></td></tr>
    <tr><td><textarea rows="4" cols="45" placeholder="Tell us what do you like about the game"></textarea></td></tr>
    <tr><td><br /></td></tr>
   <tr><td><input type="submit" value="Submit" name="sub"/><input type="reset" /></td></tr>
</table>
   </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="zzzz" Runat="Server">
</asp:Content>
<asp:Content ID="right" ContentPlaceHolderID="right" Runat="Server">
                        	<div class="leftside">
                         <div class="feature">
                        <div class="description">

 <script language="javascript" type="text/javascript">
 var picNo;
    var he = 370;
    var wi = 600;

        picNo = 1;
        var SlideShow;
        var speed = 100;
        //פונקציה שמתחילה את האנימציה
        function StartShow() {
            SlideShow = setInterval('helloSlide()', speed);

        }
        //פונקציה שמקדמת את האנימציה
        function helloSlide() {
            document.getElementById("1").src = "images/gif/" + picNo + ".jpg";
            if (picNo == 12) {
                picNo = 1;
            }
            else {
                picNo++;
              
            }
        }
        function bigger() { // פונקציה שמגילדה את הגיף,
            wi += 100;
            he += 100;
            document.getElementById("1").width = wi;
            document.getElementById("1").height = he;
            document.getElementById("2").width = wi;
            document.getElementById("2").height = he;
            document.getElementById("3").width = wi;
            document.getElementById("3").height = he;
            document.getElementById("4").width = wi;
            document.getElementById("4").height = he;
            document.getElementById("5").width = wi;
            document.getElementById("5").height = he;
            document.getElementById("6").width = wi;
            document.getElementById("6").height = he;
            document.getElementById("7").width = wi;
            document.getElementById("7").height = he;
            document.getElementById("8").width = wi;
            document.getElementById("8").height = he;
            document.getElementById("9").width = wi;
            document.getElementById("9").height = he;
            document.getElementById("10").width = wi;
            document.getElementById("10").height = he;
            document.getElementById("11").width = wi;
            document.getElementById("11").height = he;
            document.getElementById("12").width = wi;
            document.getElementById("12").height = he;
        }
        function smaller() { // פונקציה שמקטינהב את הגיף
            wi -= 100;
            he -= 100;
            document.getElementById("1").width = wi;
            document.getElementById("1").height = he;
            document.getElementById("2").width = wi;
            document.getElementById("2").height = he;
            document.getElementById("3").width = wi;
            document.getElementById("3").height = he;
            document.getElementById("4").width = wi;
            document.getElementById("4").height = he;
            document.getElementById("5").width = wi;
            document.getElementById("5").height = he;
            document.getElementById("6").width = wi;
            document.getElementById("6").height = he;
            document.getElementById("7").width = wi;
            document.getElementById("7").height = he;
            document.getElementById("8").width = wi;
            document.getElementById("8").height = he;
            document.getElementById("9").width = wi;
            document.getElementById("9").height = he;
            document.getElementById("10").width = wi;
            document.getElementById("10").height = he;
            document.getElementById("11").width = wi;
            document.getElementById("11").height = he;
            document.getElementById("12").width = wi;
            document.getElementById("12").height = he;
        }

        //פונקציה שמפסיקה
        function StopShow() {
            clearInterval(SlideShow);
        }
        //פונקציה שמוסיפה מהירות
        function AddSpeed() {
            StopShow();
            speed -= 10;
            SlideShow = setInterval('helloSlide()', speed);
        }
        //פונקציה שמאיטה
        function SubstractSpeed() {
            StopShow();
            speed += 10;
            SlideShow = setInterval('helloSlide()', speed);
        }
    </script>



     <img id="1" name="hello" src="images/gif/1.jpg">
   <input  type="button" onclick="StartShow()" value="Start"/>
   <input type="button" onclick="StopShow()" value="Stop" />
   <input type="button" onclick="SubstractSpeed()" value="Slower" />
   <input type="button" onclick="AddSpeed()" value="Faster" />
   <input type="button" onclick="bigger()" value="Bigger" />
   <input type="button" onclick="smaller()" value="Smaller" />
   </div></div></div>
</asp:Content>
