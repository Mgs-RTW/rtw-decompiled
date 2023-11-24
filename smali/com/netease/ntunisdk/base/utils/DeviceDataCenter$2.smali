.class Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initGPUInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1133
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    new-instance v1, Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$002(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    .line 1135
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getGPUInfo] mGlView error"

    .line 1136
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 1142
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1189
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$302(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1191
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getGPUInfo] mContentView error"

    .line 1192
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/opengl/GLSurfaceView;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
