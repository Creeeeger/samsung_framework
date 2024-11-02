.class public final Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final isBlockedByKnoxPanel()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 23
    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    :cond_1
    move p0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    :goto_0
    xor-int/2addr p0, v1

    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    const-string v0, "SecPanelBlockExpandingHelper"

    .line 33
    .line 34
    const-string v1, "KnoxStateMonitor.isPanelExpandEnabled() is true"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_3
    return p0
.end method

.method public final isDisabledExpandingOnKeyguard()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->isBlockedByKnoxPanel()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 22
    .line 23
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 24
    .line 25
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 26
    .line 27
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 30
    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 32
    .line 33
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled1:I

    .line 34
    .line 35
    const/high16 v5, 0x10000000

    .line 36
    .line 37
    and-int/2addr p0, v5

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    move p0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move p0, v2

    .line 43
    :goto_1
    if-nez v0, :cond_4

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    :cond_3
    if-eqz p0, :cond_4

    .line 50
    .line 51
    move v2, v1

    .line 52
    :cond_4
    if-eqz v2, :cond_5

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v6, "isDisabledExpandingOnKeyguard: !isShadeState["

    .line 57
    .line 58
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    xor-int/2addr v0, v1

    .line 62
    const-string v1, "] && (isShowing["

    .line 63
    .line 64
    const-string v6, "] || isOcculleded["

    .line 65
    .line 66
    invoke-static {v5, v0, v1, v4, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, "]) && disabledByFlag["

    .line 73
    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, "]"

    .line 81
    .line 82
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string v0, "SecPanelBlockExpandingHelper"

    .line 90
    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_5
    return v2
.end method
