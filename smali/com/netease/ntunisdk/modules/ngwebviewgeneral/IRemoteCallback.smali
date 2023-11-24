.class public interface abstract Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback;
.super Ljava/lang/Object;
.source "IRemoteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract call(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
