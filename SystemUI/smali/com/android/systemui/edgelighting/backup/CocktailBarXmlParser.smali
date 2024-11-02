.class public final Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final itemsList:Ljava/util/ArrayList;

.field public mCurrentElement:Ljava/lang/Boolean;

.field public mCurrentValue:Ljava/lang/String;

.field public mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->itemsList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 38
    .line 39
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :try_start_1
    new-instance p2, Lorg/xml/sax/InputSource;

    .line 43
    .line 44
    new-instance v0, Ljava/io/InputStreamReader;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    .line 4
    .line 5
    const-string/jumbo p1, "value"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p0, p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo p1, "type"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p0, p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo p1, "setting"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 24
    .line 25
    const-string/jumbo p2, "name"

    .line 26
    .line 27
    .line 28
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->itemsList:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
