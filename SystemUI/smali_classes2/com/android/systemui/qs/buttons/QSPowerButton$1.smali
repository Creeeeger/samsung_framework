.class public final Lcom/android/systemui/qs/buttons/QSPowerButton$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/buttons/QSPowerButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "QSPowerButton"

    .line 2
    .line 3
    const-string v0, "!@[Shutdown] Click power off button."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    .line 9
    .line 10
    sget v0, Lcom/android/systemui/qs/buttons/QSPowerButton;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-class v1, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget p0, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->$r8$clinit:I

    .line 33
    .line 34
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu(I)V

    .line 42
    .line 43
    .line 44
    sget-boolean p0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_BLUR:Z

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    const-class p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 69
    .line 70
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->closeQsIfPossible()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-class p0, Lcom/android/systemui/shade/ShadeController;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Lcom/android/systemui/shade/ShadeController;

    .line 89
    .line 90
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 91
    .line 92
    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapsePanels(FIZZ)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    :goto_0
    const-string p0, "!@long press power shutdown by power icon of quickpanel"

    .line 100
    .line 101
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->shutdown()V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 114
    .line 115
    const-string p1, "QPPE1002"

    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
