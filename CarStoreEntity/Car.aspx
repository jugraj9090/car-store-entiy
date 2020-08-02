<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Car.aspx.cs" Inherits="CarStoreEntity.Car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFFFFF;color: #284775;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #999999;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FeaturesTextBox" runat="server" Text='<%# Bind("Features") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FeaturesTextBox" runat="server" Text='<%# Bind("Features") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF;color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                            <th runat="server"></th>
                                            <th runat="server">Id</th>
                                            <th runat="server">Model</th>
                                            <th runat="server">Company</th>
                                            <th runat="server">Price</th>
                                            <th runat="server">Features</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarStoreConnectionString2 %>" DeleteCommand="DELETE FROM [CarRecord] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CarRecord] ([Model], [Company], [Price], [Features]) VALUES (@Model, @Company, @Price, @Features)" SelectCommand="SELECT * FROM [CarRecord] ORDER BY [Id] DESC" UpdateCommand="UPDATE [CarRecord] SET [Model] = @Model, [Company] = @Company, [Price] = @Price, [Features] = @Features WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Features" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Features" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>

        </div>

    </div>
</asp:Content>
