<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Chernykh_Kyrylo_anbasi_model._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Andmelabeli Opilanekuvamine<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Opilaneid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Opilaneid" HeaderText="Opilaneid" ReadOnly="True" SortExpression="Opilaneid" />
            <asp:BoundField DataField="Eesnimi" HeaderText="Eesnimi" SortExpression="Eesnimi" />
            <asp:BoundField DataField="Perenimi" HeaderText="Perenimi" SortExpression="Perenimi" />
            <asp:BoundField DataField="Isukukod" HeaderText="Isukukod" SortExpression="Isukukod" />
            <asp:BoundField DataField="Entity1_Ryhmid" HeaderText="Entity1_Ryhmid" SortExpression="Entity1_Ryhmid" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:targv23kirilConnectionString1 %>" DeleteCommand="DELETE FROM [OpilaneSet] WHERE [Opilaneid] = @Opilaneid" InsertCommand="INSERT INTO [OpilaneSet] ([Eesnimi], [Perenimi], [Isukukod], [Entity1_Ryhmid]) VALUES (@Eesnimi, @Perenimi, @Isukukod, @Entity1_Ryhmid)" ProviderName="<%$ ConnectionStrings:targv23kirilConnectionString1.ProviderName %>" SelectCommand="SELECT [Opilaneid], [Eesnimi], [Perenimi], [Isukukod], [Entity1_Ryhmid] FROM [OpilaneSet]" UpdateCommand="UPDATE [OpilaneSet] SET [Eesnimi] = @Eesnimi, [Perenimi] = @Perenimi, [Isukukod] = @Isukukod, [Entity1_Ryhmid] = @Entity1_Ryhmid WHERE [Opilaneid] = @Opilaneid">
            <DeleteParameters>
                <asp:Parameter Name="Opilaneid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Eesnimi" Type="String" />
                <asp:Parameter Name="Perenimi" Type="String" />
                <asp:Parameter Name="Isukukod" Type="String" />
                <asp:Parameter Name="Entity1_Ryhmid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Eesnimi" Type="String" />
                <asp:Parameter Name="Perenimi" Type="String" />
                <asp:Parameter Name="Isukukod" Type="String" />
                <asp:Parameter Name="Entity1_Ryhmid" Type="Int32" />
                <asp:Parameter Name="Opilaneid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>

</asp:Content>
