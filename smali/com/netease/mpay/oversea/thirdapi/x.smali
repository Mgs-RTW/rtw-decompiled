.class public Lcom/netease/mpay/oversea/thirdapi/x;
.super Lcom/netease/mpay/oversea/thirdapi/d;
.source "NtPassportApi.java"


# instance fields
.field private d:Lcom/netease/mpay/oversea/ui/z/c;

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/t/c/g;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/d;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/x;->d:Lcom/netease/mpay/oversea/ui/z/c;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/x;->g:Lcom/netease/mpay/oversea/t/c/g;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/x;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/x;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 6
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/thirdapi/x;->e()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Passport Login Success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/x;->g:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/x;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lcom/netease/mpay/oversea/h/l/a;

    const-string v3, "bind_ticket"

    invoke-direct {v2, v3, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v2, "account"

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "password"

    invoke-direct {p1, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v0, -0x2

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 2

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/x;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    sget-object p2, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    if-ne p2, p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/x;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/n/h;->a(Z)V

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/x;->d:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/x;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/x;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-static {p2, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/x;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/x;->d:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/x;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/x;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-static {p2, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/x;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method public e()Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/x$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/x$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/x;)V

    return-object v0
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method
