.class public final Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAODClockStyleChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClockColorChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 10
    .line 11
    const-string v1, "#FFFAFAFA"

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockDateColor()I

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->onClockColorChanged(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final onClockFontChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClockPackageChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClockPositionChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClockScaleChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClockStyleChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClockVisibilityChanged()V
    .locals 0

    .line 1
    return-void
.end method
