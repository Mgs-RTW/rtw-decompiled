.class public final synthetic Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$wUSNyJCoKTm2CC7lkk5C7ohQUms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field private final synthetic f$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$wUSNyJCoKTm2CC7lkk5C7ohQUms;->f$0:Lcom/facebook/login/DeviceAuthDialog;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$wUSNyJCoKTm2CC7lkk5C7ohQUms;->f$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0, p1}, Lcom/facebook/login/DeviceAuthDialog;->lambda$wUSNyJCoKTm2CC7lkk5C7ohQUms(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/GraphResponse;)V

    return-void
.end method
