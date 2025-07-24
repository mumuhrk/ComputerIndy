<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="seach2.aspx.vb" Inherits="ComputerIndy.seach2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br></br><div class="container"><div class="shadow-lg p-3 mb-5 bg-body rounded">
            <tr>
              
                <td style="border:2px solid violet;vertical-align:top" class="auto-style1">
                    
                <center> <asp:Label ID="Label1" runat="server" Text="ค้นหาอุปกรณ์ที่ส่งซ่อม กรุณากรอกรหัสผลิตภัณฑ์ที่ส่งซ่อม"></asp:Label>
&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" Text="ค้นหาอุปกรณ์" />
                 <br />
                 <center>
                     <br />
                     <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" EmptyDataText="ไม่พบรหัสสินค้า กรุณาเช็ครหัสใหม่" Visible="False">
                         <Columns>
                             <asp:BoundField DataField="EquipmentCode" HeaderText="EquipmentCode" SortExpression="EquipmentCode" />
                             <asp:BoundField DataField="column1" HeaderText="สถานะซ่อม" SortExpression="column1" />
                             <asp:BoundField DataField="column2" HeaderText="ราคาซ่อม" SortExpression="column2" />
                             <asp:BoundField DataField="column3" HeaderText="วันที่คาดว่าจะสินค้าแล้วเสร็จ" SortExpression="column3" />
                             <asp:TemplateField HeaderText="Pic" SortExpression="Pic">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pic") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("Pic") %>' Width="150px" />
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:BoundField DataField="column4" HeaderText="หมายเหตุ" SortExpression="column4" />
                         </Columns>
                         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                         <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                         <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                         <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#FFF1D4" />
                         <SortedAscendingHeaderStyle BackColor="#B95C30" />
                         <SortedDescendingCellStyle BackColor="#F1E5CE" />
                         <SortedDescendingHeaderStyle BackColor="#93451F" />
                     </asp:GridView></center>
                 
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [EquipmentCode], [สถานะซ่อม] AS column1, [ราคาซ่อม] AS column2, [วันที่คาดว่าจะสินค้าแล้วเสร็จ] AS column3, [Pic], [หมายเหตุ] AS column4 FROM [Equipment] WHERE ([EquipmentCode] = @EquipmentCode)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="TextBox1" Name="EquipmentCode" PropertyName="Text" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                    
</div>
    </div>
</asp:Content>
