<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
		xmlns:g="http://base.google.com/ns/1.0">
    <xsl:output method="text"/>
    <xsl:strip-space elements="node"/>
    <xsl:strip-space elements="*" />

    <xsl:variable name="newline"><xsl:text>&#x0a;</xsl:text></xsl:variable>
    <xsl:variable name="sep"><xsl:text>&#x7f;</xsl:text></xsl:variable>

    <xsl:template match="rss/channel/Kurtka | rss/channel/link | rss/channel/description"/>
    <xsl:template match="rss/channel/item">

        <!-- ustawienie zmiennych -->
        <!--EXTERNAL_ID-->
        <xsl:choose>
            <xsl:when test="string-length(ewq)">
                <xsl:value-of select="normalize-space(ewq)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--NAME-->
        <xsl:choose>
            <xsl:when test="string-length(ewqewq)">
                <xsl:value-of select="substring(normalize-space(ewqewq),0,100)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>noName</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--NEW_PRODUCT-->
        <xsl:choose>
            <xsl:when test="g:condition = 'new'">
                <xsl:value-of select="1"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="0"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--AVAILABLE-->
        <xsl:choose>
            <xsl:when test="g:availability = 'in stock'">
                <xsl:value-of select="1"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="0"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--BESTSELLER-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="1"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="0"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--BRAND-->
        <xsl:choose>
            <xsl:when test="string-length(g:brand)">
                <xsl:value-of
                        select="substring(normalize-space(g:brand),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--CATEGORIES-->
        <xsl:choose>
            <xsl:when test="string-length(g:google_product_category)">
                <xsl:value-of select="substring(normalize-space(g:google_product_category),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--CATEGORY_MAIN-->
        <xsl:choose>
            <xsl:when test="string-length(g:product_type)">
                <xsl:value-of select="substring(normalize-space(g:product_type),0,200)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--DESCRIPTION-->
        <xsl:choose>
            <xsl:when test="string-length(g:description)">
                <xsl:value-of select="substring(normalize-space(g:description),0,1024)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--DETAIL_1-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--DETAIL_2-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--DETAIL_3-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--DETAIL_4-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--DETAIL_5-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--MANUFACTURER-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,100)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--PRICE-->
        <xsl:choose>
            <xsl:when test="string-length(g:price)">
                <xsl:value-of select="normalize-space(translate(g:price, ' EUR', ''))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--PRICE_PROMO-->
        <xsl:choose>
            <xsl:when test="string-length(g:sale_price)">
                <xsl:value-of select="normalize-space(translate(g:sale_price, ' EUR', ''))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--QUANTITY-->
        <xsl:choose>
            <xsl:when test="string-length(g:quantity)">
                <xsl:value-of select="normalize-space(g:quantity)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--URL_PRODUCT-->
        <xsl:choose>
            <xsl:when test="string-length(g:link)">
                <xsl:value-of select="substring(normalize-space(g:link),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--URL_IMG-->
        <xsl:choose>
            <xsl:when test="string-length(g:image_link)">
                <xsl:value-of select="substring(normalize-space(g:image_link),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--GENDER-->
        <xsl:choose>
            <xsl:when test="g:gender = 'male'">
                <xsl:value-of select="1"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="0"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--URL_CATEGORY-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="normalize-space(UNDEFINED)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--URL_CATEGORY_MARK-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,512)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--POPULARITY-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="normalize-space(UNDEFINED)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--SEASON-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,40)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--COLOR-->
        <xsl:choose>
            <xsl:when test="string-length(g:color)">
                <xsl:value-of select="substring(normalize-space(g:color),0,40)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--ADDITIONAL_IMAGE-->
        <xsl:choose>
            <xsl:when test="string-length(UNDEFINED)">
                <xsl:value-of select="substring(normalize-space(UNDEFINED),0,128)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>\N</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$sep"/>
        <!--INT_DETAIL1-->
        <xsl:text>\N</xsl:text>
        <xsl:value-of select="$sep"/>
        <!--INT_DETAIL2-->
        <xsl:text>\N</xsl:text>
        <xsl:value-of select="$sep"/>
        <!--DEC_DETAIL1-->
        <xsl:text>\N</xsl:text>
        <xsl:value-of select="$sep"/>
        <!--array-->
        <xsl:text>\N</xsl:text>
        <!-- koniec -->
        <xsl:value-of select="$newline"/>
    </xsl:template>
</xsl:stylesheet>
