.class public Lcom/netease/mpay/oversea/ui/z/e;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/z/e$d;,
        Lcom/netease/mpay/oversea/ui/z/e$b;,
        Lcom/netease/mpay/oversea/ui/z/e$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/netease/mpay/oversea/ui/z/f;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lcom/netease/mpay/oversea/ui/z/e$c;

.field public k:Lcom/netease/mpay/oversea/ui/z/e$d;

.field public l:Landroid/view/View$OnClickListener;

.field public m:Lcom/netease/mpay/oversea/ui/z/e$b;

.field public n:Lcom/netease/mpay/oversea/ui/e$c;

.field public o:I

.field private p:Lcom/netease/mpay/oversea/ui/z/d;

.field private q:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->f:Z

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->h:Z

    .line 124
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->s:Z

    .line 125
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    .line 126
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/z/e;->q:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 127
    iput p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->o:I

    .line 128
    iget-object p1, p2, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    .line 129
    iget-object p1, p2, Lcom/netease/mpay/oversea/ui/z/d;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    .line 130
    iget-object p1, p2, Lcom/netease/mpay/oversea/ui/z/d;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->r:Ljava/lang/String;

    .line 131
    iget-object p1, p2, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/z/e;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/f;

    const-string p3, "netease_mpay_oversea__usercenter_security_email_"

    invoke-direct {p1, p3, p2}, Lcom/netease/mpay/oversea/ui/z/f;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/z/d;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->d:Lcom/netease/mpay/oversea/ui/z/f;

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    const-string p3, "home"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/f;

    const-string p3, "netease_mpay_oversea__usercenter_home_"

    invoke-direct {p1, p3, p2}, Lcom/netease/mpay/oversea/ui/z/f;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/z/d;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->d:Lcom/netease/mpay/oversea/ui/z/f;

    goto :goto_0

    .line 137
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/f;

    const-string p3, "netease_mpay_oversea__usercenter_tab_"

    invoke-direct {p1, p3, p2}, Lcom/netease/mpay/oversea/ui/z/f;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/z/d;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->d:Lcom/netease/mpay/oversea/ui/z/f;

    .line 139
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->d:Lcom/netease/mpay/oversea/ui/z/f;

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/ui/z/f;->c:Z

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->e:Z

    .line 140
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->f:Z

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->g:Z

    .line 142
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/e$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/z/e$a;-><init>(Lcom/netease/mpay/oversea/ui/z/e;)V

    .line 149
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-static {}, Lcom/netease/mpay/oversea/ui/z/d;->c()Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-static {}, Lcom/netease/mpay/oversea/ui/z/d;->d()Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->q:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->j:Lcom/netease/mpay/oversea/ui/z/e$c;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/z/e$c;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/z/e;->b()Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Z)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    iget v0, v0, Lcom/netease/mpay/oversea/ui/z/d;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()Lcom/netease/mpay/oversea/ui/z/d;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    iget v0, v0, Lcom/netease/mpay/oversea/ui/z/d;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->g:Z

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->j:Lcom/netease/mpay/oversea/ui/z/e$c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/z/e$c;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/z/e;->s:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/d;->e()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->s:Z

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    const-string v1, "loading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/d;->f()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    iget v0, v0, Lcom/netease/mpay/oversea/ui/z/d;->e:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->p:Lcom/netease/mpay/oversea/ui/z/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/d;->g()Z

    move-result v0

    return v0
.end method
