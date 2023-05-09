<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PandingRents.aspx.cs" Inherits="CarRantalMGT.View.Customer.PandingRents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="container-fluid">
        <div class="row">
            <div class="col"></div>
            <div class="col">
                <a href="PandingRents.aspx">PandingRents.aspx</a>
                <h2 align="center">Your Pending Rentals</h2>
            </div>
            <div class="col"></div>
        </div>
        <div class="row">
            <div class="col-12">
            

                <form >
                    <div class="col-md-8">
                
                <asp:GridView  ID="CarList" class="table table-hover" runat="server" BorderColor="Red" >
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                </asp:GridView>
                    </div>
                </form>

            </div>
            
            </div>

        </div>
        </center>

    
</asp:Content>
