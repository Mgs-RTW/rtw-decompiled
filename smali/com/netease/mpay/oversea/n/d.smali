.class public Lcom/netease/mpay/oversea/n/d;
.super Ljava/lang/Object;
.source "LoginData.java"


# instance fields
.field public final a:Lcom/netease/mpay/oversea/t/c/g;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/netease/mpay/oversea/n/h;

.field public final f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/t/c/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netease/mpay/oversea/n/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/d;->i:Ljava/util/ArrayList;

    .line 13
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 14
    iput-object p2, p0, Lcom/netease/mpay/oversea/n/d;->k:Ljava/lang/String;

    if-eqz p10, :cond_0

    .line 16
    invoke-virtual {v0, p10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_0
    iput-object p3, p0, Lcom/netease/mpay/oversea/n/d;->b:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/netease/mpay/oversea/n/d;->c:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/netease/mpay/oversea/n/d;->d:Ljava/lang/String;

    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/n/d;->j:Z

    .line 22
    iput-boolean p6, p0, Lcom/netease/mpay/oversea/n/d;->f:Z

    .line 23
    iput-object p7, p0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    .line 24
    iput-object p9, p0, Lcom/netease/mpay/oversea/n/d;->h:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/netease/mpay/oversea/n/d;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/t/c/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netease/mpay/oversea/n/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;)",
            "Lcom/netease/mpay/oversea/n/d;"
        }
    .end annotation

    .line 2
    new-instance v11, Lcom/netease/mpay/oversea/n/d;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/netease/mpay/oversea/n/d;-><init>(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v11
.end method

.method public static a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/t/c/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netease/mpay/oversea/n/h;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;)",
            "Lcom/netease/mpay/oversea/n/d;"
        }
    .end annotation

    .line 1
    new-instance v11, Lcom/netease/mpay/oversea/n/d;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/netease/mpay/oversea/n/d;-><init>(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v11
.end method
