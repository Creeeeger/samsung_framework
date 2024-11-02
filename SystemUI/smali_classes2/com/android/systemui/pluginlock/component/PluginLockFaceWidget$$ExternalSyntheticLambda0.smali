.class public final synthetic Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    .line 15
    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
