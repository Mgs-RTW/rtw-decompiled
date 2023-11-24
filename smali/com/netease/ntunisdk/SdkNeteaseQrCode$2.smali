.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseQrCode;->presentQRCodeScanner(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;I)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$extra:Ljava/lang/String;

    iput p3, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginDone(I)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$extra:Ljava/lang/String;

    iget v2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$requestCode:I

    invoke-static {v0, p1, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$100(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;I)V

    return-void
.end method
