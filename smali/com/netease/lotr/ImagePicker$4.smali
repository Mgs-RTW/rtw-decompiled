.class Lcom/netease/lotr/ImagePicker$4;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 198
    iput-object p1, p0, Lcom/netease/lotr/ImagePicker$4;->this$0:Lcom/netease/lotr/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/netease/lotr/ImagePicker$4;->this$0:Lcom/netease/lotr/ImagePicker;

    invoke-static {p1}, Lcom/netease/lotr/ImagePicker;->access$100(Lcom/netease/lotr/ImagePicker;)V

    return-void
.end method
