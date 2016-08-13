Attribute VB_Name = "Módulo1"
Public Function Valor(resultado As String) As Double
For x = 1 To Len(resultado)
If Mid(resultado, x, 1) = "." Then Mid(resultado, x, 1) = ""
If Mid(resultado, x, 1) = "," Then Mid(resultado, x, 1) = "."
Next
Valor = Val(resultado)

End Function


