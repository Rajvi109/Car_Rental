<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CarRantalMGT.View.Admin.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>           
                    <div class="col">
                        <h3 class="text-danger pl-4" align="center">Manage Cars</h3>         
                        <img src="../../Assets/Img/download (2).jpg"/>

                    </div>
                    <div class="col"></div>
                </div>
                <div class="row" runat="server">
                    <div class="col">
                        <form id="myform">
                            <div class="form-group">
                              <label for="exampleInputEmail1">Licence Number</label>
                              <input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Brand</label>
                                <input type="text" class="form-control" id="BrandTb" placeholder="Enter The Car's Brand" runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Model</label>
                                <input type="text" class="form-control" id="ModelTb" placeholder="Enter Model" runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Price</label>
                                <input type="text" class="form-control" id="PriceTb" placeholder="Enter Price" runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Color</label>
                                <input type="text" class="form-control" id="ColorTb" placeholder="Enter Color" runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Available</label>
                                <asp:DropDownList ID="AvailableCb" runat="server" class="form-control">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Booked</asp:ListItem>
                                </asp:DropDownList>
                                
                            </div>
                            <br>
                            <label id="ErrorMsg" runat="server" class="text-danger"></label><br/>
                            <asp:Button type="submit" id="Editbtn" class="btn btn-danger " Text="Edit" runat="server" OnClick="Editbtn_Click" />
                            <asp:Button type="submit" id="Addbtn" class="btn btn-danger " Text="Add" runat="server" OnClick="Addbtn_Click" />
                            <asp:Button type="submit" id="Deletebtn" class="btn btn-danger " Text="Delete" runat="server" OnClick="Deletebtn_Click" />
                           
                         </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h1>Car List</h1>
                <asp:GridView ID="CarList" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged" BorderColor="Red">
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
