.class public final Lcom/appsflyer/internal/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/a$a;
    }
.end annotation


# static fields
.field private static $$a:I

.field private static $$b:C

.field private static AFDateFormat:C

.field private static AFDeepLinkManager:I

.field private static dateFormatUTC:I

.field private static valueOf:C

.field private static values:C


# direct methods
.method private static $$a(ILjava/lang/String;IZI)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    move v0, v2

    .line 8119
    :goto_0
    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    .line 4294967295
    :cond_0
    :goto_1
    check-cast v0, [C

    .line 8115
    new-array v1, p4, [C

    .line 8152
    sget v4, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    move v5, v2

    .line 8119
    :goto_2
    if-ge v5, p4, :cond_6

    move v4, v3

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 8152
    sget v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v4, v4, 0x21

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    move v4, v2

    .line 8119
    :goto_4
    packed-switch v4, :pswitch_data_2

    .line 8121
    aget-char v4, v0, v5

    .line 8123
    ushr-int v4, p0, v4

    int-to-char v4, v4

    aput-char v4, v1, v5

    .line 8124
    aget-char v4, v1, v5

    sget v6, Lcom/appsflyer/internal/a;->$$a:I

    rem-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v1, v5

    .line 8119
    add-int/lit8 v4, v5, 0x54

    move v5, v4

    goto :goto_2

    .line 4294967295
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 8152
    sget v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_1

    .line 8121
    :pswitch_1
    aget-char v4, v0, v5

    .line 8123
    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v5

    .line 8124
    aget-char v4, v1, v5

    sget v6, Lcom/appsflyer/internal/a;->$$a:I

    sub-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v1, v5

    .line 8119
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    .line 8128
    :pswitch_2
    if-lez p2, :cond_2

    .line 8152
    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8132
    :cond_1
    new-array v0, p4, [C

    .line 8134
    invoke-static {v1, v2, v0, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8135
    sub-int v4, p4, p2

    invoke-static {v0, v2, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8136
    sub-int v4, p4, p2

    invoke-static {v0, p2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8140
    :cond_2
    if-eqz p3, :cond_3

    move v3, v2

    .line 8119
    :cond_3
    packed-switch v3, :pswitch_data_3

    .line 8142
    new-array v0, p4, [C

    .line 8144
    :goto_5
    if-ge v2, p4, :cond_4

    .line 8146
    sub-int v3, p4, v2

    add-int/lit8 v3, v3, -0x1

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    .line 8144
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :pswitch_3
    move-object v0, v1

    .line 8152
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_5
    move v5, v2

    goto/16 :goto_2

    :cond_6
    move v4, v2

    .line 8119
    goto/16 :goto_3

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    move v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private static $$a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 152
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 121
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_9

    const/16 v0, 0x59

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 157
    :cond_0
    :pswitch_0
    const-string v0, "\ud968\u3225\u00d1\ub7aa\ue15d\u2c04\u5fbe\ucdb7\u28ad\u818c\uc4c2\u675d\u60f0\u0fb0\ucf6e\u6303\u067c\u15c6\ubcf1\uc469\u11ce\u908a\u11ce\u908a\u7e33\uac73\u389b\u41e8\u94d7\u2069\u6796\u836b\u3910\ud44d"

    invoke-static {v0}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 121
    :pswitch_1
    if-eqz p0, :cond_7

    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    :pswitch_2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    const-wide/16 v2, 0x0

    .line 126
    const/4 v1, 0x0

    .line 129
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 121
    const/4 v4, 0x0

    :goto_5
    packed-switch v4, :pswitch_data_3

    .line 144
    sget v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v4, v4, 0x51

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 130
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    add-int/2addr v1, v4

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 134
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v5, v1, v4, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 121
    const/16 v1, 0x4f

    :goto_7
    packed-switch v1, :pswitch_data_4

    .line 139
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 157
    :pswitch_4
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 144
    const-wide/16 v0, 0x64

    add-long/2addr v0, v2

    .line 157
    :goto_8
    sget v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    :cond_2
    move-wide v2, v0

    .line 143
    :pswitch_5
    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-lez v0, :cond_a

    .line 121
    const/16 v0, 0x5e

    :goto_9
    packed-switch v0, :pswitch_data_5

    .line 148
    const/16 v0, 0x17

    long-to-int v1, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 151
    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    .line 121
    const/4 v0, 0x2

    :goto_a
    packed-switch v0, :pswitch_data_6

    .line 144
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 152
    const/16 v0, 0x4d

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x2a

    rsub-int/lit8 v1, v1, 0x56

    const-string v2, "\u0000"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    neg-int v3, v3

    const-string v4, "javascript:"

    invoke-static {v4}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    shr-int/2addr v6, v7

    invoke-static {v1, v2, v3, v4, v6}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :goto_b
    :pswitch_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 144
    :cond_3
    const-wide/16 v0, 0x64

    rem-long v0, v2, v0

    goto :goto_8

    .line 152
    :cond_4
    const/16 v0, 0x17

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x4e

    const-string v2, "\u0000"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    neg-int v3, v3

    const-string v4, "javascript:"

    invoke-static {v4}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {v1, v2, v3, v4, v6}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :catchall_0
    move-exception v0

    throw v0

    .line 121
    :cond_5
    const/16 v1, 0x57

    goto/16 :goto_7

    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x58

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x20

    goto/16 :goto_9

    :cond_b
    const/16 v0, 0x28

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x59
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x57
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5e
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x28
        :pswitch_6
    .end packed-switch
.end method

.method private static $$b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v10, 0x30

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 360
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 344
    :try_start_0
    const-class v3, Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    add-int/lit16 v4, v4, 0x85

    const-string v5, "\u0004\u0001\ufffb\ufff9\u000c\u0001\u0007\u0006\u000b\uffff\ufffd\u000c\uffe1\u0006\u000b\u000c\ufff9\u0004\u0004\ufffd\ufffc\uffd9\u0008\u0008"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v6

    cmpl-float v6, v6, v9

    add-int/lit8 v6, v6, 0x9

    const-string v7, ""

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    const-string v8, ""

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x69

    invoke-static {v4, v5, v6, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 345
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 347
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    const/16 v0, 0x13

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 347
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 348
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 360
    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 349
    :cond_2
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 360
    :goto_2
    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v3

    const-string v4, ""

    invoke-static {v4, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int v4, v4, 0x83

    const-string v5, "\u0008\uffdd\u0002\uffff\ufffd\u0005\r\u000f\u0007\uffec\uffff\u0000\u0006\uffff\ufffd\u000e\uffdf\u0012\ufffd\uffff\n\u000e\u0003\t"

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x1

    const-string v7, "http://"

    invoke-static {v7}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x18

    invoke-static {v4, v5, v6, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0322\uf33b\u208a\u9df2\uabad\u5c51\uc41e\u60a7\u688e\ue7aa\u6521\u83b0\uad84\ub253\uf86f\u06ed\u1cd1\u2895\uabad\u5c51\u5579\u1f72\uf56a\u4c7e\u63f6\ua129\ude26\u219f\ub2fc\u7ea2\uc41e\u60a7\u8738\u2a7c\u8150\uc449\u119c\ud0c4\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb\u7f7e\u7fdb"

    invoke-static {v6}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5198
    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v3, v12, v4, v1}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    :goto_3
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 354
    :catch_1
    move-exception v0

    .line 355
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    rsub-int v4, v4, 0x85

    const-string v5, "\u0008\uffdd\u0002\uffff\ufffd\u0005\r\u000f\u0007\uffec\uffff\u0000\u0006\uffff\ufffd\u000e\uffdf\u0012\ufffd\uffff\n\u000e\u0003\t"

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    cmpl-float v6, v6, v9

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    rsub-int/lit8 v8, v8, 0x19

    invoke-static {v4, v5, v6, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0322\uf33b\u208a\u9df2\uabad\u5c51\uc41e\u60a7\u688e\ue7aa\u6521\u83b0\uad84\ub253\uf86f\u06ed\u1cd1\u2895\uabad\u5c51\u5579\u1f72\uf56a\u4c7e\u63f6\ua129\ude26\u219f\ub2fc\u7ea2\uc41e\u60a7\u8738\u2a7c\u8150\uc449\u119c\ud0c4\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb\u7f7e\u7fdb"

    invoke-static {v6}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6198
    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v3, v12, v4, v1}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 356
    :catch_2
    move-exception v0

    .line 357
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v3

    invoke-static {v10}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    add-int/lit8 v4, v4, 0x54

    const-string v5, "\u0008\uffdd\u0002\uffff\ufffd\u0005\r\u000f\u0007\uffec\uffff\u0000\u0006\uffff\ufffd\u000e\uffdf\u0012\ufffd\uffff\n\u000e\u0003\t"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v6

    cmpl-float v6, v6, v9

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v2, v9, v9}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v8

    cmpl-float v8, v8, v9

    rsub-int/lit8 v8, v8, 0x18

    invoke-static {v4, v5, v6, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0322\uf33b\u208a\u9df2\uabad\u5c51\uc41e\u60a7\u688e\ue7aa\u6521\u83b0\uad84\ub253\uf86f\u06ed\u1cd1\u2895\uabad\u5c51\u5579\u1f72\uf56a\u4c7e\u63f6\ua129\ude26\u219f\ub2fc\u7ea2\uc41e\u60a7\u8738\u2a7c\u8150\uc449\u119c\ud0c4\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb\u7f7e\u7fdb"

    invoke-static {v6}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7198
    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v3, v12, v4, v1}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    move v0, v2

    .line 360
    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xc

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static $$b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    move v0, v2

    .line 9124
    :goto_0
    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    .line 4294967295
    :cond_0
    :goto_1
    check-cast v0, [C

    .line 9104
    array-length v1, v0

    new-array v5, v1, [C

    .line 9107
    const/4 v1, 0x2

    new-array v6, v1, [C

    move v1, v2

    .line 9108
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 9124
    const/16 v4, 0x12

    :goto_3
    packed-switch v4, :pswitch_data_1

    sget v4, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v4, v4, 0x59

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 9110
    :cond_1
    aget-char v4, v0, v1

    aput-char v4, v6, v2

    .line 9111
    add-int/lit8 v4, v1, 0x1

    aget-char v4, v0, v4

    aput-char v4, v6, v3

    .line 9112
    sget-char v4, Lcom/appsflyer/internal/a;->$$b:C

    sget-char v7, Lcom/appsflyer/internal/a;->valueOf:C

    sget-char v8, Lcom/appsflyer/internal/a;->values:C

    sget-char v9, Lcom/appsflyer/internal/a;->AFDateFormat:C

    invoke-static {v6, v4, v7, v8, v9}, Lcom/appsflyer/internal/ae;->values([CCCCC)V

    .line 9117
    aget-char v4, v6, v2

    aput-char v4, v5, v1

    .line 9118
    add-int/lit8 v4, v1, 0x1

    aget-char v7, v6, v3

    aput-char v7, v5, v4

    .line 9119
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 4294967295
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 9124
    :goto_4
    sget v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_1

    .line 9121
    :pswitch_0
    aget-char v0, v5, v2

    .line 9124
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :pswitch_1
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    const/16 v4, 0x1b

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    const/4 v0, 0x1

    sput v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    const/16 v0, 0x1e

    sput v0, Lcom/appsflyer/internal/a;->$$a:I

    const v0, 0xffbb

    sput-char v0, Lcom/appsflyer/internal/a;->valueOf:C

    const v0, 0xcb88

    sput-char v0, Lcom/appsflyer/internal/a;->AFDateFormat:C

    const v0, 0xbb6d

    sput-char v0, Lcom/appsflyer/internal/a;->values:C

    const/16 v0, 0x6675

    sput-char v0, Lcom/appsflyer/internal/a;->$$b:C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 275
    sget v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 261
    const/16 v1, 0x45

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "\u805d\ue62f\u4a22\u1f06\u73b9\u4c68\ua863\ua85a\uc9e0\ue6be\u11ec\u86ad\uca37\u1487\u6ff2\uccb5"

    invoke-static {v4}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 263
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v4, "\u8afc\u428f\uc76c\uf570\u59c3\u801a\u5d94\u5ed6"

    invoke-static {v4}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string v4, "\u8c98\u4bee\u332a\ud762\u8392\uf4c9\u9b13\u630b\u18a8\ufdba\u561f\u94e2"

    invoke-static {v4}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 266
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 275
    :cond_0
    sget v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 261
    const/16 v1, 0x30

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 275
    :cond_1
    :goto_3
    :pswitch_0
    return-object v0

    .line 261
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "\u805d\ue62f\u4a22\u1f06\u73b9\u4c68\ua863\ua85a\uc9e0\ue6be\u11ec\u86ad\uca37\u1487\u6ff2\uccb5"

    invoke-static {v4}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v4

    const-string v5, "\u0cfa\u5926\uc177\u1793\u7687\u05c2\u27ed\u6391\u9c3d\u56c3\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb"

    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ufd5d\u9fb8\u208a\u9df2\uabad\u5c51\uc41e\u60a7\u5eae\u1fc7\u05fd\u6ec5\ude26\u219f\u7730\ud212\u0ffd\ub8f8\uc177\u1793\ufbbb\u20d1\u0bee\u0a8f\u5204\u20af\u8738\u2a7c\u8150\uc449\u119c\ud0c4\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb\u7f7e\u7fdb"

    invoke-static {v7}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4198
    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {v4, v0, v5, v2}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 275
    :catchall_0
    move-exception v0

    throw v0

    .line 261
    :cond_2
    const/16 v1, 0x20

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto :goto_4

    :cond_4
    const/16 v1, 0x5a

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static AFDateFormat(Landroid/content/Context;J)Ljava/lang/String;
    .locals 17
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, -0x1

    cmp-long v2, v2, v8

    rsub-int v2, v2, 0x84

    const-string v3, "\u0000\u000f\uffc9\uffff\u0004\n\r\uffff\t\ufffc\r\u0000\u0002\ufffc\t\ufffc\uffe8\u0014\t\n\u0003\u000b\u0000\u0007\u0000\uffef\uffc9\u0014\t\n\u0003\u000b\u0000\u0007"

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    rsub-int/lit8 v7, v7, 0xb

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v8

    const-string v9, ""

    const/16 v10, 0x30

    invoke-static {v9, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    add-int/lit8 v9, v9, 0x23

    invoke-static {v2, v3, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 109
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 83
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    add-int/lit8 v2, v2, 0x4e

    const-string v3, "\u0000"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x30

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    const/16 v9, 0x30

    invoke-static {v9}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x5

    invoke-static {v2, v3, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1303
    invoke-static {v7}, Lcom/appsflyer/internal/a;->AFDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    const-string v8, "\ua26b\u78be"

    invoke-static {v8}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/a;->AFDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1310
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    rsub-int/lit8 v2, v2, 0x4e

    const-string v8, "\u0000"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/16 v10, 0x30

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v2, v8, v9, v10, v11}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/a;->valueOf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1319
    if-nez v8, :cond_9

    .line 109
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 1323
    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/appsflyer/internal/a;->$$b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 91
    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 93
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x7c

    const-string v8, "\ufffc\u0015\u0015\u000f\u000f\uffea\uffea\u0001\u0006\u0006\uffcf\uffef\uffef\uffcf\u001b\u001b\u001b\u001b"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v9

    add-int/lit8 v9, v9, 0x12

    const-string v10, "file://"

    invoke-static {v10}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    rsub-int/lit8 v11, v11, 0x12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFDateFormat;->getDataFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 94
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2200
    const-string v2, "\u85aa\u696e\u38ae\ud023\ub4cd\u50c9\u7afa\uddc9\u3871\u1b49\u33c3\u0c55\u31f1\u4970\uc090\u9b36\ud8a3\u0c7a\u87b8\u779f\u08c9\u580f\u9f84\u6103\ud8a3\u0c7a"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    sget v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 2200
    :cond_0
    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_5
    :pswitch_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    const-string v2, "\ub33b\u8bdc\u38ae\ud023\ub4cd\u50c9\u7afa\uddc9\ud5da\u5690\ud83e\ueb42\u4a08\u7b07\ud83e\ueb42\ud65c\u7668\u3428\u7061\u3b14\u6b4d\u0abc\uaab1"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    const-string v2, "\uefff\u2b44\u38ae\ud023\ub4cd\u50c9\u7afa\uddc9\u3871\u1b49\u33c3\u0c55\uc884\u9fff\ucb8e\u7f88\u1fb0\u775b\u175c\u21e5\ua438\u3f6d"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    sget v2, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    const/16 v2, 0xa

    :goto_7
    packed-switch v2, :pswitch_data_2

    .line 2204
    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    const-string v3, "\u0011\u0003\r\u0000\u0008\u0011\ufff4\uffcd\u0013\u0004\r\uffcd\u0003\u0008\u000e"

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    const-string v8, ""

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    rsub-int/lit8 v9, v9, 0x10

    invoke-static {v2, v3, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 109
    const/4 v2, 0x1

    :goto_9
    packed-switch v2, :pswitch_data_3

    .line 2206
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x4f

    const-string v3, "\u0000"

    const-string v7, ""

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    neg-int v7, v7

    const-string v8, "http://"

    invoke-static {v8}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/PointF;->length(FF)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    invoke-static {v2, v3, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2217
    invoke-static {v2}, Lcom/appsflyer/HashUtils;->toSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2219
    invoke-static {v2}, Lcom/appsflyer/HashUtils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3183
    const/16 v2, 0x11

    .line 3194
    const/4 v5, 0x2

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 3195
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 3183
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 3184
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4183
    const/16 v2, 0x1b

    .line 4194
    const/4 v5, 0x2

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 4195
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 4183
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4184
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsflyer/internal/a;->$$a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    return-object v2

    .line 83
    :pswitch_1
    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1313
    :cond_1
    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 109
    :pswitch_2
    sget v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 1320
    :cond_2
    const-string v2, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v8, v9, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4e

    const-string v8, "\u0000"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    neg-int v11, v11

    invoke-static {v2, v8, v9, v10, v11}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 97
    :catch_0
    move-exception v2

    const-string v2, "\ud968\u3225\u00d1\ub7aa\ue15d\u2c04\u5fbe\ucdb7\u28ad\u818c\uc4c2\u675d\u60f0\u0fb0\ucf6e\u6303\u067c\u15c6\ubcf1\uc469\u11ce\u908a\u11ce\u908a\u7e33\uac73\u389b\u41e8\u94d7\u2069\u6796\u836b\u3910\ud44d"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 2200
    :cond_3
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    rsub-int/lit8 v2, v2, 0x4f

    const-string v3, "\u0000"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    const-string v8, ""

    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    add-int/lit8 v9, v9, 0x1

    invoke-static {v2, v3, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 109
    sget v3, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    const/16 v3, 0x3f

    :goto_c
    packed-switch v3, :pswitch_data_4

    goto/16 :goto_5

    .line 2202
    :cond_4
    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4e

    const-string v3, "\u0000"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/webkit/URLUtil;->isCookielessProxyUrl(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    shr-int/lit8 v9, v9, 0x16

    rsub-int/lit8 v9, v9, 0x1

    invoke-static {v2, v3, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 2204
    :cond_5
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    add-int/lit8 v2, v2, 0x4d

    const-string v3, "\u0000"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1

    const-string v8, "http://"

    invoke-static {v8}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    shr-int/lit8 v9, v9, 0x6

    add-int/lit8 v9, v9, 0x1

    invoke-static {v2, v3, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    .line 2206
    :pswitch_3
    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 109
    :catchall_0
    move-exception v2

    throw v2

    :pswitch_4
    const-string v2, "\ua26b\u78be"

    invoke-static {v2}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :cond_6
    const/16 v3, 0x38

    goto/16 :goto_c

    :cond_7
    const/16 v2, 0x48

    goto/16 :goto_7

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method private static AFDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 231
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x4c

    const-string v1, "\u0000"

    const-string v2, ""

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x80

    const-string v3, "file://"

    invoke-static {v3}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 250
    const/16 v0, 0x16

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 235
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    shr-int/lit8 v0, v0, 0x6

    rsub-int/lit8 v0, v0, 0x63

    const-string v1, "\uffe9\u0017"

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, ""

    const/16 v5, 0x30

    invoke-static {v4, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 236
    array-length v3, v2

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    add-int/lit8 v0, v3, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    add-int/lit8 v1, v1, 0x4c

    const-string v5, "\u0000"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x1

    const-string v7, "http://"

    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v1, v5, v6, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_3

    .line 250
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 248
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_0
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 244
    :cond_0
    aget-object v0, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4c

    const-string v6, "\u0000"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x30

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v8

    const-string v9, ""

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x80

    invoke-static {v5, v6, v7, v8, v9}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 250
    :pswitch_1
    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    nop

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static valueOf(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 284
    const/16 v0, 0x63

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 284
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_1
    sget v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 284
    const/16 v1, 0x59

    :cond_0
    packed-switch v1, :pswitch_data_1

    .line 288
    :goto_2
    :pswitch_0
    return-object v0

    .line 282
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 284
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    .line 284
    :cond_1
    const/16 v0, 0x3f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method private static valueOf(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 169
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 166
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v0, 0x1

    .line 169
    sget v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    :cond_1
    nop

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
