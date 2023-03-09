<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/root/графика">
        <svg xmlns="http://www.w3.org/2000/svg" 
             width="ширина"
             height="высота">
           
 <ellipse id="{эллипс[1]/@id}" 
          fill="{эллипс[1]/@заливка}" 
          stroke="{эллипс[1]/@ободок}" 
          stroke-width="{эллипс[1]/@ширина-ободка}"
          cx="{эллипс[1]/@cx}"
          cy="{эллипс[1]/@cy}"
          rx="{эллипс[1]/@rx}"
          ry="{эллипс[1]/@ry}"/>

 <ellipse id="{эллипс[2]/@id}" 
          fill="{эллипс[2]/@заливка}" 
          stroke="{эллипс[2]/@ободок}" 
          stroke-width="{эллипс[2]/@ширина-ободка}"
          cx="{эллипс[2]/@cx}"
          cy="{эллипс[2]/@cy}"
          rx="{эллипс[2]/@rx}"
          ry="{эллипс[2]/@ry}"/>

 <ellipse id="{эллипс[3]/@id}" 
          fill="{эллипс[3]/@заливка}" 
          stroke="{эллипс[3]/@ободок}" 
          stroke-width="{эллипс[3]/@ширина-ободка}"
          cx="{эллипс[3]/@cx}"
          cy="{эллипс[3]/@cy}"
          rx="{эллипс[3]/@rx}"
          ry="{эллипс[3]/@ry}"/>
</svg>
</xsl:template>
</xsl:stylesheet>
