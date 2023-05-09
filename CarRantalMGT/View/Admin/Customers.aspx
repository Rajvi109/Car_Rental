<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CarRantalMGT.View.Admin.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>           
                    <div class="col">
                        <h4 class="text-danger pl-4" align="center">Manage Customer</h4>             
                        <img src="../../Assets/Img/images.png" />

                    </div>
                    <div class="col"></div>
                </div>
                <div class="row" runat="server">
                    <div class="col">
                        <form id="myform">
                            <div class="form-group">
                              <label for="exampleInputEmail1">Customer Name</label>
                              <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer's Name " runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Customer Address</label>
                                <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Customer Phone</label>
                                <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Phone No." runat="server">  
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Customer Password</label>
                                <input type="text" class="form-control" id="PassTb" placeholder="Enter Password" runat="server">  
                            </div>
                            
                            <br>
                            <label id="ErrorMsg" runat="server" class="text-danger"></label><br/>
                            <asp:Button type="submit" id="Editbtn" class="btn btn-danger " Text="Edit" runat="server" OnClick="Editbtn_Click"  />
                            <asp:Button type="submit" id="Addbtn" class="btn btn-danger " Text="Add" runat="server" OnClick="Addbtn_Click1"  />
                            <asp:Button type="submit" id="Deletebtn" class="btn btn-danger " Text="Delete" runat="server" OnClick="Deletebtn_Click"  />
                           </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                
                    <h1>Customers List</h1>
                <asp:GridView ID="CustomerList" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CustomerList_SelectedIndexChanged"  BorderColor="Red" >
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                </asp:GridView>

                
            </div>
        </div>
    </div>
</asp:Content>
