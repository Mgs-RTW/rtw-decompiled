.class Lcom/netease/lotr/Launcher$1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher$1;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/lotr/Launcher$1;

.field final synthetic val$extensions:Ljava/lang/String;

.field final synthetic val$renderer:Ljava/lang/String;

.field final synthetic val$vendor:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iput-object p2, p0, Lcom/netease/lotr/Launcher$1$1;->val$renderer:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/lotr/Launcher$1$1;->val$vendor:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/lotr/Launcher$1$1;->val$version:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/lotr/Launcher$1$1;->val$extensions:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$200(Lcom/netease/lotr/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/lotr/Launcher;->access$202(Lcom/netease/lotr/Launcher;Z)Z

    .line 389
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$300(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/PlatformConfigParser;

    move-result-object v0

    const-string v1, "GL_RENDERER"

    iget-object v2, p0, Lcom/netease/lotr/Launcher$1$1;->val$renderer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$300(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/PlatformConfigParser;

    move-result-object v0

    const-string v1, "GL_VENDOR"

    iget-object v2, p0, Lcom/netease/lotr/Launcher$1$1;->val$vendor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$300(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/PlatformConfigParser;

    move-result-object v0

    const-string v1, "GL_VERSION"

    iget-object v2, p0, Lcom/netease/lotr/Launcher$1$1;->val$version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$300(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/PlatformConfigParser;

    move-result-object v0

    const-string v1, "GL_EXTENSIONS"

    iget-object v2, p0, Lcom/netease/lotr/Launcher$1$1;->val$extensions:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1$1;->this$1:Lcom/netease/lotr/Launcher$1;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher;->tryOnLaunch()V

    :cond_0
    return-void
.end method
