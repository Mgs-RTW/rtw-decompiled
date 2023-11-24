.class public Lcom/netease/mpay/oversea/ui/h$k;
.super Lcom/netease/mpay/oversea/ui/h$g;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/netease/mpay/oversea/t/c/g;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:I

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lcom/netease/mpay/oversea/n/i/b/d;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/h$o;->b:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object v1, p3, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/mpay/oversea/ui/h$g;-><init>(Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/h$k;->m:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/netease/mpay/oversea/ui/h$k;->n:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/h$k;->o:Lcom/netease/mpay/oversea/n/i/b/d;

    .line 9
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->d:Ljava/lang/String;

    .line 10
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    .line 11
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->i:Lcom/netease/mpay/oversea/t/c/g;

    .line 12
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->e:Ljava/lang/String;

    .line 13
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->g:Ljava/lang/String;

    .line 14
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->h:Ljava/util/ArrayList;

    .line 15
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-nez p2, :cond_0

    sget-object p2, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    :cond_0
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 16
    iget p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->j:I

    iput p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->i:I

    .line 17
    iget p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    iput p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->j:I

    .line 18
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->k:Ljava/lang/String;

    .line 19
    iget p2, p3, Lcom/netease/mpay/oversea/n/i/b/d;->p:I

    iput p2, p0, Lcom/netease/mpay/oversea/ui/h$k;->l:I

    .line 20
    sget-object p2, Lcom/netease/mpay/oversea/n/h;->E:Lcom/netease/mpay/oversea/n/h;

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/h$k;->m:Z

    .line 21
    iget-object p1, p3, Lcom/netease/mpay/oversea/n/i/b/d;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$k;->n:Ljava/lang/String;

    return-void
.end method
