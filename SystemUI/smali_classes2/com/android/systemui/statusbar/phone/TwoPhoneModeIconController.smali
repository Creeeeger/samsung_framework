.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public currentUserId:I

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public isBModeCreated:Z

.field public isBModeUser:Z

.field public isOwner:Z

.field public modeIconView:Landroid/widget/ImageView;

.field public final quickStarListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final settingsListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;

.field public final slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Landroid/os/UserManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userManager:Landroid/os/UserManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 23
    .line 24
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p2, p2, p2, p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;-><init>(ZZZZ)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    .line 31
    .line 32
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    .line 37
    .line 38
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    .line 44
    .line 45
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;

    .line 51
    .line 52
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->quickStarListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

    .line 58
    .line 59
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    .line 65
    .line 66
    invoke-virtual {p7, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const-string v0, "featureEnabled="

    .line 6
    .line 7
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v1, "state="

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    .line 31
    .line 32
    const-string/jumbo v0, "two phone mode created="

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    .line 43
    .line 44
    const-string v2, "current user("

    .line 45
    .line 46
    const-string v3, ") is BMode="

    .line 47
    .line 48
    const-string v4, " or Owner="

    .line 49
    .line 50
    invoke-static {v2, p2, v3, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p2, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 58
    .line 59
    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 60
    .line 61
    const-string/jumbo p2, "two_phone_mode_icon"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isBlocked(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const-string p2, "blocked by quick star="

    .line 69
    .line 70
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final featureEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SHOW_TWO_PHONE_MODE_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 7
    .line 8
    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final getViewWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final updateTwoPhoneMode()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userManager:Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isBMode()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    move v1, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move v1, v3

    .line 46
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    move-object v5, v4

    .line 68
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 69
    .line 70
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 71
    .line 72
    iget v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    .line 73
    .line 74
    if-ne v5, v6, :cond_4

    .line 75
    .line 76
    move v5, v2

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move v5, v3

    .line 79
    :goto_3
    if-eqz v5, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    goto :goto_4

    .line 98
    :cond_6
    move v0, v3

    .line 99
    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    .line 100
    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    move v0, v2

    .line 106
    goto :goto_5

    .line 107
    :cond_7
    move v0, v3

    .line 108
    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    .line 109
    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 123
    .line 124
    const-string/jumbo v6, "two_call_enabled"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v6}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-ne v6, v2, :cond_8

    .line 136
    .line 137
    move v6, v2

    .line 138
    goto :goto_6

    .line 139
    :cond_8
    move v6, v3

    .line 140
    :goto_6
    const-string/jumbo v7, "two_sms_enabled"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v7}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v1, v2, :cond_9

    .line 152
    .line 153
    move v1, v2

    .line 154
    goto :goto_7

    .line 155
    :cond_9
    move v1, v3

    .line 156
    :goto_7
    invoke-direct {v0, v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;-><init>(ZZZZ)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    .line 160
    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    .line 165
    .line 166
    if-nez v0, :cond_a

    .line 167
    .line 168
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const v5, 0x1110159

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_14

    .line 180
    .line 181
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    .line 182
    .line 183
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->userCreated:Z

    .line 184
    .line 185
    if-eqz v5, :cond_14

    .line 186
    .line 187
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    .line 188
    .line 189
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->msgEnabled:Z

    .line 190
    .line 191
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->registered:Z

    .line 192
    .line 193
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->callEnabled:Z

    .line 194
    .line 195
    if-eqz v5, :cond_e

    .line 196
    .line 197
    if-nez v0, :cond_b

    .line 198
    .line 199
    if-eqz v6, :cond_c

    .line 200
    .line 201
    :cond_b
    if-eqz v7, :cond_c

    .line 202
    .line 203
    move v0, v2

    .line 204
    goto :goto_8

    .line 205
    :cond_c
    move v0, v3

    .line 206
    :goto_8
    if-eqz v0, :cond_14

    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 209
    .line 210
    if-nez v0, :cond_d

    .line 211
    .line 212
    move-object v0, v1

    .line 213
    :cond_d
    const v5, 0x7f1310a8    # 1.95483E38f

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    const v0, 0x7f0811fc

    .line 224
    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_e
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    .line 228
    .line 229
    if-eqz v5, :cond_14

    .line 230
    .line 231
    if-nez v0, :cond_f

    .line 232
    .line 233
    if-eqz v6, :cond_10

    .line 234
    .line 235
    :cond_f
    if-eqz v7, :cond_10

    .line 236
    .line 237
    move v0, v2

    .line 238
    goto :goto_9

    .line 239
    :cond_10
    move v0, v3

    .line 240
    :goto_9
    if-eqz v0, :cond_12

    .line 241
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 243
    .line 244
    if-nez v0, :cond_11

    .line 245
    .line 246
    move-object v0, v1

    .line 247
    :cond_11
    const v5, 0x7f1310b0

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    const v0, 0x7f0811fa

    .line 258
    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 262
    .line 263
    if-nez v0, :cond_13

    .line 264
    .line 265
    move-object v0, v1

    .line 266
    :cond_13
    const v5, 0x7f1310af

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    const v0, 0x7f0811fb

    .line 277
    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_14
    move v0, v3

    .line 281
    :goto_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    .line 282
    .line 283
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    .line 284
    .line 285
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    .line 286
    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string/jumbo v8, "updateTwoPhoneMode state="

    .line 290
    .line 291
    .line 292
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v4, " current user("

    .line 299
    .line 300
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v4, ") is BMode="

    .line 307
    .line 308
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v4, " -> icon="

    .line 315
    .line 316
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    const-string v5, "TwoPhoneModeIconController"

    .line 327
    .line 328
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    if-eqz v0, :cond_15

    .line 332
    .line 333
    move v4, v2

    .line 334
    goto :goto_b

    .line 335
    :cond_15
    move v4, v3

    .line 336
    :goto_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 337
    .line 338
    if-nez v5, :cond_16

    .line 339
    .line 340
    goto :goto_f

    .line 341
    :cond_16
    if-eqz v4, :cond_17

    .line 342
    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 344
    .line 345
    check-cast v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 346
    .line 347
    const-string/jumbo v5, "two_phone_mode_icon"

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v5}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isBlocked(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-nez v4, :cond_17

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_17
    move v2, v3

    .line 358
    :goto_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 359
    .line 360
    if-nez v4, :cond_18

    .line 361
    .line 362
    move-object v4, v1

    .line 363
    :cond_18
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    .line 365
    .line 366
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 367
    .line 368
    if-nez p0, :cond_19

    .line 369
    .line 370
    goto :goto_d

    .line 371
    :cond_19
    move-object v1, p0

    .line 372
    :goto_d
    if-eqz v2, :cond_1a

    .line 373
    .line 374
    goto :goto_e

    .line 375
    :cond_1a
    const/16 v3, 0x8

    .line 376
    .line 377
    :goto_e
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    :goto_f
    return-void
.end method
