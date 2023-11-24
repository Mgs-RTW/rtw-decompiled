.class public Lcom/netease/mpay/oversea/k/i;
.super Lcom/netease/mpay/oversea/k/c;
.source "LoginRespEvent.java"


# instance fields
.field private b:Z

.field public c:Lcom/netease/mpay/oversea/h/c;

.field public d:Lcom/netease/mpay/oversea/n/i/b/d;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/k/c;-><init>()V

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/k/c;->a:I

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/k/i;->c:Lcom/netease/mpay/oversea/h/c;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/k/i;->b:Z

    .line 5
    iget v0, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    .line 6
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/netease/mpay/oversea/k/c;-><init>()V

    const/16 v0, 0xb

    .line 8
    iput v0, p0, Lcom/netease/mpay/oversea/k/c;->a:I

    .line 9
    iput-object p1, p0, Lcom/netease/mpay/oversea/k/i;->d:Lcom/netease/mpay/oversea/n/i/b/d;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/k/i;->b:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/netease/mpay/oversea/h/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/k/i;->c:Lcom/netease/mpay/oversea/h/c;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/k/i;->b:Z

    return v0
.end method
