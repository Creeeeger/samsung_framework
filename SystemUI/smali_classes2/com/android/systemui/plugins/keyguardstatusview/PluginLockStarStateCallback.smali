.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public onClockChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    .line 1
    return-void
.end method

.method public onFaceWidgetChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    .line 1
    return-void
.end method

.method public onLockStarEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    .line 1
    return-void
.end method

.method public onMusicChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f9
    .end annotation

    .line 1
    return-void
.end method

.method public onUiInfoRequested()Landroid/os/Bundle;
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f9
    .end annotation

    .line 1
    new-instance p0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public onViewModeChanged(I)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    .line 1
    return-void
.end method
