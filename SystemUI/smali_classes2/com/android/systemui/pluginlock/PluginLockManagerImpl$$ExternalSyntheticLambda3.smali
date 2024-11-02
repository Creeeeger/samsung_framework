.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->$r8$classId:I

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
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->f$1:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v3, "onUserSwitchComplete for "

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v2, "PluginLockManagerImpl"

    .line 31
    .line 32
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    .line 36
    .line 37
    return-void

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;->f$1:I

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
