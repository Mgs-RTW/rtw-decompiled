.class final Lcom/netease/ntunisdk/base/JfGas$6$1;
.super Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;
.source "JfGas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/JfGas$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/view/Alerter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/ntunisdk/base/JfGas$6;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/JfGas$6;Lcom/netease/ntunisdk/base/view/Alerter;Ljava/lang/String;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->a:Lcom/netease/ntunisdk/base/view/Alerter;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1143
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->a:Lcom/netease/ntunisdk/base/view/Alerter;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/view/Alerter;->dismiss()V

    const-string p1, "ff_rules"

    .line 1144
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/JfGas$6$1;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1145
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/JfGas$6;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1146
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v1, "unisdk_alert_dialog_info"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1147
    new-instance v1, Lcom/netease/ntunisdk/base/view/Alerter;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-direct {v1, p1}, Lcom/netease/ntunisdk/base/view/Alerter;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object v3, p1, Lcom/netease/ntunisdk/base/JfGas$6;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/base/view/Alerter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    return-void

    :cond_0
    const-string p1, "UniSDK JfGas"

    const-string v0, "aasFfRule empty"

    .line 1149
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "UniSDK JfGas"

    const-string v0, "getAction() is not ff_rules"

    .line 1152
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
