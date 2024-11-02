.class public final Lcom/android/keyguard/KeyguardBouncerContainer;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x4

    .line 28
    if-eq v3, v4, :cond_8

    .line 29
    .line 30
    const/16 v4, 0x3e

    .line 31
    .line 32
    if-eq v3, v4, :cond_4

    .line 33
    .line 34
    const/16 v4, 0x52

    .line 35
    .line 36
    if-eq v3, v4, :cond_3

    .line 37
    .line 38
    const/16 v0, 0x18

    .line 39
    .line 40
    if-eq v3, v0, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x19

    .line 43
    .line 44
    if-eq v3, v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/high16 v0, -0x80000000

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    if-nez v0, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 70
    .line 71
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onMenuPressed()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :cond_4
    if-nez v0, :cond_6

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 81
    .line 82
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 93
    .line 94
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 95
    .line 96
    const/high16 p1, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-virtual {p0, p1, v1, v2, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapsePanels(FIZZ)V

    .line 99
    .line 100
    .line 101
    move v1, v2

    .line 102
    :cond_5
    return v1

    .line 103
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 104
    .line 105
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    return v2

    .line 114
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    return p0

    .line 119
    :cond_8
    if-nez v0, :cond_9

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 122
    .line 123
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onBackPressed()Z

    .line 126
    .line 127
    .line 128
    :cond_9
    return v2
.end method
