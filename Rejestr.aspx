<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Rejestr.aspx.cs" Inherits="Projekt_zaliczeniowy.Rejestr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RzekiIMGWConnectionString %>" DeleteCommand="DELETE FROM [rejestr] WHERE [idRejestru] = @idRejestru" InsertCommand="INSERT INTO [rejestr] ([nazwa_lowiska], [gatunek_ryby], [ilosc], [waga], [metoda_polowu], [data]) VALUES (@nazwa_lowiska, @gatunek_ryby, @ilosc, @waga, @metoda_polowu, @data)" SelectCommand="SELECT * FROM [rejestr]" UpdateCommand="UPDATE [rejestr] SET [nazwa_lowiska] = @nazwa_lowiska, [gatunek_ryby] = @gatunek_ryby, [ilosc] = @ilosc, [waga] = @waga, [metoda_polowu] = @metoda_polowu, [data] = @data WHERE [idRejestru] = @idRejestru">
        <DeleteParameters>
            <asp:Parameter Name="idRejestru" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nazwa_lowiska" Type="String" />
            <asp:Parameter Name="gatunek_ryby" Type="String" />
            <asp:Parameter Name="ilosc" Type="Int32" />
            <asp:Parameter Name="waga" Type="String" />
            <asp:Parameter Name="metoda_polowu" Type="String" />
            <asp:Parameter DbType="Date" Name="data" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nazwa_lowiska" Type="String" />
            <asp:Parameter Name="gatunek_ryby" Type="String" />
            <asp:Parameter Name="ilosc" Type="Int32" />
            <asp:Parameter Name="waga" Type="String" />
            <asp:Parameter Name="metoda_polowu" Type="String" />
            <asp:Parameter DbType="Date" Name="data" />
            <asp:Parameter Name="idRejestru" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idRejestru" DataSourceID="SqlDataSource1" EnableViewState="False" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="idRejestru" HeaderText="idRejestru" InsertVisible="False" ReadOnly="True" SortExpression="idRejestru" />
            <asp:BoundField DataField="nazwa_lowiska" HeaderText="nazwa_lowiska" SortExpression="nazwa_lowiska" />
            <asp:BoundField DataField="gatunek_ryby" HeaderText="gatunek_ryby" SortExpression="gatunek_ryby" />
            <asp:BoundField DataField="ilosc" HeaderText="ilosc" SortExpression="ilosc" />
            <asp:BoundField DataField="waga" HeaderText="waga" SortExpression="waga" />
            <asp:BoundField DataField="metoda_polowu" HeaderText="metoda_polowu" SortExpression="metoda_polowu" />
            <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
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
     <div>
        <h5><span>Szczegóły:
                    </span>
                    </h5>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RzekiIMGWConnectionString %>" DeleteCommand="DELETE FROM [rejestr] WHERE [idRejestru] = @idRejestru" InsertCommand="INSERT INTO [rejestr] ([nazwa_lowiska], [gatunek_ryby], [ilosc], [waga], [metoda_polowu], [data]) VALUES (@nazwa_lowiska, @gatunek_ryby, @ilosc, @waga, @metoda_polowu, @data)" SelectCommand="SELECT * FROM [rejestr] WHERE ([idRejestru] = @idRejestru)" UpdateCommand="UPDATE [rejestr] SET [nazwa_lowiska] = @nazwa_lowiska, [gatunek_ryby] = @gatunek_ryby, [ilosc] = @ilosc, [waga] = @waga, [metoda_polowu] = @metoda_polowu, [data] = @data WHERE [idRejestru] = @idRejestru">
        <DeleteParameters>
            <asp:Parameter Name="idRejestru" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nazwa_lowiska" Type="String" />
            <asp:Parameter Name="gatunek_ryby" Type="String" />
            <asp:Parameter Name="ilosc" Type="Int32" />
            <asp:Parameter Name="waga" Type="String" />
            <asp:Parameter Name="metoda_polowu" Type="String" />
            <asp:Parameter DbType="Date" Name="data" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="idRejestru" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nazwa_lowiska" Type="String" />
            <asp:Parameter Name="gatunek_ryby" Type="String" />
            <asp:Parameter Name="ilosc" Type="Int32" />
            <asp:Parameter Name="waga" Type="String" />
            <asp:Parameter Name="metoda_polowu" Type="String" />
            <asp:Parameter DbType="Date" Name="data" />
            <asp:Parameter Name="idRejestru" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="idRejestru" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="idRejestru" HeaderText="Nr" InsertVisible="False" ReadOnly="True" SortExpression="idRejestru" />
            <asp:TemplateField HeaderText="nazwa łowiska" SortExpression="nazwa_lowiska">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nazwa_lowiska") %>' Width="352px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Wpisz nazwę łowiska" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="18px" Text='<%# Bind("nazwa_lowiska") %>' Width="347px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Wpisz nazwę łowiska" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("nazwa_lowiska") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="gatunek ryby" SortExpression="gatunek_ryby">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Text='<%# Bind("gatunek_ryby") %>' Width="336px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Wpisz gatunek ryby" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="21px" Text='<%# Bind("gatunek_ryby") %>' Width="335px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Wpisz gatunek ryby" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("gatunek_ryby") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ilość" SortExpression="ilosc">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ilosc") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="wpisz ilość" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ilosc") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="wpisz ilość" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ilosc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="waga" SortExpression="waga">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("waga") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="wpisz wagę" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("waga") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" ErrorMessage="wpisz wagę" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("waga") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="metoda połowu" SortExpression="metoda_polowu">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("metoda_polowu") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" ErrorMessage="wpisz metodę połowu" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("metoda_polowu") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox5" ErrorMessage="wpisz metodę połowu" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("metoda_polowu") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="data" SortExpression="data">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("data") %>'></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("data") %>'></asp:Calendar>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("data") %>'></asp:TextBox>
                    <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("data") %>'></asp:Calendar>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("data") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
