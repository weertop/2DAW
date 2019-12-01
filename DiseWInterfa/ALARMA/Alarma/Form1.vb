Public Class Form1

    Private Sub Form1_Load_1(sender As Object, e As EventArgs) Handles MyBase.Load
        Timer1.Start()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        txthoractual.Text = TimeString
    End Sub

    Private Sub btnon_Click(sender As Object, e As EventArgs) Handles btnon.Click
        Timer2.Start()
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        If txtalarma.Text = txthoractual.Text Then
            MsgBox("¡¡ALARMA!!")
        End If
    End Sub

    Private Sub btnoff_Click(sender As Object, e As EventArgs) Handles btnoff.Click
        Timer2.Stop()
    End Sub
End Class
