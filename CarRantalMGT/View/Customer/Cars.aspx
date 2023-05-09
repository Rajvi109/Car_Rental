<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CarRantalMGT.View.Customer.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10"></div>
            <label>Welcome,</label>
            <label id="CustName" runat="server"></label>
            <div class="col-md-5"></div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-1 ml-5" ><img align="center" src="../../Assets/Img/download (2).jpg" height="120px"/> </div>
            <div class="col-md-4"></div>
        </div>
        
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8"><h1 class="text-danger">Available Car</h1></div>
                    </div>
                <div class="col-md-8">
                
                <asp:GridView ID="CarList" class="table table-hover" runat="server" AutoGenerateSelectButton="True"  BorderColor="Red" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                </asp:GridView>
                    </div>
           <div class="row">
            <div class="col-4">
                <div class="form-group">
                   
                    <input type="date" class="form-control" id="ReturnDate" placeholder="Password" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-4">
                <div class="form-group d-grid">
                    <lable id="InfoMsg" runat="server" class="text-danger"></lable>
                    <asp:Button type="submit" id="Bookbtn" class="btn btn-warning btn-block " Text="Book" runat="server" OnClick="Bookbtn_Click"    />
                </div>
            </div>
           </div>

        </div>
        </div>

    </div>
</asp:Content>
