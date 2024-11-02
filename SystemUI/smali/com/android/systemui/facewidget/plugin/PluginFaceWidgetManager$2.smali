.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "QsMediaPlayerLastExpanded"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "onSharedPreferenceChanged, key = "

    .line 16
    .line 17
    .line 18
    const-string v1, "PluginFaceWidgetManager"

    .line 19
    .line 20
    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-static {p0, p1, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onMediaPlayerLastExpandedPrefChanged(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
