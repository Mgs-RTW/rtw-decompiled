.class public Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;
.super Ljava/lang/Object;
.source "TextInput.java"


# instance fields
.field private callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

.field private enable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return-void
.end method

.method public constructor <init>(ZLcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    .line 12
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return v0
.end method

.method public setCallback(Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return-void
.end method
