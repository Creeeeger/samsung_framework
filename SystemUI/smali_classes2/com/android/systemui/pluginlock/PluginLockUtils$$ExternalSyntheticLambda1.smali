.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->addEvent(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
