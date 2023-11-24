.class public Lcom/netease/mpay/oversea/l/e/d$f;
.super Ljava/lang/Object;
.source "GameConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/l/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lcom/netease/mpay/oversea/t/c/g;

.field public final b:Z

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Lcom/netease/mpay/oversea/l/e/d$g;

.field public final f:Lcom/netease/mpay/oversea/l/e/d$d;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I

.field public final j:Lcom/netease/mpay/oversea/l/e/h;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/t/c/g;ZLjava/lang/String;Lcom/netease/mpay/oversea/l/e/d$g;Lcom/netease/mpay/oversea/l/e/d$d;Ljava/lang/String;IILcom/netease/mpay/oversea/l/e/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/l/e/d$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/r/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/l/e/d$f;->b:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/l/e/d$f;->c:Ljava/util/ArrayList;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/l/e/d$f;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/netease/mpay/oversea/l/e/d$f;->e:Lcom/netease/mpay/oversea/l/e/d$g;

    .line 7
    iput-object p5, p0, Lcom/netease/mpay/oversea/l/e/d$f;->f:Lcom/netease/mpay/oversea/l/e/d$d;

    .line 8
    iput-object p6, p0, Lcom/netease/mpay/oversea/l/e/d$f;->g:Ljava/lang/String;

    .line 9
    iput p7, p0, Lcom/netease/mpay/oversea/l/e/d$f;->h:I

    .line 10
    iput p8, p0, Lcom/netease/mpay/oversea/l/e/d$f;->i:I

    .line 11
    iput-object p9, p0, Lcom/netease/mpay/oversea/l/e/d$f;->j:Lcom/netease/mpay/oversea/l/e/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/e/d$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
