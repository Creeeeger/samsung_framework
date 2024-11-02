.class public final Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field public mCurrentOrientation:I

.field public final mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public mExpanded:Z

.field public final mIntentReceiver:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

.field public mIsMultiSIMBarHideByKnoxRequest:Z

.field public mIsMultiSIMBarShowOnQSPanel:Z

.field public mSettingsListener:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mExpanded:Z

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    .line 18
    .line 19
    const-string v1, "emergency_mode"

    .line 20
    .line 21
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v1}, [Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    .line 35
    .line 36
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 44
    .line 45
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 52
    .line 53
    const-class p1, Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 62
    .line 63
    iget-object v2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 68
    .line 69
    invoke-direct {v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 73
    .line 74
    :cond_1
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 75
    .line 76
    invoke-direct {v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Landroid/content/IntentFilter;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 103
    .line 104
    .line 105
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 112
    .line 113
    iget-object p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    .line 114
    .line 115
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 116
    .line 117
    .line 118
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 125
    .line 126
    const-string p2, "multi_sim_bar_show_on_qspanel"

    .line 127
    .line 128
    filled-new-array {p2}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    .line 30
    .line 31
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final getBarHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f070947

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d02db

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0d02db

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const v2, 0x7f0a0a63

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const v2, 0x7f080f65

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    check-cast p1, Lcom/android/systemui/qs/SecQSPanel;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateHeightMargins()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    .line 2
    .line 3
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateHeightMargins()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController$4;->onBarHeightChanged()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 4
    .line 5
    iget-boolean v2, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 10
    .line 11
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 16
    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 18
    .line 19
    iput-boolean p1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "onTuningChanged() : key = "

    .line 2
    .line 3
    const-string v1, ", newValue = "

    .line 4
    .line 5
    const-string v2, "MultiSIMPreferredSlotBar"

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "multi_sim_bar_show_on_qspanel"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :catch_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mExpanded:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "setExpanded : "

    .line 6
    .line 7
    .line 8
    const-string v1, " mShowing : "

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 15
    .line 16
    const-string v2, "MultiSIMPreferredSlotBar"

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mExpanded:Z

    .line 22
    .line 23
    :cond_0
    const-string v0, "MultiSIMController"

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 30
    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    iget-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    iget-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iput-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo p1, "registerSimCardManagerCallback SimCardManagerService "

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-object p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 66
    .line 67
    iput-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 68
    .line 69
    if-nez p0, :cond_3

    .line 70
    .line 71
    new-instance p0, Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 72
    .line 73
    invoke-direct {p0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController$13;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    .line 74
    .line 75
    .line 76
    iput-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 77
    .line 78
    iget-object p1, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    :try_start_0
    sput-object p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string p1, "Caught exception from registerSimCardManagerCallback"

    .line 87
    .line 88
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string/jumbo p0, "registerSimCardManagerCallback : mSimCardManagerService is null "

    .line 93
    .line 94
    .line 95
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const-string/jumbo p0, "registerSimCardManagerCallback : mSimCardCallback is not null "

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    if-eqz p0, :cond_6

    .line 110
    .line 111
    :try_start_1
    iget-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 112
    .line 113
    if-eqz p0, :cond_5

    .line 114
    .line 115
    sget-boolean p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    .line 116
    .line 117
    if-nez p0, :cond_5

    .line 118
    .line 119
    sput-object p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 120
    .line 121
    :cond_5
    iget-object p0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_6

    .line 128
    .line 129
    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->CloseService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_1
    move-exception p0

    .line 134
    const-string v2, "Caught exception from unRegisterSimCardManagerCallback"

    .line 135
    .line 136
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_0
    iput-object p1, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 140
    .line 141
    iput-object p1, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 142
    .line 143
    :goto_1
    return-void
.end method

.method public final showBar(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 16
    .line 17
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyVisToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final updateBarVisibilities()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isMultiSimAvailable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v2, "updateBarVisibilities "

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "MultiSIMPreferredSlotBar"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showBar(Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f070947

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f070090

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f070091

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
