Public Class EmployeeMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        '===== Input Part
        Dim IP_UserName As String
        Dim IP_Password As String
        IP_UserName = Session("myUserName")
        IP_Password = Session("myPassword")
        '===== Process Part
        Using Data As New DataClasses1DataContext
            Dim myuser = From myTable_User In Data.TableIDs
                         Where myTable_User.user_username = IP_UserName And myTable_User.user_password = IP_Password

            If myuser.Count = 0 Then
                Response.Redirect("~/Login.aspx")
            Else
                Label1.Text = myuser.First.user_FnameLname
                TextBox1.Text = myuser.First.user_username
            End If
        End Using
        '===== Output Part
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("~/!Employee/employeeb2.aspx")
    End Sub
End Class