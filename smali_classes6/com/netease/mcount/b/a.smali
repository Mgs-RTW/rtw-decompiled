.class public Lcom/netease/mcount/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/b/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/b/a;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netease/mcount/b/a;->d:J

    iput-object p5, p0, Lcom/netease/mcount/b/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mcount/b/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/mcount/b/a;->g:Ljava/lang/String;

    iput-wide p8, p0, Lcom/netease/mcount/b/a;->h:J

    iput-object p10, p0, Lcom/netease/mcount/b/a;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/b/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mcount/d/h;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mcount/b/a;->d:J

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/netease/mcount/d/h;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/b/a;->a:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/netease/mcount/b/a;->h:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/mcount/b/a;->d:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/mcount/b/a;->h:J

    return-wide v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/b/a;->a:Lorg/json/JSONObject;

    return-object v0
.end method
