.class Lcom/netease/lotr/Client$10;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->showMessageBox(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Client;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;)V
    .locals 0

    .line 2282
    iput-object p1, p0, Lcom/netease/lotr/Client$10;->this$0:Lcom/netease/lotr/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 2286
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnMessageBoxButton(I)V

    return-void
.end method