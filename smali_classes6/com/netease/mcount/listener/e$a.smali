.class Lcom/netease/mcount/listener/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mcount/listener/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/netease/mcount/listener/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/mcount/listener/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mcount/listener/e;-><init>(Lcom/netease/mcount/listener/e$1;)V

    sput-object v0, Lcom/netease/mcount/listener/e$a;->a:Lcom/netease/mcount/listener/e;

    return-void
.end method

.method static synthetic a()Lcom/netease/mcount/listener/e;
    .locals 1

    sget-object v0, Lcom/netease/mcount/listener/e$a;->a:Lcom/netease/mcount/listener/e;

    return-object v0
.end method
