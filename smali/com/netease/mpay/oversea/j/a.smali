.class public Lcom/netease/mpay/oversea/j/a;
.super Lcom/netease/mpay/oversea/ui/z/d;
.source "EmailEntrance.java"


# instance fields
.field private o:Lcom/netease/mpay/oversea/thirdapi/h;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/netease/mpay/oversea/t/c/g;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)V
    .locals 14

    move-object v13, p0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/oversea/ui/z/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p3

    .line 4
    iput-object v0, v13, Lcom/netease/mpay/oversea/j/a;->r:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 5
    iput-object v0, v13, Lcom/netease/mpay/oversea/j/a;->s:Lcom/netease/mpay/oversea/t/c/g;

    move-object/from16 v0, p7

    .line 6
    iput-object v0, v13, Lcom/netease/mpay/oversea/j/a;->o:Lcom/netease/mpay/oversea/thirdapi/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/a;->p:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/j/a;->q:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/a;->t:Ljava/lang/String;

    return-void
.end method

.method public h()Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/a;->o:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/a;->s:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/a;->t:Ljava/lang/String;

    return-object v0
.end method
