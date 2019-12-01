<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txthoractual = New System.Windows.Forms.TextBox()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtalarma = New System.Windows.Forms.TextBox()
        Me.btnon = New System.Windows.Forms.Button()
        Me.btnoff = New System.Windows.Forms.Button()
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(25, 115)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(85, 17)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Hora actual:"
        '
        'txthoractual
        '
        Me.txthoractual.Location = New System.Drawing.Point(143, 112)
        Me.txthoractual.Name = "txthoractual"
        Me.txthoractual.Size = New System.Drawing.Size(100, 22)
        Me.txthoractual.TabIndex = 1
        '
        'Timer1
        '
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(25, 189)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(52, 17)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Alarma"
        '
        'txtalarma
        '
        Me.txtalarma.Location = New System.Drawing.Point(143, 186)
        Me.txtalarma.Name = "txtalarma"
        Me.txtalarma.Size = New System.Drawing.Size(100, 22)
        Me.txtalarma.TabIndex = 3
        '
        'btnon
        '
        Me.btnon.Location = New System.Drawing.Point(52, 281)
        Me.btnon.Name = "btnon"
        Me.btnon.Size = New System.Drawing.Size(75, 23)
        Me.btnon.TabIndex = 4
        Me.btnon.Text = "ON"
        Me.btnon.UseVisualStyleBackColor = True
        '
        'btnoff
        '
        Me.btnoff.Location = New System.Drawing.Point(213, 281)
        Me.btnoff.Name = "btnoff"
        Me.btnoff.Size = New System.Drawing.Size(75, 23)
        Me.btnoff.TabIndex = 5
        Me.btnoff.Text = "OFF"
        Me.btnoff.UseVisualStyleBackColor = True
        '
        'Timer2
        '
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.btnoff)
        Me.Controls.Add(Me.btnon)
        Me.Controls.Add(Me.txtalarma)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.txthoractual)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents txthoractual As TextBox
    Friend WithEvents Timer1 As Timer
    Friend WithEvents Label2 As Label
    Friend WithEvents txtalarma As TextBox
    Friend WithEvents btnon As Button
    Friend WithEvents btnoff As Button
    Friend WithEvents Timer2 As Timer
End Class
