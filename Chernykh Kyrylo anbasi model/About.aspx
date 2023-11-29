<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Chernykh_Kyrylo_anbasi_model.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ryhmid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Ryhmid" HeaderText="Ryhmid" ReadOnly="True" SortExpression="Ryhmid" />
                    <asp:BoundField DataField="Ryhmanimi" HeaderText="Ryhmanimi" SortExpression="Ryhmanimi" />
                    <asp:BoundField DataField="Osakond" HeaderText="Osakond" SortExpression="Osakond" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:targv23kirilConnectionString1 %>" DeleteCommand="DELETE FROM [ryhmSet] WHERE [Ryhmid] = @Ryhmid" InsertCommand="INSERT INTO [ryhmSet] ([Ryhmanimi], [Osakond]) VALUES (@Ryhmanimi, @Osakond)" ProviderName="<%$ ConnectionStrings:targv23kirilConnectionString1.ProviderName %>" SelectCommand="SELECT [Ryhmid], [Ryhmanimi], [Osakond] FROM [ryhmSet]" UpdateCommand="UPDATE [ryhmSet] SET [Ryhmanimi] = @Ryhmanimi, [Osakond] = @Osakond WHERE [Ryhmid] = @Ryhmid">
                <DeleteParameters>
                    <asp:Parameter Name="Ryhmid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ryhmanimi" Type="String" />
                    <asp:Parameter Name="Osakond" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ryhmanimi" Type="String" />
                    <asp:Parameter Name="Osakond" Type="String" />
                    <asp:Parameter Name="Ryhmid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h2>
    </main>
</asp:Content>
