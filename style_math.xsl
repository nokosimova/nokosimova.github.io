<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html>
<body>    
   <math xmlns="http://www.w3.org/1998/Math/MathML">
        <mrow>
            <mi><xsl:value-of select="строка/операнд"/></mi>
            <mo><xsl:value-of select="строка/оператор"/></mo>
            <msqrt> 
                <xsl:apply-templates select="строка/корень/строка/дробь"/>
                <xsl:apply-templates select="строка/корень/строка/строка/низверх"/>
                <xsl:apply-templates select="строка/корень/строка/строка/строка/верх"/>
            </msqrt>
       </mrow>     
   </math>
</body>
</html>
</xsl:template>
<xsl:template match="строка/корень/строка/дробь">
   <mfrac>
   <mn><xsl:value-of select="строка/число"/></mn>
   <mi><xsl:value-of select="строка/операнд"/></mi>
   </mfrac>          
</xsl:template>

<xsl:template match="строка/корень/строка/строка/низверх">
            <munderover>
                <mo><xsl:value-of select="строка[1]/оператор"/></mo>
                <mrow>
                    <mi><xsl:value-of select="строка[2]/операнд"/></mi>
                    <mo><xsl:value-of select="строка[2]/оператор"/></mo>
                    <mn><xsl:value-of select="строка[2]/число"/></mn>
                </mrow>
                <mi><xsl:value-of select="строка[3]/операнд"/></mi>
          </munderover>
</xsl:template>
<xsl:template match="строка/корень/строка/строка/строка/верх">
    <msup>
        <mrow>
              <mo><xsl:value-of select="строка/оператор[1]"/></mo>
              <msub>
                <mi><xsl:value-of select="строка/низ/строка[1]/операнд"/></mi>
                <mi><xsl:value-of select="строка/низ/строка[2]/операнд"/></mi>
              </msub>
              <mo><xsl:value-of select="строка[1]/оператор[2]"/></mo>
              <mi><xsl:value-of select="строка[1]/операнд"/></mi>
              <mo><xsl:value-of select="строка[1]/оператор[3]"/></mo>
            </mrow>
            <mn><xsl:value-of select="строка[2]/число"/></mn>
          </msup>
</xsl:template>
</xsl:stylesheet>
