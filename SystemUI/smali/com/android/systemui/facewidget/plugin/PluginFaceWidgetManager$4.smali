.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;
.super Landroid/app/UserSwitchObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "onUserSwitchComplete() "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginFaceWidgetManager"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 10
    .line 11
    iget-object p0, v4, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 12
    .line 13
    invoke-interface {p0, v4}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v4, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 17
    .line 18
    const-string v3, "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

    .line 19
    .line 20
    const-class v5, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
