.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setDynamicLockDataInternal(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 20
    .line 21
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateDynamicLockData(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
