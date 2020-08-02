<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CarStoreEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label> Enter Name</label>    
                    <asp:TextBox ID="txtUser" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage=" Name is Mendatory"></asp:RequiredFieldValidator>
                </div>
                
                
                <div class="form-group">
                    <label> Enter Email</label>    
                    <asp:TextBox ID="txtEmail" class="form-control" TextMode="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Mendatory"></asp:RequiredFieldValidator>
                </div>
                
                <div class="form-group">
                    <label> Enter Mobile</label>    
                    <asp:TextBox ID="txtMob" class="form-control" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMob" ErrorMessage="Mobile No is Mendatory"></asp:RequiredFieldValidator>
                </div>
                
                  <div class="form-group">
                    <label> Enter Message</label>    
                    <asp:TextBox ID="txtMsg" class="form-control" TextMode="Multiline" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMsg" ErrorMessage="Message is Mendatory"></asp:RequiredFieldValidator>
                </div>
                





                <asp:Button ID="BtnSubmit" runat="server" Text="Send " Class="btn btn-primary" OnClick="BtnSubmit_Click"  />

                <h1 runat="server" id="res"></h1>

            </div>

        </div>
    </div>
</asp:Content>
