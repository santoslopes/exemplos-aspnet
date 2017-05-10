<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yesno.aspx.cs" Inherits="testes_yesno" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Implement YesNO Aspnet</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <style>
.modalBackground
{
    background-color:Gray;
    filter:alpha(opacity=50);
    opacity:0.7;
}
.pnlBackGround
{
 position:fixed;
    top:10%;
    left:10px;
    width:300px;
    height:125px;
    text-align:center;
    background-color:White;
    border:solid 3px black;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" CancelControlID="Button4"  BackgroundCssClass="modalBackground" TargetControlID="lblStupid" PopupControlID="Panel1"></ajaxToolkit:ModalPopupExtender>

        <asp:Button ID="ShowMessage" runat="server" Text="Show Message" OnClick="Show_yesno" />
        <asp:Label ID="lbloption" runat="server" Text=""></asp:Label>

    <asp:Label ID="lblstupid" runat="server" Text=""></asp:Label>
<asp:Panel ID="Panel1"  runat="server" CssClass="pnlBackGround" Width="400px" Height="180px">   
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="/imagens/warning.png" Width="40px" Height="40px" />
                </div>
                <div class="col-md-9">
                    <p style="font-size:x-large;">Delete Record ?</p>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4 col-md-offset-1">
                    <asp:Button ID="Button3" CssClass="form-control btn-warning"  runat="server" Text="Delete" OnClick="Delete_option"  />
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <asp:Button ID="Button4" CssClass="form-control btn-default" runat="server" Text="Cancel" />
                </div>
            </div>       
            
        </asp:Panel>


    </div>
    </form>
    <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
