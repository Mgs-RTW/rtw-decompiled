.class public Lcom/netease/mpay/oversea/k/h;
.super Lcom/netease/mpay/oversea/k/c;
.source "LoginReqEvent.java"


# instance fields
.field private final b:Lcom/netease/mpay/oversea/t/c/g;

.field private final c:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private final d:I

.field private e:Lcom/netease/mpay/oversea/t/c/g;

.field private f:Z


# direct methods
.method public constructor <init>(ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/k/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/k/h;->e:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/k/h;->f:Z

    const/16 v0, 0xa

    .line 6
    iput v0, p0, Lcom/netease/mpay/oversea/k/c;->a:I

    .line 7
    iput-object p2, p0, Lcom/netease/mpay/oversea/k/h;->b:Lcom/netease/mpay/oversea/t/c/g;

    .line 8
    iput-object p3, p0, Lcom/netease/mpay/oversea/k/h;->c:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 9
    iput p1, p0, Lcom/netease/mpay/oversea/k/h;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/k/h;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/k/h;->e:Lcom/netease/mpay/oversea/t/c/g;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/k/h;->f:Z

    :cond_0
    return-object p0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/k/h;->d:I

    return v0
.end method

.method public c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/k/h;->c:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object v0
.end method

.method public d()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/k/h;->b:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method

.method public e()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/k/h;->e:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/k/h;->f:Z

    return v0
.end method
