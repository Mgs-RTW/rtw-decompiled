.class Lcom/netease/ntunisdk/SdkFacebook$7;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/netease/ntunisdk/FbMediaProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook;->doShareActions(Lcom/netease/ntunisdk/base/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 665
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :goto_0
    return-void
.end method
