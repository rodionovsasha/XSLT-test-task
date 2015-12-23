<?xml version="1.0" encoding="utf-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output standalone="no" method="xml" media-type="text/xml" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>

    <xsl:template match='/'>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="*|@*">
        <xsl:call-template name="copy-nodes"/>
    </xsl:template>

    <xsl:template name="copy-nodes">
        <xsl:copy>
            <xsl:call-template name="copy-attributes"/>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template name="copy-attributes">
        <xsl:for-each select="@*">
            <xsl:copy/>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="math">
        <math>
            <xsl:attribute name="number">
                <xsl:choose>
                    <xsl:when test="parent::feature">
                        <xsl:value-of select="count(preceding-sibling::math)
                        + count(//featureAnchor[@features = current()/parent::feature/@id]/preceding::math)
                        + count(//feature[@id = //featureAnchor[@features = current()/parent::feature/@id]/preceding::featureAnchor/@features]/math)
                        + 1"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="count(preceding::math)
                        + count(//feature[@id = current()/preceding::featureAnchor/@features]/math) 
                        + 1"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:copy-of select="@*"/>
        </math>
    </xsl:template>
</xsl:stylesheet>