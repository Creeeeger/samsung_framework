.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "call dls_safe_mode, level:"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string/jumbo v1, "persist.sys.rescue_level"

    .line 14
    .line 15
    .line 16
    const-string v2, "0"

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->addEvent(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "dls_safe_mode"

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->callProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    return-void
.end method
