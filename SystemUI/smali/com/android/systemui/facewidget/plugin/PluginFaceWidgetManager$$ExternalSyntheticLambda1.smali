.class public final synthetic Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 4
    .line 5
    const-string v1, "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

    .line 6
    .line 7
    const-class v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v2, p0

    .line 13
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    .line 23
    .line 24
    .line 25
    const-string p0, "PluginFaceWidgetManager"

    .line 26
    .line 27
    invoke-interface {v0, v1, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
