.class public Lcom/netease/lotr/PlatformConfigParser;
.super Ljava/lang/Object;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lotr/PlatformConfigParser$XMLHandler;,
        Lcom/netease/lotr/PlatformConfigParser$StringVariable;,
        Lcom/netease/lotr/PlatformConfigParser$IntVariable;,
        Lcom/netease/lotr/PlatformConfigParser$Variable;
    }
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/lotr/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    .line 160
    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser;->m_context:Landroid/content/Context;

    return-void
.end method

.method private createTempFile()Ljava/io/File;
    .locals 3

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "EncrytedPlatformConfig"

    const-string v2, "xml"

    .line 318
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    const-string v0, "NeoXDevice"

    const-string v1, "PlatformConfigParser create temp file failed!"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private decryptData([B)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Lcom/netease/lotr/PlatformConfigParser;->encryptData([B)V

    return-void
.end method

.method private decryptFile(Ljava/io/InputStream;)Ljava/io/File;
    .locals 5

    const/16 v0, 0x400

    .line 293
    new-array v0, v0, [B

    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/netease/lotr/PlatformConfigParser;->createTempFile()Ljava/io/File;

    move-result-object v1

    .line 297
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 299
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 300
    invoke-direct {p0, v0}, Lcom/netease/lotr/PlatformConfigParser;->decryptData([B)V

    const/4 v4, 0x0

    .line 301
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 305
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 306
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p1, "NeoXDevice"

    const-string v0, "PlatformConfigParser decryptFile failed!"

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private encryptData([B)V
    .locals 2

    const/4 v0, 0x0

    .line 335
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 336
    aget-byte v1, p1, v0

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/netease/lotr/PlatformConfigParser$Variable;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/lotr/PlatformConfigParser$Variable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVariable(Ljava/lang/String;I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/lotr/PlatformConfigParser$IntVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/lotr/PlatformConfigParser$IntVariable;-><init>(Lcom/netease/lotr/PlatformConfigParser;Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/lotr/PlatformConfigParser$StringVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/lotr/PlatformConfigParser$StringVariable;-><init>(Lcom/netease/lotr/PlatformConfigParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getOptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/netease/lotr/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 368
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;

    iget-object v2, p0, Lcom/netease/lotr/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/lotr/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;-><init>(Lcom/netease/lotr/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 370
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 371
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NeoXDevice"

    const-string v0, "PlatformConfigParser parse failed!"

    .line 375
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public parse(Ljava/io/InputStream;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 348
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/lotr/PlatformConfigParser;->decryptFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    .line 349
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 352
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/lotr/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "NeoXDevice"

    const-string p2, "PlatformConfigParser parse failed!"

    .line 358
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
