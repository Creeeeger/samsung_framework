.class public final synthetic Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 2
    .line 3
    sget v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->supportsMultipleUsers()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    move v3, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v3, v2

    .line 32
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButtonBadge:Landroid/view/View;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/16 v3, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    .line 48
    .line 49
    iget-boolean v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    move v3, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v3, v2

    .line 56
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    .line 60
    .line 61
    iget-boolean v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    if-eqz v3, :cond_a

    .line 65
    .line 66
    iget-object v3, v0, Lcom/android/systemui/qs/buttons/QSEditButton;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 67
    .line 68
    if-eqz v3, :cond_8

    .line 69
    .line 70
    iget-object v3, v0, Lcom/android/systemui/qs/buttons/QSEditButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 71
    .line 72
    iget-object v5, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_7

    .line 79
    .line 80
    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 81
    .line 82
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 85
    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    iget v3, v3, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 89
    .line 90
    if-nez v3, :cond_4

    .line 91
    .line 92
    move v3, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move v3, v4

    .line 95
    :goto_3
    if-eqz v3, :cond_5

    .line 96
    .line 97
    move v3, v4

    .line 98
    goto :goto_4

    .line 99
    :cond_5
    move v3, v2

    .line 100
    :goto_4
    if-nez v3, :cond_6

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    move v3, v2

    .line 104
    goto :goto_6

    .line 105
    :cond_7
    :goto_5
    move v3, v4

    .line 106
    :goto_6
    xor-int/2addr v3, v4

    .line 107
    goto :goto_7

    .line 108
    :cond_8
    move v3, v2

    .line 109
    :goto_7
    if-nez v3, :cond_9

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_9
    move v1, v2

    .line 113
    :cond_a
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
