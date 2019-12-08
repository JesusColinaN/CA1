<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="menuTable" class="indent">
                    <thead>
                        <tr bgcolor ="FFFFFF">
                            <th colspan="4">Jesus Bar Menu</th>
                        </tr>
                        <tr bgcolor ="FFFFFF">
                            <th>Select</th>
                            <th>Item</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/barmenu/section">
                            <tr bgcolor ="FFFFFF">
                                <td colspan="4">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                            <tr  bgcolor ="FFFFFF" id="{position()}">
                                <xsl:attribute name="nonalcoholic">
                                    <xsl:value-of select="boolean(./@nonalcoholic)" />
                                </xsl:attribute>
                                <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                
                                <td>
                                    <xsl:value-of select="item" />
                                </td>
                            <td>
                                    <xsl:value-of select="quantity" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>