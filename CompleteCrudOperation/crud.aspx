<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crud.aspx.cs" Inherits="CompleteCrudOperation.crud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 245px;
        }
        .auto-style3 {
            width: 370px;
        }
        .auto-style4 {
            width: 370px;
            height: 31px;
        }
        .auto-style5 {
            width: 245px;
            height: 31px;
        }
        .auto-style6 {
            height: 31px;
            width: 650px;
        }
        .auto-style7 {
            width: 370px;
            height: 39px;
        }
        .auto-style8 {
            width: 245px;
            height: 39px;
        }
        .auto-style9 {
            height: 39px;
            width: 650px;
        }
        .auto-style10 {
            width: 650px;
        }
        .auto-style11 {
            margin-left: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:center;">Student Info Manage Form</div><br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">Student ID</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                        <asp:Button ID="Button5" runat="server" BackColor="#FFFF66" BorderColor="Blue" CssClass="auto-style11" ForeColor="#9933FF" OnClick="Button5_Click" Text="Get" Width="76px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Student Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Address</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Age</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Contact</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderColor="Blue" ForeColor="#9933FF" OnClick="Button1_Click" Text="Insert" Width="83px" />
&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#FFFF66" BorderColor="Blue" ForeColor="#9933FF" OnClick="Button2_Click" Text="Update" Width="84px" />
                        <asp:Button ID="Button3" runat="server" BackColor="#FFFF66" BorderColor="Blue" CssClass="auto-style11" ForeColor="#9933FF" OnClick="Button3_Click" OnClientClick="Return Conform('Are You Sure to delete Tour Record');" Text="Delete" Width="76px" />
&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#FFFF66" BorderColor="Blue" CssClass="auto-style11" ForeColor="#9933FF" OnClick="Button4_Click" Text="Search" Width="76px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:GridView ID="GridView1" runat="server" Width="729px">
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
