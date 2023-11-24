.class public Lcom/netease/ntunisdk/base/OrderInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;
    }
.end annotation


# static fields
.field public static final NT_OS_SDK_INVALID_CURRENCY:I = 0x9

.field public static final ORDERID_MAX_LEN:I = 0x40

.field public static final S_GS_CHECKING:I = 0x4

.field public static final S_GS_CHECK_ERR:I = 0x6

.field public static final S_GS_CHECK_OK:I = 0x5

.field public static final S_PREPARING:I = 0x0

.field public static final S_SDK_CHANNEL_IN_BLACKLIST:I = 0x1ae

.field public static final S_SDK_CHECKING:I = 0x1

.field public static final S_SDK_CHECK_CANCEL:I = 0xb

.field public static final S_SDK_CHECK_ERR:I = 0x3

.field public static final S_SDK_CHECK_OK:I = 0x2

.field public static final S_SDK_CHECK_RESTORE_OK:I = 0xa

.field public static final S_SDK_NO_CHANNEL:I = 0xa8

.field public static final S_WRONG_ORDER_ID:I = 0x8

.field public static final S_WRONG_PRODUCT_ID:I = 0x7

.field private static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:J

.field private H:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 520
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->e:F

    const/4 v0, 0x1

    .line 521
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    const-string v0, ""

    .line 522
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->h:I

    const-string v1, ""

    .line 524
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->i:Ljava/lang/String;

    const-string v1, ""

    .line 525
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->j:Ljava/lang/String;

    const-string v1, ""

    .line 526
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->k:Ljava/lang/String;

    const-string v1, ""

    .line 527
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    const-string v1, ""

    .line 528
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->m:Ljava/lang/String;

    const-string v1, ""

    .line 529
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->n:Ljava/lang/String;

    .line 530
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->o:Z

    const-string v0, ""

    .line 531
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->p:Ljava/lang/String;

    const-string v0, ""

    .line 532
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->q:Ljava/lang/String;

    const-string v0, ""

    .line 533
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->r:Ljava/lang/String;

    const-string v0, ""

    .line 535
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->s:Ljava/lang/String;

    const-string v0, ""

    .line 537
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->t:Ljava/lang/String;

    const-string v0, ""

    .line 539
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->u:Ljava/lang/String;

    const-string v0, ""

    .line 540
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->v:Ljava/lang/String;

    const-string v0, ""

    .line 541
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->w:Ljava/lang/String;

    const-string v0, ""

    .line 542
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->x:Ljava/lang/String;

    const-string v0, ""

    .line 546
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->A:Ljava/lang/String;

    const-string v0, ""

    .line 547
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->B:Ljava/lang/String;

    const/4 v0, -0x1

    .line 549
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->C:I

    const-string v0, ""

    .line 550
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->D:Ljava/lang/String;

    const-string v0, ""

    .line 552
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->E:Ljava/lang/String;

    .line 386
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->b:Ljava/lang/String;

    .line 387
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->c:Ljava/lang/String;

    .line 388
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->F:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->F:Ljava/lang/String;

    .line 389
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->d:Ljava/lang/String;

    .line 390
    iget v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->e:F

    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->e:F

    .line 391
    iget v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    .line 392
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->g:Ljava/lang/String;

    .line 393
    iget v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->h:I

    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->h:I

    .line 394
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->i:Ljava/lang/String;

    .line 395
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->j:Ljava/lang/String;

    .line 396
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->k:Ljava/lang/String;

    .line 397
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->m:Ljava/lang/String;

    .line 399
    iget-boolean v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;->o:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->o:Z

    .line 400
    iget-object p1, p1, Lcom/netease/ntunisdk/base/OrderInfo;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->p:Ljava/lang/String;

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->G:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 520
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->e:F

    const/4 v0, 0x1

    .line 521
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    const-string v0, ""

    .line 522
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->h:I

    const-string v1, ""

    .line 524
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->i:Ljava/lang/String;

    const-string v1, ""

    .line 525
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->j:Ljava/lang/String;

    const-string v1, ""

    .line 526
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->k:Ljava/lang/String;

    const-string v1, ""

    .line 527
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    const-string v1, ""

    .line 528
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->m:Ljava/lang/String;

    const-string v1, ""

    .line 529
    iput-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->n:Ljava/lang/String;

    .line 530
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->o:Z

    const-string v0, ""

    .line 531
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->p:Ljava/lang/String;

    const-string v0, ""

    .line 532
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->q:Ljava/lang/String;

    const-string v0, ""

    .line 533
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->r:Ljava/lang/String;

    const-string v0, ""

    .line 535
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->s:Ljava/lang/String;

    const-string v0, ""

    .line 537
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->t:Ljava/lang/String;

    const-string v0, ""

    .line 539
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->u:Ljava/lang/String;

    const-string v0, ""

    .line 540
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->v:Ljava/lang/String;

    const-string v0, ""

    .line 541
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->w:Ljava/lang/String;

    const-string v0, ""

    .line 542
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->x:Ljava/lang/String;

    const-string v0, ""

    .line 546
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->A:Ljava/lang/String;

    const-string v0, ""

    .line 547
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->B:Ljava/lang/String;

    const/4 v0, -0x1

    .line 549
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->C:I

    const-string v0, ""

    .line 550
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->D:Ljava/lang/String;

    const-string v0, ""

    .line 552
    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->E:Ljava/lang/String;

    .line 375
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setProductId(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->G:J

    return-void
.end method

.method private a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;
    .locals 2

    .line 565
    sget-object v0, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 9

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UniSDK OrderInfo"

    const-string v0, "prodJson is null"

    .line 202
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "goodsid"

    .line 207
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "goodsinfo"

    .line 208
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "price"

    .line 209
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 210
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    .line 212
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "ratios"

    .line 213
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 214
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 215
    invoke-static {v6}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 216
    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_1
    move-object v7, v5

    if-gtz v4, :cond_2

    const/4 p0, 0x1

    const/4 v4, 0x1

    .line 223
    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "channel_goodsids"

    .line 224
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 225
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 226
    invoke-static {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    :cond_3
    move-object v5, p0

    .line 229
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v6, "channel_goodstypes"

    .line 230
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 231
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 232
    invoke-static {v6}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    :cond_4
    move-object v6, p0

    const-string p0, ""

    const-string v8, "extra"

    .line 236
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 237
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 238
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    move-object v8, p0

    .line 241
    invoke-static/range {v1 .. v8}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 242
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .line 1134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "goodscart"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "UniSDK OrderInfo"

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extJson(goodscart):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getProductList()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static hasProduct(Lcom/netease/ntunisdk/base/OrderInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "GAS_GOODS_CART"

    .line 362
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    invoke-static {v1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->produceCartInfo()Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static hasProduct(Ljava/lang/String;)Z
    .locals 1

    .line 351
    sget-object v0, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 34

    .line 958
    new-instance v1, Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 959
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 964
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "orderId"

    .line 965
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkOrderId"

    .line 966
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpOrderId"

    .line 967
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pid"

    .line 968
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "productCurrentPrice"

    .line 969
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "productCount"

    .line 970
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "orderDesc"

    .line 971
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "orderStatus"

    .line 972
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "orderErrReason"

    .line 973
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "orderEtc"

    .line 974
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "signature"

    .line 975
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "orderChannel"

    .line 976
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "orderCurrency"

    .line 977
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "webPayment"

    .line 978
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    move/from16 v17, v1

    const-string v1, "qrCodeParams"

    .line 979
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    const-string v1, "userData"

    .line 980
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    const-string v1, "jfExtInfo"

    .line 981
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    const-string v1, "jfGas3Url"

    .line 982
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    const-string v1, "uid"

    .line 983
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    const-string v1, "aid"

    .line 984
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    const-string v1, "serverId"

    .line 985
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    const-string v1, "userName"

    .line 986
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    const-string v1, "jfCode"

    .line 987
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "jfSubCode"

    .line 988
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "jfMessage"

    .line 989
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    const-string v1, "arrPriceLocaleId"

    .line 990
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    const-string v1, "unisdkJfExtCid"

    .line 991
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    const-string v1, "jfAasFfCode"

    .line 992
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "jfAasFfRule"

    .line 993
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    const-string v1, "extendJson"

    .line 994
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v33, v1

    const-string v1, "orderType"

    .line 995
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 997
    new-instance v1, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v1, v5}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 998
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v1, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setCpOrderId(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmpl-double v4, v6, v2

    if-lez v4, :cond_1

    double-to-float v2, v6

    .line 1002
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setProductCurrentPrice(F)V

    :cond_1
    if-lez v8, :cond_2

    .line 1005
    invoke-virtual {v1, v8}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V

    .line 1007
    :cond_2
    invoke-virtual {v1, v9}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderDesc(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v1, v10}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1009
    invoke-virtual {v1, v11}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v1, v12}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v1, v13}, Lcom/netease/ntunisdk/base/OrderInfo;->setSignature(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v1, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v1, v15}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderCurrency(Ljava/lang/String;)V

    move/from16 v2, v17

    .line 1014
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    move-object/from16 v2, v18

    .line 1015
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setQrCodeParams(Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 1016
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setUserData(Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 1017
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    move-object/from16 v2, v21

    .line 1018
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfGas3Url(Ljava/lang/String;)V

    move-object/from16 v2, v22

    .line 1019
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setUid(Ljava/lang/String;)V

    move-object/from16 v2, v23

    .line 1020
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setAid(Ljava/lang/String;)V

    move-object/from16 v2, v24

    .line 1021
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setServerId(Ljava/lang/String;)V

    move-object/from16 v2, v25

    .line 1022
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setUserName(Ljava/lang/String;)V

    move/from16 v2, v26

    .line 1023
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfCode(I)V

    move/from16 v2, v27

    .line 1024
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfSubCode(I)V

    move-object/from16 v2, v28

    .line 1025
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfMessage(Ljava/lang/String;)V

    move-object/from16 v2, v29

    .line 1026
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setArrPriceLocaleId(Ljava/lang/String;)V

    move-object/from16 v2, v30

    .line 1027
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setUnisdkJfExtCid(Ljava/lang/String;)V

    move/from16 v2, v31

    .line 1028
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfCode(I)V

    move-object/from16 v2, v32

    .line 1029
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfRule(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderType(I)V

    if-eqz v33, :cond_3

    .line 1032
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setExtendJson(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v16, v1

    :goto_0
    const-string v2, "UniSDK OrderInfo"

    const-string v3, "jsonStr2Obj error"

    .line 1035
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v1, :cond_0

    .line 251
    invoke-static {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;
    .locals 4

    .line 1050
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "orderId"

    .line 1055
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkOrderId"

    .line 1056
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpOrderId"

    .line 1057
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pid"

    .line 1058
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "productCurrentPrice"

    .line 1059
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "productCount"

    .line 1060
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "orderDesc"

    .line 1061
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orderStatus"

    .line 1062
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "orderErrReason"

    .line 1063
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orderEtc"

    .line 1064
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderEtc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 1065
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orderChannel"

    .line 1066
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orderCurrency"

    .line 1067
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "productName"

    .line 1068
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "webPayment"

    .line 1069
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "qrCodeParams"

    .line 1070
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getQrCodeParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userData"

    .line 1071
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "jfExtInfo"

    .line 1072
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "jfGas3Url"

    .line 1073
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfGas3Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 1074
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aid"

    .line 1075
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverId"

    .line 1076
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userName"

    .line 1077
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "jfCode"

    .line 1078
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jfSubCode"

    .line 1079
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfSubCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jfMessage"

    .line 1080
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arrPriceLocaleId"

    .line 1081
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getArrPriceLocaleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unisdkJfExtCid"

    .line 1082
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getUnisdkJfExtCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "jfAasFfCode"

    .line 1083
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfAasFfCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jfAasFfRule"

    .line 1084
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfAasFfRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timeStamp"

    .line 1085
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "orderType"

    .line 1086
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1087
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1088
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "extendJson"

    .line 1089
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "UniSDK OrderInfo"

    const-string v2, "obj2Json error"

    .line 1092
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static regProduct(Ljava/lang/String;)V
    .locals 7

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UniSDK OrderInfo"

    const-string v0, "prodJson is null"

    .line 145
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "pid"

    .line 150
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "pId"

    .line 152
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "bid"

    .line 155
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v1, "productName"

    .line 157
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "name"

    .line 159
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "productPrice"

    .line 161
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const-string v3, "price"

    .line 164
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v3, v5

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    cmpg-float v4, v3, v4

    if-gtz v4, :cond_5

    .line 167
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 169
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v2

    const-string v4, "eRatio"

    .line 170
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_6

    const-string v5, "ratios"

    .line 172
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 173
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 174
    invoke-static {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 175
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 176
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_6
    if-gtz v4, :cond_7

    const/4 v4, 0x1

    .line 183
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "sdkPids"

    .line 184
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v5, "pids"

    .line 186
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_8
    if-eqz v5, :cond_9

    .line 188
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 189
    invoke-static {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 191
    :cond_9
    invoke-static {p0, v1, v3, v4, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static regProduct(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, p1, p2, p3, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V

    return-void
.end method

.method public static regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UniSDK OrderInfo"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regProduct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    goto :goto_1

    .line 316
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;-><init>()V

    .line 318
    :goto_1
    iput-object p0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productId:Ljava/lang/String;

    .line 319
    iput-object p1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productName:Ljava/lang/String;

    .line 320
    iput p2, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    .line 321
    iput p3, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->exchangeRatio:I

    if-eqz p4, :cond_2

    .line 323
    iget-object p1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 325
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1, p4}, Lcom/netease/ntunisdk/base/SdkBase;->choosePayChannel(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->payChannel:Ljava/lang/String;

    const-string p1, "UniSDK OrderInfo"

    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "choose payChannel:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->payChannel:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for pId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object p1, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 331
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V

    .line 332
    sget-object p1, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    sget-object p1, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    goto :goto_0

    .line 339
    :cond_0
    new-instance p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;-><init>()V

    :goto_0
    if-eqz p5, :cond_1

    .line 342
    iget-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->channelGoodsTypes:Ljava/util/Map;

    invoke-interface {p1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    if-eqz p6, :cond_2

    .line 345
    iget-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellRatios:Ljava/util/Map;

    invoke-interface {p1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 347
    :cond_2
    iput-object p7, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellyExtra:Ljava/lang/String;

    return-void
.end method

.method public static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 278
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 279
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 280
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 281
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/OrderInfo;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 284
    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 285
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/OrderInfo;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 287
    :cond_1
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 264
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 265
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/OrderInfo;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 268
    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 269
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/OrderInfo;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 271
    :cond_1
    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getArrPriceLocaleId()Ljava/lang/String;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelGoodsTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->channelGoodsTypes:Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 482
    iput v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    .line 484
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    return v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getCurOrderChannel()Ljava/lang/String;
    .locals 2

    const-string v0, "UniSDK OrderInfo"

    const-string v1, "getCurOrderChannel..."

    .line 776
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendJson()Ljava/lang/String;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalChannelId()Ljava/lang/String;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getFFChannel()Ljava/lang/String;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJellRatios()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellRatios:Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJellyExtra()Ljava/lang/String;
    .locals 1

    .line 639
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellyExtra:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getJfAasFfCode()I
    .locals 1

    .line 919
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->C:I

    return v0
.end method

.method public getJfAasFfRule()Ljava/lang/String;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getJfCode()I
    .locals 1

    .line 879
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->y:I

    return v0
.end method

.method public getJfExtInfo()Ljava/lang/String;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getJfGas3Url()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getJfMessage()Ljava/lang/String;
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getJfSubCode()I
    .locals 1

    .line 887
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->z:I

    return v0
.end method

.method public getOrderChannel()Ljava/lang/String;
    .locals 2

    const-string v0, "UniSDK OrderInfo"

    const-string v1, "getOrderChannel..."

    .line 767
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UniSDK OrderInfo"

    const-string v1, "getPayChannel()"

    .line 769
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCurrency()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDesc()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderErrReason()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderEtc()Ljava/lang/String;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()I
    .locals 1

    .line 712
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->h:I

    return v0
.end method

.method public getOrderType()I
    .locals 1

    .line 947
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->H:I

    return v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 2

    .line 665
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->payChannel:Ljava/lang/String;

    return-object v0

    .line 669
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->choosePayChannel(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductCurrentPrice()F
    .locals 2

    .line 452
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->e:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    return v0

    .line 458
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->e:F

    return v0
.end method

.method public getProductExchangeRatio()I
    .locals 1

    .line 652
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->exchangeRatio:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 574
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productName:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getProductPrice()F
    .locals 1

    .line 587
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQrCodeParams()Ljava/lang/String;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkOrderId()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->c:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getSdkPids()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->a()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 943
    iget-wide v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->G:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getUnisdkJfExtCid()Ljava/lang/String;
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public isCartOrder()Z
    .locals 2

    .line 797
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GAS_GOODS_CART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isQRCodeOrder()Z
    .locals 1

    .line 811
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v0

    return v0
.end method

.method public isWebPayment()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/OrderInfo;->o:Z

    return v0
.end method

.method public produceCartInfo()Lorg/json/JSONArray;
    .locals 9

    .line 1099
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1101
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1105
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1106
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "goodsid"

    .line 1107
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "goodscount"

    .line 1108
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 1109
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez v4, :cond_1

    .line 1110
    sget-object v6, Lcom/netease/ntunisdk/base/OrderInfo;->a:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    if-eqz v6, :cond_0

    const-string v5, "UniSDK OrderInfo"

    .line 1115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget v5, v6, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    int-to-float v4, v4

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    goto :goto_1

    .line 1113
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "production for ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "UniSDK OrderInfo"

    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "priceTotal="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmpg-float v1, v2, v3

    if-gez v1, :cond_3

    .line 1121
    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setProductCurrentPrice(F)V

    const/4 v1, 0x1

    .line 1122
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "UniSDK OrderInfo"

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "goodscart traverse:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->x:Ljava/lang/String;

    return-void
.end method

.method public setArrPriceLocaleId(Ljava/lang/String;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->f:I

    return-void
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->F:Ljava/lang/String;

    return-void
.end method

.method public setExtendJson(Ljava/lang/String;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->E:Ljava/lang/String;

    return-void
.end method

.method public setExternalChannelId(Ljava/lang/String;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setIsQRCodeOrder(Z)V
    .locals 0

    .line 807
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    return-void
.end method

.method public setIsWebPayment(Z)V
    .locals 0

    .line 802
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->o:Z

    return-void
.end method

.method public setJfAasFfCode(I)V
    .locals 0

    .line 923
    iput p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->C:I

    return-void
.end method

.method public setJfAasFfRule(Ljava/lang/String;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->D:Ljava/lang/String;

    return-void
.end method

.method public setJfCode(I)V
    .locals 0

    .line 883
    iput p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->y:I

    return-void
.end method

.method public setJfExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public setJfGas3Url(Ljava/lang/String;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->t:Ljava/lang/String;

    return-void
.end method

.method public setJfMessage(Ljava/lang/String;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->A:Ljava/lang/String;

    return-void
.end method

.method public setJfSubCode(I)V
    .locals 0

    .line 891
    iput p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->z:I

    return-void
.end method

.method public setOrderChannel(Ljava/lang/String;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public setOrderCurrency(Ljava/lang/String;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setOrderDesc(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setOrderErrReason(Ljava/lang/String;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setOrderEtc(Ljava/lang/String;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setOrderStatus(I)V
    .locals 0

    .line 719
    iput p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->h:I

    return-void
.end method

.method public setOrderType(I)V
    .locals 0

    .line 951
    iput p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->H:I

    return-void
.end method

.method public setProductCurrentPrice(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 472
    iput p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->e:F

    return-void

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product price error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setQrCodeParams(Ljava/lang/String;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public setSdkOrderId(Ljava/lang/String;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public setUnisdkJfExtCid(Ljava/lang/String;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->B:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/netease/ntunisdk/base/OrderInfo;->u:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "orderId:%s&orderEtc:%s&userData:%s&jfExtInfo:%s&jfCode:%s&jfSubCode:%s&jfMessage:%s&arrPriceLocaleId:%s&unisdkJfExtCid:%s&userName:%s&serverId:%s&uid:%s&aid:%s&jfAasFfCode:%s&extendJson:%s"

    const/16 v1, 0xf

    .line 1147
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->j:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->q:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->s:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->y:I

    .line 1148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->A:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->r:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->B:Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->u:Ljava/lang/String;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->v:Ljava/lang/String;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->w:Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->x:Ljava/lang/String;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo;->E:Ljava/lang/String;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 1147
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
