.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->disableByMode()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onLockWallpaperChanged(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v0, "PluginLockManagerImpl"

    .line 30
    .line 31
    const-string/jumbo v2, "onUserSwitchComplete for owner"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(Z)V

    .line 38
    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
