.class public final Lcom/android/systemui/battery/BatteryMeterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAdditionalScaleFactorForSpecificBatteryView:F

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mIgnoreTunerUpdates:Z

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public mIsSubscribedForTunerUpdates:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public final mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

.field public final mSlotBattery:Ljava/lang/String;

.field public final mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mAdditionalScaleFactorForSpecificBatteryView:F

    .line 6
    .line 7
    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$1;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$1;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

    .line 13
    .line 14
    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$2;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$2;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    .line 20
    .line 21
    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$3;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$3;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$4;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$4;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 34
    .line 35
    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsListener:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 45
    .line 46
    iput-object p4, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 47
    .line 48
    iput-object p5, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mMainHandler:Landroid/os/Handler;

    .line 49
    .line 50
    iput-object p6, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    .line 52
    iput-object p8, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 55
    .line 56
    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    .line 57
    .line 58
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    new-instance p2, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    invoke-direct {p2, p8}, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p1, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryEstimateFetcher:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 69
    .line 70
    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    .line 71
    .line 72
    sget-object p2, Lcom/android/systemui/flags/Flags;->BATTERY_SHIELD_ICON:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 73
    .line 74
    check-cast p7, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 75
    .line 76
    invoke-virtual {p7, p2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput-boolean p2, p1, Lcom/android/systemui/battery/BatteryMeterView;->mDisplayShieldEnabled:Z

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const p2, 0x1040ddb

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlotBattery:Ljava/lang/String;

    .line 94
    .line 95
    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    .line 96
    .line 97
    invoke-direct {p1, p0, p5}, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;Landroid/os/Handler;)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    .line 101
    .line 102
    iput-object p9, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 103
    .line 104
    iput-object p10, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 105
    .line 106
    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;I)V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    .line 113
    .line 114
    iput-object p11, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIgnoreTunerUpdates:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "icon_blacklist"

    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    .line 29
    .line 30
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 36
    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 45
    .line 46
    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const v3, 0x7f050083

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    const-string v2, "ShadeHeaderController"

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    new-instance v2, Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 79
    .line 80
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 81
    .line 82
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    const-string v0, "display_battery_percentage"

    .line 101
    .line 102
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsListener:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 118
    .line 119
    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowBatteryPercentInStatusBar()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    .line 126
    .line 127
    const-string v0, "battery_estimates_last_update_time"

    .line 128
    .line 129
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    iget-object v3, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    .line 137
    .line 138
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 142
    .line 143
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mMainHandler:Landroid/os/Handler;

    .line 146
    .line 147
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 151
    .line 152
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 153
    .line 154
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 158
    .line 159
    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "BatteryMeterViewController"

    .line 166
    .line 167
    if-eqz v0, :cond_3

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 175
    .line 176
    check-cast v2, Lcom/android/systemui/battery/BatteryMeterView;

    .line 177
    .line 178
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    .line 197
    .line 198
    if-nez v1, :cond_4

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_4
    iput-object v1, v0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v2, v0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 207
    .line 208
    iget-object v2, v2, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 209
    .line 210
    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 211
    .line 212
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 216
    .line 217
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 26
    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 37
    .line 38
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsListener:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 67
    .line 68
    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method
