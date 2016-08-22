<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RESTService._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron">
        <button onclick="doWork(); return false;">DoWork</button> <br />
        <br />

        <input type="text" id="squareValue"/>
        <button onclick="doSquare(); return false;">DoSquare</button> <br />
        <br />

        
        <input type="text" id="addValue1" style="width:100px;"/>
        <input type="text" id="addValue2" style="width:100px;"/>
        <button onclick="doSum(); return false;">DoSum</button>
        <br />
        <br />

        
        <input type="text" id="subValue1" style="width:100px;"/>
        <input type="text" id="subValue2" style="width:100px;"/>
        <button onclick="doSubtract(); return false;">DoSubtract</button>

    </div>

    <script type="text/javascript">
        function doWork() {
            alert("Hello");

            $.ajax({
                url: "Service/Service1.svc/DoWork",
                type: "GET",
                dataType: "json",
                success: function (result) {
                    alert(result);
                }
            });
        }


        function doSquare() {
            var value = $("#squareValue").val();

            $.ajax({
                url: "Service/Service1.svc/DoSquare",
                type: "POST",
                data: JSON.stringify(value),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    alert(result);
                }
            });
            document.getElementById("#squarevalue").value = "";
        }

        function doSum() {
            var addValues = {
                "Value1": $("#addValue1").val(),
                "Value2": $("#addValue2").val()
            };

            $.ajax({
                url: "Service/Service1.svc/DoSum",
                type: "POST",
                data: JSON.stringify(addValues),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    alert(result);
                },
                error: function (error) {
                    alert("ERROR:")
                    alert(error);
                }
            });
            document.getElementById("#addValue1").value = "";
            document.getElementById("#addValue2").value = "";
        }

        //Subtract
        function doSubtract() {
            var subValues = {
                "Value1": $("#subValue1").val(),
                "Value2": $("#subValue2").val()
            };

            $.ajax({
                url: "Service/Service1.svc/DoSubtract",
                type: "POST",
                data: JSON.stringify(subValues),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    alert(result);
                },
                error: function (error) {
                    alert("ERROR:")
                    alert(error);
                }
            });
            document.getElementById("#subValue1").value = "";
            document.getElementById("#subValue2").value = "";
        }

    </script>

</asp:Content>
