<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="CarRantalMGT.View.Admin.Returns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-5 "></div>
        <div class="col-md-3">
            <h1 class="text-danger">Car Returned</h1>
            <img src="../../Assets/Img/download (2).jpg"/>
            
        </div>
        <div class="col-md-3"></div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <form>
                  <asp:GridView  ID="RentList" class="table table-hover" runat="server" BorderColor="Red" AutoGenerateSelectButton="True"  >
                  <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
                  </asp:GridView>
            </form>
        </div>
    </div>
</div>   
</asp:Content>
