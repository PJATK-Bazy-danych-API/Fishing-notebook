<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Projekt_zaliczeniowy.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="stacja" HeaderText="stacja" SortExpression="stacja" />
            <asp:BoundField DataField="rzeka" HeaderText="rzeka" SortExpression="rzeka" />
            <asp:BoundField DataField="stan_wody" HeaderText="stan wody" SortExpression="stan_wody" />
            <asp:BoundField DataField="stan_wody_data_pomiaru" HeaderText="data pomiaru" SortExpression="stan_wody_data_pomiaru" />
            <asp:BoundField DataField="temperatura_wody" HeaderText="temperatura wody" SortExpression="temperatura_wody" />
            <asp:BoundField DataField="temperatura" HeaderText="temperatura powietrza" SortExpression="temperatura" />
            <asp:BoundField DataField="predkosc_wiatru" HeaderText="predkość wiatru" SortExpression="predkosc_wiatru" />
            <asp:BoundField DataField="kierunek_wiatru" HeaderText="kierunek wiatru" SortExpression="kierunek_wiatru" />
            <asp:BoundField DataField="suma_opadu" HeaderText="suma opadu" SortExpression="suma_opadu" />
            <asp:BoundField DataField="cisnienie" HeaderText="ciśnienie" SortExpression="cisnienie" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RzekiIMGWConnectionString %>" SelectCommand="SELECT RzekiStanWody.stacja, RzekiStanWody.rzeka, RzekiStanWody.stan_wody, RzekiStanWody.stan_wody_data_pomiaru, RzekiStanWody.temperatura_wody, Pogoda.temperatura, Pogoda.predkosc_wiatru, Pogoda.kierunek_wiatru, Pogoda.suma_opadu, Pogoda.cisnienie 
        FROM RzekiStanWody 
        INNER JOIN Pogoda ON RzekiStanWody.stacja = Pogoda.stacja 
        WHERE (RzekiStanWody.rzeka = 'San') OR (RzekiStanWody.rzeka = 'Dunajec') OR (RzekiStanWody.rzeka = 'Pasłęka') OR (RzekiStanWody.rzeka = 'Łupawa') OR (RzekiStanWody.rzeka = 'Drawa')"></asp:SqlDataSource>
</asp:Content>
