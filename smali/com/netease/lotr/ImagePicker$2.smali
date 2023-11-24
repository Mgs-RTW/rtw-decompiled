.class Lcom/netease/lotr/ImagePicker$2;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/ImagePicker;->execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/ImagePicker;


# direct methods
.method constructor <init>(Lcom/netease/lotr/ImagePicker;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/netease/lotr/ImagePicker$2;->this$0:Lcom/netease/lotr/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netease/lotr/ImagePicker$2;->this$0:Lcom/netease/lotr/ImagePicker;

    invoke-static {v0}, Lcom/netease/lotr/ImagePicker;->access$100(Lcom/netease/lotr/ImagePicker;)V

    return-void
.end method
