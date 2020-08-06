﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserOrderEdit.aspx.cs" Inherits="Order.UserOrderEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="" ID="lblOrderId"></asp:Label>

    <br />

    Coffee: <asp:Label runat="server" Text="" ID="lblCoffeeType"></asp:Label>

    Quantity:<asp:TextBox ID="quantity" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="requiredQuantity" runat="server" ControlToValidate="quantity" EnableClientScript="False" ErrorMessage="Quantity is required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rangeQuantity" runat="server" ErrorMessage="Number must be 1 to 12" EnableClientScript="False" ControlToValidate="quantity" MaximumValue="12" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>

    Topping: <br />
            <asp:RadioButtonList ID="topping" runat="server">
                <asp:ListItem Value="2.50" Text="Cinnamon"></asp:ListItem>
                <asp:ListItem Value="3.50" Text="Whipped Cream"></asp:ListItem>
                <asp:ListItem Value="2.00" Text="Nutmeg"></asp:ListItem>
                <asp:ListItem Value="0.00" Text="None"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="requiredTopping" runat="server" ControlToValidate="topping" EnableClientScript="False" ErrorMessage="Topping is required!" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />

    Add-Ons: <br />
            <asp:CheckBoxList ID="addOns" runat="server">
                <asp:ListItem Value="0.50" Text="Brown Sugar"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="White Sugar"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="Salt"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="Creamer"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="Stirrer"></asp:ListItem>
            </asp:CheckBoxList>

    <br />

    <asp:Button ID="submit" runat="server" Text="Submit Order" OnClick="submit_Click" />
</asp:Content>
