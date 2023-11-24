.class Lcom/netease/mpay/oversea/o/g/f$b;
.super Lcom/netease/mpay/oversea/widget/r$b;
.source "SimpleDatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/o/g/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f$b;->b:Lcom/netease/mpay/oversea/o/g/f;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/f$b;->b:Lcom/netease/mpay/oversea/o/g/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
