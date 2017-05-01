<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panel-hide-x-seconds.aspx.cs" Inherits="professor_lixo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <title></title>
 <script type="text/javascript">
        function HideLabel(labelID) {
            setTimeout("HideLabelHelper('" + labelID + "');", 1000);
        }
        function HideLabelHelper(labelID) {
            document.getElementById(labelID).style.display = "none";
        }
    </script> 
<style type="text/css"> 
 .top_corner{
     display: inline-block;
        vertical-align: middle;
        float: right;
        padding-right: 10px;
        padding-top: 10px;
 }

</style>  
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container">     
            <div class="row">
                <div class="col-md-12">
        <asp:Panel ID="Panel1" CssClass="top_corner" BackColor="#66ff99" runat="server" Visible="false"  >            
            <div class="row">  
                <div class="col-md-4">
                        <asp:Image ID="Image1" runat="server" CssClass="img-responsive " ImageUrl="ok.png" />
                </div>               
                <div class="col-md-8" >
                       Registo Inserido!
                </div>
            </div>                                                                    
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" Text="Show Message" OnClick="Button1_Click1" />
                    
            </div>
                </div>
    </div>
        </div>   
    </form>
</body>
</html>
