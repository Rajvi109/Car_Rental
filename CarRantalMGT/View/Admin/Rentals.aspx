<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="CarRantalMGT.View.Admin.Rentals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-5"></div>           
                    <div class="col-6">
                        <h3 class="text-danger" >Rented Cars</h3>         
                        <img src="../../Assets/Img/download.jpg"/>

                    </div>
                    <div class="col"></div>
                </div>
                <div class="row" runat="server">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-9">
                        <form>
                            <asp:GridView  ID="RentList" class="table table-hover" runat="server" BorderColor="Red" AutoGenerateSelectButton="True" OnSelectedIndexChanged="RentList_SelectedIndexChanged" >
                            <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
                            </asp:GridView>
                                <input type="text" class="form-control" id="DelayTb" runat="server"/>
                                <label class="form-check-label" >Delay</label>
                                <br>
                                <input type="text" class="form-control" id="FineTb"  runat="server" />
                                <label class="form-check-label" >Fine</label>
                            
                            <div class="form-group d-grid">
                                <label id="InfoMsg" runat="server" class="text-danger"></label>
                                <asp:Button type="submit" id="Returnbtn" class="btn btn-danger btn-block " Text="Return" runat="server" OnClick="Returnbtn_Click"   />
                            </div>
                            
                         </form>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>
