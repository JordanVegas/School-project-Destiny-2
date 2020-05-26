<%@ Page Title="" Language="C#" MasterPageFile="~/weapons/weapons.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                                <img src="../images/slider/TheRedWar.jpg" class="ls-bg" alt="Slide background"/>
                                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
Weapons index
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="zzzz" Runat="Server">
<script type="text/javascript">
    var picNo;
    picNo = 1;
    var SlideShow;
    var speed = 1000;
    //פונקציה שמתחילה את האנימציה
    function StartShow() {
        SlideShow = setInterval('sslide()', speed);

    }
    //פונקציה שמקדמת את האנימציה
    function sslide() {
        document.getElementById("team").src = "images/weapons/" + picNo + ".jpg";
        if (picNo == 92) {
            picNo = 1;
        }
        else {
            picNo++;

        }
    }
    //פונקציה שמפסיקה
    function StopShow() {
        clearInterval(SlideShow);
    }
    //פונקציה שמוסיפה מהירות
    function AddSpeed() {
        StopShow();
        speed -= 10;
        SlideShow = setInterval('sslide()', speed);
    }
    //פונקציה שמאיטה
    function SubstractSpeed() {
        StopShow();
        speed += 10;
        SlideShow = setInterval('sslide()', speed);
    }
    function next() {
        if (picNo == 92) {
            picNo = 1;
        }
        else {
            picNo++;
        }

            document.getElementById("team").src = "images/weapons/" + picNo + ".jpg";



        }
        function pervious() {
            if (picNo == 1) {
                picNo = 92;
            }
            else {
                picNo--;
            }
           
            document.getElementById("team").src = "images/weapons/" + picNo + ".jpg";

        }
</script>



    <form id="form1" runat="server">
    <div>
        <center>
            <h1 style="font-family:open_sanslight;">Album</h1>
            <img id="team" height="200" name="hello" src="images/weapons/1.jpg" width="570">
            <br />
            <br />
            <input onclick="StartShow()" type="button" value="start" />
            <input onclick="StopShow()" type="button" value="stop" />
            <input onclick="SubstractSpeed()" type="button" value="slower" />
            <input onclick="AddSpeed()" type="button" value="faster" />
            <input onclick="pervious()" type="button" value="back" />
            <input onclick="next()" type="button" value="next" />
        </center>
    </div>
    </form>



    <a href="1.aspx"class="button4">Wicked Sister</a>
<a href="10.aspx"class="button4">Rat King</a>
<a href="11.aspx"class="button4">Erentil FR4</a>
<a href="12.aspx"class="button4">Cartesian</a>
<a href="13.aspx"class="button4">Shock and Awe</a>
<a href="14.aspx"class="button4">Nox Echo III</a>
<a href="15.aspx"class="button4">Tarantula</a>
<a href="16.aspx"class="button4">Ghost Primus</a>
<a href="17.aspx"class="button4">Death Adder</a>
<a href="18.aspx"class="button4">The Mornin</a>
<a href="19.aspx"class="button4">Headstrong</a>
<a href="2.aspx"class="button4">Pariah</a>
<a href="20.aspx"class="button4">Helios HC1</a>
<a href="21.aspx"class="button4">Enigma's Draw</a>
<a href="22.aspx"class="button4">Troubadour</a>
<a href="23.aspx"class="button4">Luna Nullis II</a>
<a href="24.aspx"class="button4">Trondheim-LR2</a>
<a href="25.aspx"class="button4">POTG</a>
<a href="26.aspx"class="button4">Haunted Earth</a>
<a href="27.aspx"class="button4">Contingency</a>
<a href="28.aspx"class="button4">Gentleman</a>
<a href="29.aspx"class="button4">Traitor's Fate</a>
<a href="3.aspx"class="button4">PsiTerminaII</a>
<a href="30.aspx"class="button4">OlderSisterIII</a>
<a href="31.aspx"class="button4">Home Again</a>
<a href="32.aspx"class="button4">Jiangshi</a>
<a href="33.aspx"class="button4">SUROS</a>
<a href="34.aspx"class="button4">Jiangshi</a>
<a href="35.aspx"class="button4">Foggy</a>
<a href="36.aspx"class="button4">Options</a>
<a href="37.aspx"class="button4">Mamba</a>
<a href="38.aspx"class="button4">Somerled-D</a>
<a href="39.aspx"class="button4">Stay Away</a>
<a href="4.aspx"class="button4">Cadenza-11</a>
<a href="40.aspx"class="button4">Trax Dynia</a>
<a href="41.aspx"class="button4">Judgment</a>
<a href="42.aspx"class="button4">Refrain-23</a>
<a href="43.aspx"class="button4">Cuboid ARu</a>
<a href="44.aspx"class="button4">Ros Lysis</a>
<a href="45.aspx"class="button4">Sand</a>
<a href="46.aspx"class="button4">Sonata-48</a>
<a href="47.aspx"class="button4">Lionheart</a>
<a href="48.aspx"class="button4">Rebuke</a>
<a href="49.aspx"class="button4">Yellowjacket</a>
<a href="5.aspx"class="button4">Standing</a>
<a href="50.aspx"class="button4">Sturm</a>
<a href="51.aspx"class="button4">Sunshot</a>
<a href="52.aspx"class="button4">The Hero's</a>
<a href="53.aspx"class="button4">Harsh</a>
<a href="54.aspx"class="button4">Gareth-C</a>
<a href="55.aspx"class="button4">Penumbra</a>
<a href="56.aspx"class="button4">The Wizened</a>
<a href="57.aspx"class="button4">MIDA</a>
<a href="58.aspx"class="button4">Riskrunner</a>
<a href="59.aspx"class="button4">D.A.R.C.I.</a>
<a href="6.aspx"class="button4">Psi</a>
<a href="60.aspx"class="button4">Borealis</a>
<a href="61.aspx"class="button4">Mos</a>
<a href="62.aspx"class="button4">One Earth</a>
<a href="63.aspx"class="button4">Minuet-12</a>
<a href="64.aspx"class="button4">Picayune</a>
<a href="65.aspx"class="button4">Maxim</a>
<a href="66.aspx"class="button4">Hadrian</a>
<a href="67.aspx"class="button4">Resilient</a>
<a href="68.aspx"class="button4">Para</a>
<a href="69.aspx"class="button4">Truthteller</a>
<a href="7.aspx"class="button4">Honor's</a>
<a href="70.aspx"class="button4">Foresight</a>
<a href="71.aspx"class="button4">Clap</a>
<a href="72.aspx"class="button4">Show</a>
<a href="73.aspx"class="button4">Shepherd's</a>
<a href="74.aspx"class="button4">Widow's</a>
<a href="75.aspx"class="button4">Inaugural</a>
<a href="76.aspx"class="button4">Memory</a>
<a href="77.aspx"class="button4">Martyr's</a>
<a href="78.aspx"class="button4">Trax Arda</a>
<a href="8.aspx"class="button4">Persuader</a>
<a href="80.aspx"class="button4">Fare</a>
<a href="81.aspx"class="button4">Sea Scorpion</a>
<a href="82.aspx"class="button4">Inverness</a>
<a href="83.aspx"class="button4">Alone</a>
<a href="84.aspx"class="button4">Fool's Remedy</a>
<a href="85.aspx"class="button4">Song</a>
<a href="86.aspx"class="button4">Good Counsel</a>
<a href="87.aspx"class="button4">Ingredient</a>
<a href="88.aspx"class="button4">Fighting Lion</a>
<a href="89.aspx"class="button4">Prospector</a>
<a href="9.aspx"class="button4">Drang</a>
<a href="90.aspx"class="button4">Thistle</a>
<a href="91.aspx"class="button4">Requiem-43</a>
<a href="92.aspx"class="button4">Lost and Found</a>

























</asp:Content>

