.class Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;->this$1:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const-string p1, "DataCenter"

    const-string p2, "DataCenter [getGPUInfo] onSurfaceCreated onSurfaceChanged"

    .line 1180
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    const-string p2, "DataCenter"

    const-string v0, "DataCenter [getGPUInfo] onSurfaceCreated start"

    .line 1146
    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1f01

    .line 1148
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1f00

    .line 1149
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f02

    .line 1150
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1152
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1158
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1159
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;->this$1:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v3, "DEVICE_INFO_GL_RENDERER"

    invoke-static {v2, v3, p2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DEVICE_INFO_GL_RENDERER"

    .line 1160
    invoke-interface {v1, v2, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1164
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;->this$1:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v3, "DEVICE_INFO_GL_VENDOR"

    invoke-static {v2, v3, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DEVICE_INFO_GL_VENDOR"

    .line 1165
    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1169
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;->this$1:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v3, "DEVICE_INFO_GL_VERSION"

    invoke-static {v2, v3, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DEVICE_INFO_GL_VERSION"

    .line 1170
    invoke-interface {v1, v2, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "DataCenter"

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getGPUInfo] onSurfaceCreated glRenderer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", glVendor="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", glVersion="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2$1;->this$1:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const/4 p2, 0x0

    const-string v0, "init success"

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;ILjava/lang/String;)V

    return-void
.end method
