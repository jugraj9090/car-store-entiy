<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginStore.aspx.cs" Inherits="CarStoreEntity.LoginStore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label> Enter User Name</label>    
                    <asp:TextBox ID="txtUser" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="User Name is Mendatory"></asp:RequiredFieldValidator>
                </div>
                
                
                <div class="form-group">
                    <label> Enter User Password</label>    
                    <asp:TextBox ID="txtPassword" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="User Password is Mendatory"></asp:RequiredFieldValidator>
                </div>
                
                <asp:Button ID="BtnSubmit" runat="server" Text="Login " Class="btn btn-primary" OnClick="BtnSubmit_Click" />

                <h1 runat="server" id="res"></h1>

            </div>

        </div>
    </div>
</asp:Content>
