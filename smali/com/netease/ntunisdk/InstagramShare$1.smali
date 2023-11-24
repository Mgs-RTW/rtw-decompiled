.class final Lcom/netease/ntunisdk/InstagramShare$1;
.super Ljava/lang/Object;
.source "InstagramShare.java"

# interfaces
.implements Lcom/netease/ntunisdk/FbMediaProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/InstagramShare;->share(Landroid/app/Activity;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkFacebook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$inst:Lcom/netease/ntunisdk/SdkFacebook;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;Landroid/app/Activity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/InstagramShare$1;->val$inst:Lcom/netease/ntunisdk/SdkFacebook;

    iput-object p2, p0, Lcom/netease/ntunisdk/InstagramShare$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 1

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/netease/ntunisdk/InstagramShare$1;->val$inst:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/InstagramShare$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/ntunisdk/InstagramShare$1;->val$inst:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/InstagramShare;->share(Landroid/app/Activity;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkFacebook;)V

    :goto_0
    return-void
.end method
