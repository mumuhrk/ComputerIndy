Public Class register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Using Data As New DataClasses1DataContext
            Dim existingUser = Data.TableIDs.Where(Function(u) u.user_username = TextBox1.Text).FirstOrDefault()
            If existingUser IsNot Nothing Then
                ' หาก username นี้มีอยู่แล้วในฐานข้อมูล ให้แจ้งเตือนผู้ใช้งาน
                MsgBox("Username นี้มีอยู่แล้ว โปรดเลือกชื่อผู้ใช้อื่น")
                Response.Redirect("register.aspx")
            Else
                ' หาก username ยังไม่มีอยู่ในฐานข้อมูล ก็บันทึกข้อมูลเข้าไป
                Dim myUser_Record As New TableID

                myUser_Record.user_username = TextBox1.Text
                myUser_Record.user_password = TextBox2.Text
                myUser_Record.user_FnameLname = TextBox3.Text
                myUser_Record.user_phonenumber = TextBox4.Text
                myUser_Record.user_Address = TextBox5.Text
                myUser_Record.user_type = "member"

                Data.TableIDs.InsertOnSubmit(myUser_Record)
                Data.SubmitChanges()

            End If
        End Using
        ' แจ้งเตือนผู้ใช้งานว่าการสมัครเสร็จสมบูรณ์
        MsgBox("สมัครสมาชิกเสร็จสินระบบกำลังผ่านท่านกลับไป")
        Response.Redirect("Login.aspx")
    End Sub
End Class