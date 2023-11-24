.class public Lcom/netease/ntunisdk/base/view/b;
.super Ljava/lang/Object;
.source "NtSdkString.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/b;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/view/b;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/b;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/netease/ntunisdk/base/view/b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/view/b;->c:Z

    return-void
.end method
