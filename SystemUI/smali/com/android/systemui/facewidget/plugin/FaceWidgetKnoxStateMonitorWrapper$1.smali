.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUpdateLockscreenHiddenItems()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onUpdateLockscreenHiddenItems()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
