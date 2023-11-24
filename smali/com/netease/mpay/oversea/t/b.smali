.class public Lcom/netease/mpay/oversea/t/b;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/t/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/t/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t/b$b;)Lcom/netease/mpay/oversea/t/f/g/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :pswitch_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/t/f/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/f;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_1
    new-instance p1, Lcom/netease/mpay/oversea/t/f/a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/b;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/t/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 15
    :pswitch_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/t/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/b;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_3
    new-instance p1, Lcom/netease/mpay/oversea/t/f/e;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/b;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/t/f/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 17
    :pswitch_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/t/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/t/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/t/f/a;
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/mpay/oversea/t/b$b;->f:Lcom/netease/mpay/oversea/t/b$b;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/b;->a(Lcom/netease/mpay/oversea/t/b$b;)Lcom/netease/mpay/oversea/t/f/g/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/f/a;

    return-object v0
.end method

.method public b()Lcom/netease/mpay/oversea/t/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/b$b;->a:Lcom/netease/mpay/oversea/t/b$b;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/b;->a(Lcom/netease/mpay/oversea/t/b$b;)Lcom/netease/mpay/oversea/t/f/g/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/f/b;

    return-object v0
.end method

.method public c()Lcom/netease/mpay/oversea/t/f/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/b$b;->b:Lcom/netease/mpay/oversea/t/b$b;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/b;->a(Lcom/netease/mpay/oversea/t/b$b;)Lcom/netease/mpay/oversea/t/f/g/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/f/d;

    return-object v0
.end method

.method public d()Lcom/netease/mpay/oversea/t/d/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/b$b;->c:Lcom/netease/mpay/oversea/t/b$b;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/b;->a(Lcom/netease/mpay/oversea/t/b$b;)Lcom/netease/mpay/oversea/t/f/g/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/d/a;

    return-object v0
.end method

.method public e()Lcom/netease/mpay/oversea/t/f/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/b$b;->g:Lcom/netease/mpay/oversea/t/b$b;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/b;->a(Lcom/netease/mpay/oversea/t/b$b;)Lcom/netease/mpay/oversea/t/f/g/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/f/f;

    return-object v0
.end method
