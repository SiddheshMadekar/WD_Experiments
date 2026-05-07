<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<head>

<title>Student Application</title>

<style>

body{
    font-family: Arial;
    background-color:#f2f2f2;
}

table{
    width:70%;
    margin:auto;
    border-collapse:collapse;
    background:white;
    margin-top:30px;
}

th, td{
    border:1px solid black;
    padding:10px;
    text-align:center;
}

th{
    background-color:darkblue;
    color:white;
}

h2{
    text-align:center;
    color:darkred;
}

</style>

</head>

<body>

<h2>Student Information</h2>

<table>

<tr>
<th>Name</th>
<th>Roll No</th>
<th>Branch</th>
<th>City</th>
</tr>

<xsl:for-each select="students/student">

<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="rollno"/></td>
<td><xsl:value-of select="branch"/></td>
<td><xsl:value-of select="city"/></td>
</tr>

</xsl:for-each>

</table>

</body>

</html>

</xsl:template>

</xsl:stylesheet>