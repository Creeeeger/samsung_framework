.class public final Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public mBouncerVisible:Z

.field public final mDarkIconColor:I

.field public mDirectReplying:Z

.field public mForceDarkForScrim:Z

.field public mForceLightForScrim:Z

.field public mGlobalActionsVisible:Z

.field public mHasLightNavigationBar:Z

.field public mIsCustomizingForBackNav:Z

.field public final mIsDefaultDisplay:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLightIconColor:I

.field public final mModeChangedListener:Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

.field public final mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public mNavbarColorManagedByIme:Z

.field public mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field public mNavigationBarMode:I

.field public mNavigationLight:Z

.field public mNavigationMode:I

.field public final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

.field public mPanelExpanded:Z

.field public mPanelHasWhiteBg:Z

.field public mQsCustomizing:Z

.field public mQsExpanded:Z

.field public final mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

.field public final mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

.field public mStatusBarMode:I

.field public final mUseNewLightBarLogic:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x3ecccccd    # 0.4f

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    .line 10
    .line 11
    .line 12
    :goto_0
    sput v0, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;I)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mModeChangedListener:Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsDefaultDisplay:Z

    .line 21
    .line 22
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 45
    .line 46
    :cond_0
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_POLICY_VISIBILITY:Z

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    new-instance v3, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    .line 51
    .line 52
    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    .line 56
    .line 57
    :cond_1
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 58
    .line 59
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 60
    .line 61
    sget-object p8, Lcom/android/systemui/flags/Flags;->NEW_LIGHT_BAR_LOGIC:Lcom/android/systemui/flags/ReleasedFlag;

    .line 62
    .line 63
    check-cast p5, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 64
    .line 65
    invoke-virtual {p5, p8}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 66
    .line 67
    .line 68
    move-result p5

    .line 69
    const/4 p8, 0x1

    .line 70
    if-eqz p5, :cond_2

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    move v0, p8

    .line 75
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mUseNewLightBarLogic:Z

    .line 76
    .line 77
    const p5, 0x7f0600fa

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p5}, Landroid/content/Context;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    iput p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkIconColor:I

    .line 85
    .line 86
    const p5, 0x7f0601fc

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p5}, Landroid/content/Context;->getColor(I)I

    .line 90
    .line 91
    .line 92
    move-result p5

    .line 93
    iput p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLightIconColor:I

    .line 94
    .line 95
    check-cast p2, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 96
    .line 97
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 98
    .line 99
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 100
    .line 101
    check-cast p3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 102
    .line 103
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    .line 107
    .line 108
    if-eqz p2, :cond_3

    .line 109
    .line 110
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 111
    .line 112
    invoke-virtual {p4, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance p2, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

    .line 120
    .line 121
    invoke-direct {p2, p0, p8}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4, p2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    .line 129
    .line 130
    :goto_0
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    if-nez p1, :cond_4

    .line 140
    .line 141
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const-string p1, "LightBarController"

    .line 145
    .line 146
    invoke-static {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 147
    .line 148
    .line 149
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsDefaultDisplay:Z

    .line 150
    .line 151
    :cond_4
    return-void
.end method

.method public static isLight(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move p1, v1

    .line 12
    :goto_1
    and-int/2addr p0, p2

    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    move p0, v1

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    move p0, v0

    .line 18
    :goto_2
    if-eqz p1, :cond_3

    .line 19
    .line 20
    if-eqz p0, :cond_3

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_3
    return v0
.end method


# virtual methods
.method public final animateChange()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    :cond_1
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "LightBarController: "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, " mAppearance="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Landroid/view/InsetsFlags;

    .line 12
    .line 13
    const-string v1, "appearance"

    .line 14
    .line 15
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 25
    .line 26
    array-length v0, v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 31
    .line 32
    aget-object v2, v2, v1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 39
    .line 40
    const/16 v4, 0x8

    .line 41
    .line 42
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-string v3, " stack #"

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 52
    .line 53
    .line 54
    const-string v3, ": "

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 60
    .line 61
    aget-object v3, v3, v1

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v3, " isLight="

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string v0, " mNavigationLight="

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    .line 90
    .line 91
    const-string v0, " mHasLightNavigationBar="

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 102
    .line 103
    .line 104
    const-string v0, " mStatusBarMode="

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 112
    .line 113
    .line 114
    const-string v0, " mNavigationBarMode="

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    .line 126
    .line 127
    const-string v0, " mForceDarkForScrim="

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 135
    .line 136
    .line 137
    const-string v0, " mForceLightForScrim="

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 148
    .line 149
    .line 150
    const-string v0, " mQsCustomizing="

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    .line 159
    .line 160
    const-string v0, " mQsExpanded="

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 168
    .line 169
    .line 170
    const-string v0, " mBouncerVisible="

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 178
    .line 179
    .line 180
    const-string v0, " mGlobalActionsVisible="

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mGlobalActionsVisible:Z

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 188
    .line 189
    .line 190
    const-string v0, " mDirectReplying="

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 198
    .line 199
    .line 200
    const-string v0, " mNavbarColorManagedByIme="

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 211
    .line 212
    .line 213
    const-string v0, " Recent Calculation Logs:"

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v0, "   "

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 237
    .line 238
    check-cast v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 241
    .line 242
    if-eqz v0, :cond_1

    .line 243
    .line 244
    const-string v1, " StatusBarTransitionsController:"

    .line 245
    .line 246
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 253
    .line 254
    .line 255
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_POLICY_VISIBILITY:Z

    .line 256
    .line 257
    const-string v1, " NavigationBarTransitionsController:"

    .line 258
    .line 259
    if-eqz v0, :cond_2

    .line 260
    .line 261
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda3;

    .line 265
    .line 266
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    .line 270
    .line 271
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->notify(Ljava/util/function/Consumer;)V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 276
    .line 277
    if-eqz v0, :cond_3

    .line 278
    .line 279
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 283
    .line 284
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 288
    .line 289
    .line 290
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 291
    .line 292
    if-eqz p0, :cond_4

    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    const-string p2, "SamsungStatusBarGrayIconHelper:"

    .line 298
    .line 299
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayIcon:Z

    .line 303
    .line 304
    const-string v0, "  isGrayIcon="

    .line 305
    .line 306
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 307
    .line 308
    .line 309
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->homeIndicatorIconColor:I

    .line 310
    .line 311
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v1, "  homeIndicatorIconColor="

    .line 318
    .line 319
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string p0, "(0x"

    .line 326
    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string p0, ")"

    .line 334
    .line 335
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_4
    return-void
.end method

.method public final onNavigationBarAppearanceChanged(IILjava/lang/String;ZZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 8
    .line 9
    xor-int/2addr v3, v1

    .line 10
    const/16 v4, 0x10

    .line 11
    .line 12
    and-int/2addr v3, v4

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    if-eqz p4, :cond_19

    .line 16
    .line 17
    :cond_0
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isOpaqueNavigationBar()Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_1

    .line 30
    .line 31
    iget-object v8, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 32
    .line 33
    iget-boolean v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    move v8, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v8, v7

    .line 40
    :goto_0
    if-eqz v8, :cond_2

    .line 41
    .line 42
    move v11, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v11, v7

    .line 45
    :goto_1
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 46
    .line 47
    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-nez v9, :cond_4

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    if-eqz v11, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v9, v7

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    move v9, v6

    .line 61
    :goto_3
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 62
    .line 63
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mUseNewLightBarLogic:Z

    .line 64
    .line 65
    if-eqz v10, :cond_f

    .line 66
    .line 67
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 68
    .line 69
    if-eqz v10, :cond_5

    .line 70
    .line 71
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 72
    .line 73
    if-eqz v10, :cond_5

    .line 74
    .line 75
    move v10, v6

    .line 76
    goto :goto_4

    .line 77
    :cond_5
    move v10, v7

    .line 78
    :goto_4
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 79
    .line 80
    if-eqz v12, :cond_6

    .line 81
    .line 82
    if-nez v10, :cond_6

    .line 83
    .line 84
    move v12, v6

    .line 85
    goto :goto_5

    .line 86
    :cond_6
    move v12, v7

    .line 87
    :goto_5
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    .line 88
    .line 89
    if-eqz v13, :cond_7

    .line 90
    .line 91
    if-nez v10, :cond_7

    .line 92
    .line 93
    move v10, v6

    .line 94
    goto :goto_6

    .line 95
    :cond_7
    move v10, v7

    .line 96
    :goto_6
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 97
    .line 98
    if-nez v13, :cond_8

    .line 99
    .line 100
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 101
    .line 102
    if-eqz v13, :cond_9

    .line 103
    .line 104
    :cond_8
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    .line 105
    .line 106
    if-nez v13, :cond_9

    .line 107
    .line 108
    move v13, v6

    .line 109
    goto :goto_7

    .line 110
    :cond_9
    move v13, v7

    .line 111
    :goto_7
    if-nez v13, :cond_b

    .line 112
    .line 113
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mGlobalActionsVisible:Z

    .line 114
    .line 115
    if-eqz v13, :cond_a

    .line 116
    .line 117
    goto :goto_8

    .line 118
    :cond_a
    move v13, v7

    .line 119
    goto :goto_9

    .line 120
    :cond_b
    :goto_8
    move v13, v6

    .line 121
    :goto_9
    if-eqz v9, :cond_c

    .line 122
    .line 123
    if-eqz v12, :cond_d

    .line 124
    .line 125
    :cond_c
    if-eqz v10, :cond_e

    .line 126
    .line 127
    :cond_d
    if-nez v13, :cond_e

    .line 128
    .line 129
    move v9, v6

    .line 130
    goto :goto_a

    .line 131
    :cond_e
    move v9, v7

    .line 132
    :goto_a
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 133
    .line 134
    goto :goto_e

    .line 135
    :cond_f
    if-eqz v9, :cond_12

    .line 136
    .line 137
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 138
    .line 139
    if-eqz v9, :cond_10

    .line 140
    .line 141
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 142
    .line 143
    if-nez v9, :cond_11

    .line 144
    .line 145
    :cond_10
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 146
    .line 147
    if-nez v9, :cond_12

    .line 148
    .line 149
    :cond_11
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 150
    .line 151
    if-nez v9, :cond_12

    .line 152
    .line 153
    move v9, v6

    .line 154
    goto :goto_b

    .line 155
    :cond_12
    move v9, v7

    .line 156
    :goto_b
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 157
    .line 158
    if-eqz v3, :cond_15

    .line 159
    .line 160
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    .line 161
    .line 162
    if-eqz v9, :cond_15

    .line 163
    .line 164
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 165
    .line 166
    if-nez v9, :cond_15

    .line 167
    .line 168
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 169
    .line 170
    if-nez v9, :cond_14

    .line 171
    .line 172
    if-eqz v11, :cond_13

    .line 173
    .line 174
    goto :goto_c

    .line 175
    :cond_13
    move v9, v7

    .line 176
    goto :goto_d

    .line 177
    :cond_14
    :goto_c
    move v9, v6

    .line 178
    :goto_d
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 179
    .line 180
    :cond_15
    :goto_e
    if-eqz v3, :cond_16

    .line 181
    .line 182
    iget-object v5, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 183
    .line 184
    iget-boolean v5, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    .line 185
    .line 186
    if-eqz v5, :cond_16

    .line 187
    .line 188
    goto :goto_f

    .line 189
    :cond_16
    move v6, v7

    .line 190
    :goto_f
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 191
    .line 192
    if-eq v5, v8, :cond_19

    .line 193
    .line 194
    if-eqz v3, :cond_19

    .line 195
    .line 196
    if-nez v6, :cond_19

    .line 197
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 199
    .line 200
    .line 201
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 202
    .line 203
    if-eqz v3, :cond_17

    .line 204
    .line 205
    const-string v3, "BLACK button"

    .line 206
    .line 207
    goto :goto_10

    .line 208
    :cond_17
    const-string v3, "WHITE button"

    .line 209
    .line 210
    :goto_10
    move-object v10, v3

    .line 211
    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 216
    .line 217
    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 218
    .line 219
    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 220
    .line 221
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 222
    .line 223
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 224
    .line 225
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    new-instance v6, Lcom/android/systemui/statusbar/phone/NavigationBarModel;

    .line 231
    .line 232
    move-object v9, v6

    .line 233
    move/from16 v16, v3

    .line 234
    .line 235
    move/from16 v17, v4

    .line 236
    .line 237
    move-object/from16 v18, p3

    .line 238
    .line 239
    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/statusbar/phone/NavigationBarModel;-><init>(Ljava/lang/String;ZZZZZZZLjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, v5, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->navigationBarModel:Lcom/android/systemui/statusbar/phone/NavigationBarModel;

    .line 243
    .line 244
    if-eqz v3, :cond_18

    .line 245
    .line 246
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-nez v3, :cond_19

    .line 251
    .line 252
    :cond_18
    iput-object v6, v5, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->navigationBarModel:Lcom/android/systemui/statusbar/phone/NavigationBarModel;

    .line 253
    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string/jumbo v4, "updateNavigationBar "

    .line 257
    .line 258
    .line 259
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    const-string v4, "SamsungLightBarControlHelper"

    .line 270
    .line 271
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    :cond_19
    iput v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 275
    .line 276
    iput v2, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 277
    .line 278
    move/from16 v1, p5

    .line 279
    .line 280
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 281
    .line 282
    return-void
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZLjava/lang/String;)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    move v4, v3

    .line 13
    :goto_1
    if-ge v4, v0, :cond_1

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    aget-object v5, p1, v4

    .line 18
    .line 19
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 20
    .line 21
    aget-object v6, v6, v4

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Lcom/android/internal/view/AppearanceRegion;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    xor-int/2addr v5, v2

    .line 28
    or-int/2addr v1, v5

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    if-nez v1, :cond_2

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayAppearanceChanged:Z

    .line 43
    .line 44
    if-eqz v0, :cond_7

    .line 45
    .line 46
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 47
    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget v0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelperKt;->$r8$clinit:I

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "onStatusBarAppearanceChanged() -"

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "  sbModeChanged:"

    .line 67
    .line 68
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, ", statusBarMode:"

    .line 84
    .line 85
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string v2, ", barState:"

    .line 103
    .line 104
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 112
    .line 113
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 118
    .line 119
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 120
    .line 121
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v4, ", isKeyguardShowing:"

    .line 126
    .line 127
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, ", navbarColorManagedByIme:"

    .line 143
    .line 144
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v2, ", stackAppearanceChanged:"

    .line 160
    .line 161
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p2, ", ("

    .line 175
    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    array-length p2, p1

    .line 180
    move v1, v3

    .line 181
    :goto_2
    if-ge v1, p2, :cond_4

    .line 182
    .line 183
    aget-object v2, p1, v1

    .line 184
    .line 185
    if-eqz v2, :cond_3

    .line 186
    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v2, ", "

    .line 196
    .line 197
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_4
    const-string p1, ")"

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p1, "com.att"

    .line 216
    .line 217
    invoke-static {p5, p1, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_5

    .line 222
    .line 223
    const-string p1, ", packageName:"

    .line 224
    .line 225
    invoke-virtual {p1, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    :cond_5
    const-string p1, "SamsungLightBarControlHelper"

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    :cond_6
    iput p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 242
    .line 243
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 244
    .line 245
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Landroid/os/Handler;

    .line 250
    .line 251
    new-instance p2, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;

    .line 252
    .line 253
    invoke-direct {p2, p0, p5}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    .line 258
    .line 259
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    .line 260
    .line 261
    :cond_7
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 262
    .line 263
    return-void
.end method

.method public final reevaluate()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsDefaultDisplay:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string/jumbo v2, "reevaluate:"

    .line 5
    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 13
    .line 14
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    move-object v3, p0

    .line 33
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget v10, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 37
    .line 38
    const/4 v13, 0x1

    .line 39
    iget v11, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 40
    .line 41
    iget-boolean v14, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    move-object v9, p0

    .line 60
    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IILjava/lang/String;ZZ)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final updateNavigation()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_POLICY_VISIBILITY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->notify(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final updateStatus([Lcom/android/internal/view/AppearanceRegion;Ljava/lang/String;)V
    .locals 8

    .line 1
    array-length v2, p1

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    aget-object v4, p1, v1

    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 18
    .line 19
    const/16 v7, 0x8

    .line 20
    .line 21
    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 38
    .line 39
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayAppearance:Z

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget v1, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->homeIndicatorIconColor:I

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    if-eq v1, v4, :cond_2

    .line 49
    .line 50
    move v1, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v1, v0

    .line 53
    :goto_1
    if-eqz v1, :cond_3

    .line 54
    .line 55
    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    move v1, v4

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v1, v0

    .line 72
    :goto_2
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayIcon:Z

    .line 73
    .line 74
    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 79
    .line 80
    iget-object v5, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 81
    .line 82
    check-cast v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 83
    .line 84
    const v6, 0x7f0a0144

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/android/systemui/battery/BatteryMeterView;

    .line 92
    .line 93
    iput-boolean v1, v5, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    .line 94
    .line 95
    :cond_4
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayIcon:Z

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    check-cast v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 102
    .line 103
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 104
    .line 105
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 106
    .line 107
    if-eq v1, v4, :cond_5

    .line 108
    .line 109
    move v0, v4

    .line 110
    :cond_5
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->iconColorChanged:Z

    .line 111
    .line 112
    iput-boolean v4, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p1, v4, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 122
    .line 123
    const-string v1, "GRAY icon"

    .line 124
    .line 125
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 126
    .line 127
    move-object v5, p2

    .line 128
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    if-nez v2, :cond_8

    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 142
    .line 143
    iget-boolean v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 144
    .line 145
    if-nez v4, :cond_7

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    :cond_7
    return-void

    .line 154
    :cond_8
    check-cast v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 155
    .line 156
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 157
    .line 158
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 159
    .line 160
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->iconColorChanged:Z

    .line 161
    .line 162
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 172
    .line 173
    const-string v1, "WHITE icon"

    .line 174
    .line 175
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 176
    .line 177
    move-object v5, p2

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-ne p1, v2, :cond_a

    .line 187
    .line 188
    check-cast v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 189
    .line 190
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 191
    .line 192
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 193
    .line 194
    iput-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->iconColorChanged:Z

    .line 195
    .line 196
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 197
    .line 198
    const/4 p1, 0x0

    .line 199
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconsDarkArea(Ljava/util/ArrayList;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-virtual {p1, v4, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 212
    .line 213
    const-string v1, "BLACK icon"

    .line 214
    .line 215
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 216
    .line 217
    move-object v5, p2

    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_a
    check-cast v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 223
    .line 224
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 225
    .line 226
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 227
    .line 228
    iput-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->iconColorChanged:Z

    .line 229
    .line 230
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconsDarkArea(Ljava/util/ArrayList;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-virtual {p1, v4, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 245
    .line 246
    const-string v1, "BLACK magic"

    .line 247
    .line 248
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 249
    .line 250
    move-object v5, p2

    .line 251
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :goto_3
    return-void
.end method
