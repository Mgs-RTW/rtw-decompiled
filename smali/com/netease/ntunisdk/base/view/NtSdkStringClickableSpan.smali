.class public abstract Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "NtSdkStringClickableSpan.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;->a:Ljava/lang/String;

    return-void
.end method
