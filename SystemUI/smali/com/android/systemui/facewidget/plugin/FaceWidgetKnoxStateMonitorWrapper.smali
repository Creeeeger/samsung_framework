.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginKnoxStateMonitor;


# instance fields
.field public final mKnoxStateCallback:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateCallback:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 12
    .line 13
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final isLockscreenAllDisabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 11
    .line 12
    const/16 v1, 0x3ff

    .line 13
    .line 14
    and-int/2addr p0, v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p0, v1, :cond_0

    .line 17
    .line 18
    move p0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, v0

    .line 21
    :goto_0
    if-eqz p0, :cond_1

    .line 22
    .line 23
    move v0, v2

    .line 24
    :cond_1
    return v0
.end method

.method public final isLockscreenClockEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    and-int/2addr p0, v1

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    move p0, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p0, v1

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_1
    return v0
.end method

.method public final isLockscreenDateEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 11
    .line 12
    and-int/lit8 p0, p0, 0x10

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    move p0, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v1

    .line 20
    :goto_0
    if-eqz p0, :cond_1

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_1
    return v0
.end method

.method public final isLockscreenOwnerInfoEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 11
    .line 12
    and-int/lit8 p0, p0, 0x20

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    move p0, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v1

    .line 20
    :goto_0
    if-eqz p0, :cond_1

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_1
    return v0
.end method
