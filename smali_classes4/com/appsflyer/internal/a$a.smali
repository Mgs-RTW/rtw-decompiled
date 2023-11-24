.class public final Lcom/appsflyer/internal/a$a;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static $$a:[C

.field private static $$b:I

.field private static collectIntentsFromActivities:Z

.field private static dateFormatUTC:I

.field private static getDataFormatter:Z

.field private static getInstance:I

.field private static values:[C


# instance fields
.field private final AFDateFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final valueOf:Landroid/content/Context;


# direct methods
.method private $$a()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 454
    const-string v3, ""

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const-string v5, "\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v4, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x7f

    const-string v8, "\u0087\u008c\u0083\u0091\u0090\u008f\u0084\u008e\u0083\u008d\u008c\u008b\u0082\u008a\u0088"

    invoke-static {v5, v6, v7, v8}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 458
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x7f

    const-string v8, "\u0095\u0093\u0094\u0093\u0092"

    invoke-static {v5, v6, v7, v8}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 459
    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    const-string v7, "\u0001\u0001\u0001\u0001\u0000"

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 461
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/HashUtils;->toSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 469
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    const-string v7, "\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001"

    const/16 v8, 0x30

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 471
    if-eqz v3, :cond_4

    move v0, v1

    .line 472
    :goto_1
    packed-switch v0, :pswitch_data_0

    const/16 v0, -0xa8c

    move v3, v0

    .line 474
    :goto_2
    iget-object v0, p0, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 475
    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x7f

    const-string v8, "\u0092\u0099\u009c"

    invoke-static {v5, v6, v7, v8}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    const/16 v0, 0x25

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 489
    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    move v0, v1

    .line 472
    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 476
    :cond_0
    :goto_5
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v5, 0x0

    const-string v6, "http://"

    invoke-static {v6}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    .line 477
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    const-string v6, "\u0000"

    const/16 v7, 0x30

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x0

    const/16 v6, 0x30

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View;->resolveSize(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x7f

    const-string v6, "\u008b\u009d"

    invoke-static {v2, v3, v5, v6}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const-string v2, "\u0001\u0000"

    const-string v3, "http://"

    invoke-static {v3}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    .line 482
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1495
    invoke-static {v0}, Lcom/appsflyer/internal/a$a$a;->$$b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/a$a$a;->$$b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/a$a$a;->valueOf([B)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 489
    :goto_6
    return-object v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v11, [I

    fill-array-data v5, :array_7

    const-string v6, "\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string v7, "about:"

    invoke-static {v7}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x7f

    const-string v4, "\u0099\u0098\u0095\u0094\u0088\u0098\u0089\u0085\u0095\u0097\u0096\u0095\u0087\u0083\u0087\u0081\u0083\u0081"

    invoke-static {v10, v10, v3, v4}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_0

    .line 471
    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    rsub-int/lit8 v6, v6, 0x7f

    const-string v7, "\u0087\u0082\u008e\u008c\u0083\u0082\u0087\u009b\u009a\u0087\u008c"

    invoke-static {v0, v5, v6, v7}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/16 v5, -0xa8c

    .line 472
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    move v3, v0

    goto/16 :goto_2

    :pswitch_1
    move v2, v1

    .line 475
    goto/16 :goto_5

    .line 485
    :catch_1
    move-exception v0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v11, [I

    fill-array-data v2, :array_8

    const-string v3, "\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v10}, Landroid/webkit/URLUtil;->isCookielessProxyUrl(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v11, [I

    fill-array-data v1, :array_9

    const-string v2, "\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 489
    :pswitch_2
    sget v0, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7d

    :try_start_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    mul-int/lit8 v7, v7, 0x63

    shr-int/2addr v6, v7

    const-string v7, "\u0087\u0082\u008e\u008c\u0083\u0082\u0087\u009b\u009a\u0087\u008c"

    invoke-static {v0, v5, v6, v7}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2c82

    .line 472
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    move v3, v0

    goto/16 :goto_2

    :cond_2
    move v0, v2

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x34

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_1

    .line 456
    :array_0
    .array-data 4
        0x0
        0xc
        0x7
        0x6
    .end array-data

    .line 459
    :array_1
    .array-data 4
        0x3e
        0x5
        0x0
        0x0
    .end array-data

    .line 469
    :array_2
    .array-data 4
        0x6f
        0x25
        0x0
        0x0
    .end array-data

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 476
    :array_3
    .array-data 4
        0x94
        0x6
        0x91
        0x5
    .end array-data

    .line 478
    :array_4
    .array-data 4
        0x9a
        0x1
        0xa8
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x9b
        0x2
        0x59
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x9d
        0x2
        0x8d
        0x0
    .end array-data

    .line 464
    :array_7
    .array-data 4
        0x43
        0x2c
        0x0
        0x7
    .end array-data

    .line 486
    :array_8
    .array-data 4
        0x43
        0x2c
        0x0
        0x7
    .end array-data

    .line 487
    :array_9
    .array-data 4
        0x9f
        0x10
        0x0
        0x0
    .end array-data
.end method

.method private static $$a([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    check-cast v0, [B

    .line 2192
    aget v4, p0, v2

    .line 2193
    aget v7, p0, v1

    .line 2194
    aget v8, p0, v11

    .line 2195
    const/4 v3, 0x3

    aget v9, p0, v3

    .line 2197
    sget-object v5, Lcom/appsflyer/internal/a$a;->$$a:[C

    .line 2198
    new-array v3, v7, [C

    .line 2200
    invoke-static {v5, v4, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2203
    if-eqz v0, :cond_1

    .line 2205
    new-array v4, v7, [C

    move v5, v2

    move v6, v2

    .line 2208
    :goto_1
    if-ge v5, v7, :cond_9

    .line 2210
    aget-byte v10, v0, v5

    if-ne v10, v1, :cond_5

    .line 2212
    aget-char v10, v3, v5

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    sub-int v6, v10, v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 2219
    :goto_2
    aget-char v6, v4, v5

    .line 2208
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 4294967295
    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 2226
    :cond_2
    :goto_3
    if-lez v9, :cond_3

    .line 2228
    new-array v0, v7, [C

    .line 2230
    invoke-static {v4, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2231
    sub-int v3, v7, v9

    invoke-static {v0, v2, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2232
    sub-int v3, v7, v9

    invoke-static {v0, v9, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2236
    :cond_3
    if-eqz p2, :cond_a

    move v0, v1

    .line 2257
    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 2238
    new-array v3, v7, [C

    move v5, v2

    .line 2240
    :goto_5
    if-ge v5, v7, :cond_b

    move v0, v1

    .line 2257
    :goto_6
    packed-switch v0, :pswitch_data_1

    sget v0, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 2242
    :cond_4
    sub-int v0, v7, v5

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v4, v0

    aput-char v0, v3, v5

    .line 2240
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    .line 2257
    goto :goto_5

    .line 2216
    :cond_5
    aget-char v10, v3, v5

    shl-int/lit8 v10, v10, 0x1

    sub-int v6, v10, v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    goto :goto_2

    .line 2257
    :pswitch_0
    sget v0, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    :cond_6
    move-object v0, v3

    .line 2249
    :goto_7
    if-lez v8, :cond_8

    .line 2251
    :goto_8
    if-ge v2, v7, :cond_8

    .line 2257
    sget v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 2253
    :cond_7
    aget-char v1, v0, v2

    aget v3, p0, v11

    sub-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 2251
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2257
    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_9
    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_6

    :pswitch_1
    move-object v0, v4

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static $$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 3195
    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4294967295
    :cond_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    check-cast v0, [B

    if-eqz p0, :cond_2

    .line 3195
    sget v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const/16 v1, 0x2b

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v3, 0x4

    :try_start_0
    div-int/lit8 v3, v3, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4294967295
    :goto_2
    check-cast v1, [C

    .line 3158
    sget-object v4, Lcom/appsflyer/internal/a$a;->values:[C

    .line 3159
    sget v5, Lcom/appsflyer/internal/a$a;->$$b:I

    .line 3161
    sget-boolean v3, Lcom/appsflyer/internal/a$a;->collectIntentsFromActivities:Z

    if-eqz v3, :cond_3

    .line 3164
    array-length v6, v0

    .line 3165
    new-array v7, v6, [C

    move v3, v2

    .line 3167
    :goto_3
    if-ge v3, v6, :cond_9

    move v1, v2

    .line 3195
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 3169
    add-int/lit8 v1, v6, -0x1

    sub-int/2addr v1, v3

    aget-byte v1, v0, v1

    add-int/2addr v1, p2

    aget-char v1, v4, v1

    sub-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v7, v3

    .line 3167
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_1
    move-object v0, p3

    .line 4294967295
    goto :goto_0

    :cond_2
    move-object v1, p0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_2

    .line 3172
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    .line 3200
    nop

    :goto_5
    return-object v0

    .line 3175
    :cond_3
    sget-boolean v0, Lcom/appsflyer/internal/a$a;->getDataFormatter:Z

    if-eqz v0, :cond_5

    .line 3178
    array-length v0, v1

    .line 3179
    new-array v3, v0, [C

    .line 3181
    :goto_6
    if-ge v2, v0, :cond_4

    .line 3183
    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v2

    aget-char v6, v1, v6

    sub-int/2addr v6, p2

    aget-char v6, v4, v6

    sub-int/2addr v6, v5

    int-to-char v6, v6

    aput-char v6, v3, v2

    .line 3181
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3186
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 3192
    :cond_5
    array-length v1, p1

    .line 3193
    new-array v3, v1, [C

    .line 3195
    :goto_7
    if-ge v2, v1, :cond_8

    const/16 v0, 0x4b

    :goto_8
    packed-switch v0, :pswitch_data_2

    .line 3200
    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 3197
    rem-int/lit8 v0, v1, 0x1

    shr-int/2addr v0, v2

    aget v0, p1, v0

    shr-int/2addr v0, p2

    aget-char v0, v4, v0

    shl-int/2addr v0, v5

    int-to-char v0, v0

    aput-char v0, v3, v2

    .line 3195
    add-int/lit8 v2, v2, 0x12

    goto :goto_7

    .line 3197
    :cond_6
    add-int/lit8 v0, v1, -0x1

    sub-int/2addr v0, v2

    aget v0, p1, v0

    sub-int/2addr v0, p2

    aget-char v0, v4, v0

    sub-int/2addr v0, v5

    int-to-char v0, v0

    aput-char v0, v3, v2

    .line 3195
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3200
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 3195
    :catchall_0
    move-exception v0

    throw v0

    :cond_7
    const/16 v1, 0x14

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x2c

    goto :goto_8

    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_2
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    sput v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    const/16 v0, 0xaf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/a$a;->$$a:[C

    const/16 v0, 0x11b

    sput v0, Lcom/appsflyer/internal/a$a;->$$b:I

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appsflyer/internal/a$a;->values:[C

    sput-boolean v1, Lcom/appsflyer/internal/a$a;->getDataFormatter:Z

    sput-boolean v1, Lcom/appsflyer/internal/a$a;->collectIntentsFromActivities:Z

    return-void

    nop

    :array_0
    .array-data 2
        0x36s
        0x73s
        0x7as
        0x71s
        0x6es
        0x75s
        0x6fs
        0x6as
        0x69s
        0x70s
        0x75s
        0x72s
        0x27s
        0x4es
        0x57s
        0x50s
        0x4as
        0x49s
        0x47s
        0x49s
        0x30s
        0x6as
        0x6es
        0x6bs
        0x6as
        0x43s
        0x45s
        0x68s
        0x65s
        0x43s
        0x45s
        0x68s
        0x6fs
        0x4cs
        0x4bs
        0x70s
        0x6es
        0x6es
        0x44s
        0x42s
        0x6es
        0x6ds
        0x64s
        0x6as
        0x72s
        0x6es
        0x6cs
        0x6es
        0x54s
        0x2ds
        0x43s
        0x63s
        0x65s
        0x6as
        0x68s
        0x64s
        0x42s
        0x43s
        0x66s
        0x69s
        0x69s
        0x6bs
        0x16s
        0x4fs
        0x6as
        0x48s
        0x2cs
        0x10s
        0x42s
        0x64s
        0x68s
        0x6as
        0x65s
        0x63s
        0x43s
        0x2ds
        0x54s
        0x6es
        0x6cs
        0x6es
        0x72s
        0x6as
        0x64s
        0x6ds
        0x6es
        0x42s
        0x44s
        0x6es
        0x6es
        0x70s
        0x4bs
        0x42s
        0x6ds
        0x70s
        0x66s
        0x6bs
        0x4bs
        0x43s
        0x65s
        0x68s
        0x45s
        0x43s
        0x6as
        0x6bs
        0x6es
        0x6as
        0x69s
        0x6bs
        0x69s
        0x69s
        0x66s
        0x30s
        0x67s
        0x69s
        0x6bs
        0x70s
        0x6cs
        0x66s
        0x49s
        0x4bs
        0x6bs
        0x71s
        0x6cs
        0x69s
        0x71s
        0x51s
        0x47s
        0x62s
        0x6bs
        0x6es
        0x6cs
        0x6es
        0x4es
        0x38s
        0x41s
        0x4as
        0x54s
        0x4cs
        0x4bs
        0x55s
        0x5cs
        0x51s
        0x45s
        0x44s
        0x47s
        0x4as
        0x46s
        0x44s
        0x100s
        0x104s
        0xffs
        0xf6s
        0x104s
        0x103s
        0x85s
        0x7fs
        0xd1s
        0x59s
        0xd8s
        0x33s
        0x4bs
        0x50s
        0x50s
        0x50s
        0x51s
        0x50s
        0x50s
        0x50s
        0x51s
        0x32s
        0x4as
        0x65s
        0x6es
        0x6as
        0x67s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x17ds
        0x18ds
        0x17cs
        0x189s
        0x17fs
        0x186s
        0x180s
        0x181s
        0x154s
        0x184s
        0x18es
        0x18fs
        0x167s
        0x190s
        0x17es
        0x183s
        0x15fs
        0x151s
        0x149s
        0x14ds
        0x14bs
        0x150s
        0x14fs
        0x14cs
        0x153s
        0x188s
        0x18bs
        0x193s
        0x141s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    .line 391
    iput-object p2, p0, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    .line 392
    invoke-direct {p0}, Lcom/appsflyer/internal/a$a;->valueOf()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/appsflyer/internal/a$a;->$$a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method private valueOf()Ljava/lang/String;
    .locals 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 420
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    iget-object v0, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v3, "\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string v4, "javascript:"

    invoke-static {v4}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    iget-object v0, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v5, v6, v12

    add-int/lit8 v5, v5, 0x7e

    const-string v6, "\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v4, v5, v6}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 424
    if-nez v1, :cond_2

    .line 425
    const/16 v0, 0x2a

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 448
    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const-string v1, "\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000"

    const-string v4, "content:"

    invoke-static {v4}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 431
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v0, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/appsflyer/internal/a$a;->values([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 434
    if-le v1, v8, :cond_3

    .line 425
    const/16 v0, 0x9

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 439
    :goto_3
    if-ge v1, v8, :cond_4

    .line 425
    const/16 v0, 0x26

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 440
    add-int/lit8 v0, v1, 0x1

    .line 441
    const/16 v1, 0x31

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_3

    .line 425
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    const-string v1, "\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000"

    const-string v4, "content:"

    invoke-static {v4}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :pswitch_0
    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 435
    :cond_1
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 444
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v4, v4, v12

    rsub-int v4, v4, 0x80

    const-string v5, "\u0088\u0087\u0086"

    invoke-static {v1, v3, v4, v5}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 448
    :goto_5
    return-object v0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v8, [I

    fill-array-data v2, :array_3

    const-string v3, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001"

    const-string v4, ""

    const-string v5, ""

    invoke-static {v4, v10, v5, v10, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v12

    add-int/lit8 v0, v0, 0x7e

    const-string v1, "\u0089\u0089\u0089\u0089\u0088\u0087\u0086"

    invoke-static {v9, v9, v0, v1}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 425
    :cond_2
    const/16 v0, 0x61

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x38

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x43

    goto/16 :goto_4

    :pswitch_2
    move-object v0, v1

    goto/16 :goto_1

    .line 421
    nop

    :array_0
    .array-data 4
        0x0
        0xc
        0x7
        0x6
    .end array-data

    .line 425
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_2
    .end packed-switch

    :array_1
    .array-data 4
        0xc
        0x8
        0x0
        0x0
    .end array-data

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch

    :array_2
    .array-data 4
        0xc
        0x8
        0x0
        0x0
    .end array-data

    .line 447
    :array_3
    .array-data 4
        0x14
        0x2a
        0x0
        0x1e
    .end array-data
.end method

.method private static varargs values([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 397
    :goto_0
    if-ge v1, v8, :cond_3

    .line 414
    const/16 v0, 0x62

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 397
    aget-object v0, p0, v1

    .line 398
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 414
    goto :goto_0

    .line 401
    :pswitch_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 402
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v3

    .line 405
    :goto_2
    if-ge v5, v6, :cond_5

    .line 414
    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 406
    :cond_0
    const/4 v0, 0x0

    move v2, v3

    move-object v4, v0

    .line 407
    :goto_3
    if-ge v2, v8, :cond_2

    aget-object v0, p0, v2

    .line 408
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 409
    if-nez v4, :cond_4

    .line 414
    const/16 v1, 0x61

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 409
    :cond_1
    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 407
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v4, v1

    goto :goto_3

    .line 409
    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    xor-int/2addr v0, v1

    .line 414
    sget v1, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_5

    .line 411
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 414
    :cond_3
    const/16 v0, 0x35

    goto :goto_1

    :cond_4
    const/16 v1, 0x47

    goto :goto_4

    :cond_5
    return-object v7

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch
.end method
