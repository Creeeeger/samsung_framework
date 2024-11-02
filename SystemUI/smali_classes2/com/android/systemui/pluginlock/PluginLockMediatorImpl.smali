.class public final Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockMediator;
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# static fields
.field public static sScreenType:I


# instance fields
.field public mBarState:I

.field public mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

.field public mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

.field public final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mDynamicLockData:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

.field public final mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

.field public mIsCoverAttached:Z

.field public mIsDynamicLockData:Z

.field public mIsEnabled:Z

.field public mIsLockScreenEnabled:Z

.field public mIsRotateMenuHide:Z

.field public mIsSecureWindow:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

.field public final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

.field public mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

.field public mPluginContext:Landroid/content/Context;

.field public mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

.field public final mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

.field public mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mShortcurManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

.field public mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

.field public final mStateListenerList:Ljava/util/List;

.field public mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

.field public mStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

.field public mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

.field public final mUserSwitchListenerList:Ljava/util/List;

.field public final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public mViewMode:I

.field public mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/statusbar/KeyguardShortcutManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    .line 34
    .line 35
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 45
    .line 46
    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 47
    .line 48
    iput-object p6, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcurManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 49
    .line 50
    iput-object p7, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    iput-object p8, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p3, "## PluginLockMediatorImpl ##, "

    .line 59
    .line 60
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string p3, "PluginLockMediatorImpl"

    .line 71
    .line 72
    invoke-virtual {p8, p3, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 76
    .line 77
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    .line 79
    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    .line 84
    new-instance p2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 90
    .line 91
    new-instance p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 92
    .line 93
    invoke-direct {p2, p1, v0, p7}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 94
    .line 95
    .line 96
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 97
    .line 98
    new-instance p1, Landroid/os/Handler;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 108
    .line 109
    return-void
.end method

.method public static getItemLocation(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 14
    .line 15
    div-int/lit8 v1, v0, 0x3

    .line 16
    .line 17
    if-le v1, p0, :cond_0

    .line 18
    .line 19
    const-string/jumbo p0, "top"

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 24
    .line 25
    if-le v1, p0, :cond_1

    .line 26
    .line 27
    const-string p0, "background"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    if-lt v0, p0, :cond_2

    .line 31
    .line 32
    const-string p0, "bottom"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method


# virtual methods
.method public final getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 2
    .line 3
    const-string v1, "none"

    .line 4
    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    if-eqz p1, :cond_10

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    move v0, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v0, v4

    .line 37
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const v6, -0x5847f19a

    .line 42
    .line 43
    .line 44
    if-eq v5, v6, :cond_6

    .line 45
    .line 46
    const v4, 0x143f195e

    .line 47
    .line 48
    .line 49
    if-eq v5, v4, :cond_4

    .line 50
    .line 51
    const v4, 0x6cbdc754

    .line 52
    .line 53
    .line 54
    if-eq v5, v4, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string v4, "indication_text_view"

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v4, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const-string v4, "notification_icon_only"

    .line 69
    .line 70
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    move v4, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_6
    const-string v5, "face_widget"

    .line 80
    .line 81
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_7

    .line 86
    .line 87
    :goto_1
    const/4 v4, -0x1

    .line 88
    :cond_7
    :goto_2
    if-eqz v4, :cond_d

    .line 89
    .line 90
    if-eq v4, v3, :cond_b

    .line 91
    .line 92
    if-eq v4, v2, :cond_8

    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_a

    .line 103
    .line 104
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getHeight()Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    sub-int/2addr p1, v0

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottomLand()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    goto :goto_3

    .line 148
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getHeight()Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    sub-int/2addr p1, v0

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottom()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    :goto_3
    sub-int/2addr p1, p0

    .line 166
    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_a
    const-string v1, "bottom"

    .line 173
    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_f

    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-ne p1, v2, :cond_f

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopYLand()Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    goto :goto_4

    .line 225
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopY()Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    goto :goto_4

    .line 248
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_f

    .line 255
    .line 256
    if-eqz v0, :cond_e

    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    goto :goto_4

    .line 277
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    goto :goto_4

    .line 296
    :cond_f
    const-string/jumbo v1, "top"

    .line 297
    .line 298
    .line 299
    :goto_4
    return-object v1

    .line 300
    :cond_10
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v2, "getLockStarItemLocationInfo Data: "

    .line 303
    .line 304
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 308
    .line 309
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string p0, ", group: "

    .line 313
    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    const-string p1, "PluginLockMediatorImpl"

    .line 325
    .line 326
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    return-object v1
.end method

.method public final isDynamicLockEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final isRotateMenuHide()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isRotateMenuHide mIsEnabled: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mIsRotateMenuHide: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 19
    .line 20
    const-string v2, "PluginLockMediatorImpl"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final onDataCleared()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onDataCleared()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onDataCleared()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v1, p0

    .line 23
    check-cast v1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 30
    .line 31
    const/4 v1, -0x2

    .line 32
    iput v1, v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    iput-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 38
    .line 39
    iput-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 40
    .line 41
    iput-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    .line 42
    .line 43
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    :cond_0
    const/4 v0, 0x1

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast p0, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 63
    .line 64
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    .line 65
    .line 66
    iput-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 69
    .line 70
    iput-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public final onEventReceived(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onFolderStateChanged(ZZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onFolderStateChanged(ZZ)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "onFolderStateChanged, "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/AbstractMethodError;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "PluginLockDelegateApp"

    .line 33
    .line 34
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 38
    .line 39
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onFolderStateChanged(Z)V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    return-void
.end method

.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 2
    .line 3
    const-string v0, "PluginLockMediatorImpl"

    .line 4
    .line 5
    const-string v1, "onPluginConnected"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    .line 11
    .line 12
    if-eqz p0, :cond_4

    .line 13
    .line 14
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v2

    .line 27
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "onPluginConnected : "

    .line 30
    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, ", isOwnerProcess: "

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "PluginLockManagerImpl"

    .line 54
    .line 55
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_1
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 65
    .line 66
    invoke-direct {v0, p1, p2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;-><init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    .line 67
    .line 68
    .line 69
    sget-boolean p1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    .line 78
    .line 79
    const-class v3, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 80
    .line 81
    invoke-virtual {p2, v3, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getVersion()Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "getDataVersion() "

    .line 98
    .line 99
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const-string v3, "PluginLockInstanceState"

    .line 110
    .line 111
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, "[migration] for ["

    .line 117
    .line 118
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v3, "]"

    .line 127
    .line 128
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, "[migration] - savedVersion: "

    .line 141
    .line 142
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v3, ", currVersion:3"

    .line 149
    .line 150
    invoke-static {p2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 p2, 0x3

    .line 154
    if-ge p1, p2, :cond_3

    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const-string v3, "[migration] - mainValue: "

    .line 167
    .line 168
    const-string v5, ", subValue:"

    .line 169
    .line 170
    invoke-static {v3, p2, v5, v2, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 v3, -0x1

    .line 174
    if-eq p2, v3, :cond_3

    .line 175
    .line 176
    if-ne v2, v3, :cond_3

    .line 177
    .line 178
    iget v2, v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 179
    .line 180
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {v2, p2}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_2

    .line 190
    .line 191
    invoke-static {p2}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_3

    .line 196
    .line 197
    const-string v2, "[migration] - start!"

    .line 198
    .line 199
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    invoke-static {p2}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 207
    .line 208
    .line 209
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    .line 210
    .line 211
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_2
    const-string p1, "[migration] - not activated plugin"

    .line 216
    .line 217
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :catchall_0
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    .line 227
    .line 228
    :cond_4
    :goto_2
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 18

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 6
    .line 7
    const-string v2, "PluginLockMediatorImpl"

    .line 8
    .line 9
    const-string v3, "onPluginDisconnected"

    .line 10
    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-object/from16 v2, p0

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    .line 17
    .line 18
    if-eqz v2, :cond_f

    .line 19
    .line 20
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 21
    .line 22
    const-string v3, "onPluginDisconnected "

    .line 23
    .line 24
    const-string v4, "PluginLockManagerImpl"

    .line 25
    .line 26
    invoke-static {v3, v0, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_f

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v5, "removeInstance() reason "

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v5, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v7, 0x0

    .line 65
    move v8, v7

    .line 66
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    iget-object v10, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    .line 71
    .line 72
    iget-object v11, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 73
    .line 74
    if-eqz v9, :cond_9

    .line 75
    .line 76
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 87
    .line 88
    iget-object v12, v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 89
    .line 90
    if-ne v12, v1, :cond_8

    .line 91
    .line 92
    const-string v12, "disconnected, reason: "

    .line 93
    .line 94
    const-string v13, ", package:"

    .line 95
    .line 96
    invoke-static {v12, v0, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    iget-object v13, v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    iget-object v13, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 110
    .line 111
    invoke-virtual {v13, v4, v12}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    array-length v12, v10

    .line 115
    move v14, v8

    .line 116
    move v8, v7

    .line 117
    :goto_1
    if-ge v7, v12, :cond_7

    .line 118
    .line 119
    aget v15, v10, v7

    .line 120
    .line 121
    sget-boolean v16, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 122
    .line 123
    if-eqz v16, :cond_0

    .line 124
    .line 125
    invoke-virtual {v9, v15}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    .line 126
    .line 127
    .line 128
    move-result v17

    .line 129
    if-eqz v17, :cond_6

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    .line 133
    .line 134
    .line 135
    move-result v17

    .line 136
    if-eqz v17, :cond_6

    .line 137
    .line 138
    :goto_2
    if-nez v0, :cond_5

    .line 139
    .line 140
    if-eqz v16, :cond_1

    .line 141
    .line 142
    invoke-virtual {v9, v15, v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_1
    invoke-virtual {v9, v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 147
    .line 148
    .line 149
    :goto_3
    iget-object v8, v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 150
    .line 151
    const-string v14, "com.samsung.android.dynamiclock"

    .line 152
    .line 153
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    if-nez v14, :cond_3

    .line 158
    .line 159
    const-string v14, "com.samsung.android.mateagent"

    .line 160
    .line 161
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_2

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_2
    const/4 v8, 0x0

    .line 169
    goto :goto_5

    .line 170
    :cond_3
    :goto_4
    const/4 v8, 0x1

    .line 171
    :goto_5
    if-eqz v8, :cond_4

    .line 172
    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string/jumbo v14, "plugin Package removed"

    .line 176
    .line 177
    .line 178
    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v14, v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v13, v4, v8}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v8, v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 194
    .line 195
    iput-object v8, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    .line 196
    .line 197
    :cond_4
    const/4 v8, 0x0

    .line 198
    const/4 v14, 0x1

    .line 199
    :cond_5
    invoke-static {v1, v15, v8}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    .line 200
    .line 201
    .line 202
    move-object v15, v11

    .line 203
    check-cast v15, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 204
    .line 205
    invoke-virtual {v15}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->resetConfigs()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v8}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->resetDynamicLockData(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->resetDynamicLock()V

    .line 212
    .line 213
    .line 214
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 215
    .line 216
    const/4 v8, 0x0

    .line 217
    goto :goto_1

    .line 218
    :cond_7
    iget-object v7, v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move v8, v14

    .line 224
    :cond_8
    const/4 v7, 0x0

    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_e

    .line 236
    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 248
    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string/jumbo v9, "removeInstance() pkgName:"

    .line 252
    .line 253
    .line 254
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v9, ", state: "

    .line 261
    .line 262
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v9, ", map size: "

    .line 269
    .line 270
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    if-eqz v6, :cond_d

    .line 288
    .line 289
    array-length v7, v10

    .line 290
    const/4 v9, 0x0

    .line 291
    :goto_7
    if-ge v9, v7, :cond_c

    .line 292
    .line 293
    aget v12, v10, v9

    .line 294
    .line 295
    sget-boolean v13, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 296
    .line 297
    if-eqz v13, :cond_a

    .line 298
    .line 299
    invoke-virtual {v6, v12}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    .line 300
    .line 301
    .line 302
    move-result v13

    .line 303
    if-eqz v13, :cond_b

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_a
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-eqz v13, :cond_b

    .line 311
    .line 312
    :goto_8
    const/4 v13, 0x0

    .line 313
    iput-object v13, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 314
    .line 315
    iput-object v13, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 316
    .line 317
    move-object v14, v11

    .line 318
    check-cast v14, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 319
    .line 320
    const/4 v15, 0x0

    .line 321
    invoke-virtual {v14, v15}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    .line 322
    .line 323
    .line 324
    iget-object v14, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 325
    .line 326
    invoke-virtual {v14, v13}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 327
    .line 328
    .line 329
    iget-object v14, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 330
    .line 331
    invoke-virtual {v14, v12, v13}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 332
    .line 333
    .line 334
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_c
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    .line 338
    .line 339
    .line 340
    :cond_d
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 345
    .line 346
    .line 347
    if-eqz v8, :cond_f

    .line 348
    .line 349
    const/4 v0, 0x1

    .line 350
    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(Z)V

    .line 351
    .line 352
    .line 353
    :cond_f
    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onViewModeChanged mode: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", mStateListenerList.size(): "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", mViewMode:"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x0

    .line 36
    new-array v3, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v4, "PluginLockMediatorImpl"

    .line 39
    .line 40
    invoke-static {v4, v0, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 44
    .line 45
    if-ne v0, p1, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-eq v0, p1, :cond_1

    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    .line 58
    .line 59
    .line 60
    :cond_1
    move v0, v2

    .line 61
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v0, v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-interface {v3, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onViewModeChanged(I)V

    .line 84
    .line 85
    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-ne v0, v1, :cond_4

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->onViewModeChanged(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 110
    .line 111
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;

    .line 112
    .line 113
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_1
    return-void
.end method

.method public final publishLockStarState()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "publishLockStarState mIsDynamicLockData: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v3, "PluginLockMediatorImpl"

    .line 22
    .line 23
    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move v0, v1

    .line 27
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 28
    .line 29
    move-object v4, v2

    .line 30
    check-cast v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-ge v0, v4, :cond_2

    .line 38
    .line 39
    move-object v4, v2

    .line 40
    check-cast v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo v6, "publishLockStarState : "

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v6, v2

    .line 63
    check-cast v6, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :try_start_0
    check-cast v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 98
    .line 99
    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 100
    .line 101
    if-nez v4, :cond_0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    move v5, v1

    .line 105
    :goto_1
    invoke-interface {v2, v5}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception v2

    .line 110
    const-string/jumbo v4, "publishLockStarState Exception: "

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v2, v3}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_8

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 134
    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_3
    const-string v2, "face_widget"

    .line 139
    .line 140
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_7

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 147
    .line 148
    .line 149
    const/4 v2, 0x2

    .line 150
    const/4 v3, -0x1

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    sparse-switch v4, :sswitch_data_0

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :sswitch_0
    const-string/jumbo v4, "top"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_4

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    const/4 v3, 0x2

    .line 170
    goto :goto_3

    .line 171
    :sswitch_1
    const-string v4, "background"

    .line 172
    .line 173
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-nez p0, :cond_5

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    const/4 v3, 0x1

    .line 181
    goto :goto_3

    .line 182
    :sswitch_2
    const-string v4, "bottom"

    .line 183
    .line 184
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_6

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    const/4 v3, 0x0

    .line 192
    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :pswitch_0
    move v1, v5

    .line 197
    goto :goto_4

    .line 198
    :pswitch_1
    move v1, v2

    .line 199
    goto :goto_4

    .line 200
    :pswitch_2
    const/4 v1, 0x3

    .line 201
    :cond_7
    :goto_4
    const-string p0, "lockstar_facewidget_area"

    .line 202
    .line 203
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    :cond_8
    return-void

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_2
        -0x4f67aad2 -> :sswitch_1
        0x1c155 -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 6

    .line 1
    const-string v0, "PluginLockMediatorImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "registerStateCallback: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    move v1, v2

    .line 28
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 29
    .line 30
    check-cast v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v1, v3, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 39
    .line 40
    check-cast v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-ne v3, p1, :cond_0

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    check-cast v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    instance-of v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    const-string v1, "PluginLockMediatorImpl"

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v4, "registerStateCallback isLockStar: "

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 89
    .line 90
    const/4 v5, 0x1

    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    move v4, v5

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v4, v2

    .line 96
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-array v4, v2, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v1, v3, v4}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 109
    .line 110
    if-nez v1, :cond_3

    .line 111
    .line 112
    move v2, v5

    .line 113
    :cond_3
    invoke-interface {p1, v2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 121
    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 129
    .line 130
    if-eqz p0, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    .line 133
    .line 134
    .line 135
    :cond_5
    monitor-exit v0

    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    throw p0
.end method

.method public final registerUpdateMonitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-boolean v0, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    .line 35
    .line 36
    return-void
.end method

.method public final resetConfigs()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "resetConfig mIsDynamicLockData: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PluginLockMediatorImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setScreenOrientation(ZZ)V

    .line 43
    .line 44
    .line 45
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->updateOverlayUserTimeout(Z)V

    .line 50
    .line 51
    .line 52
    :cond_2
    move v0, v1

    .line 53
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 54
    .line 55
    check-cast v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-ge v0, v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-interface {v2, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onViewModeChanged(I)V

    .line 80
    .line 81
    .line 82
    iget-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 83
    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    invoke-interface {v2, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V

    .line 87
    .line 88
    .line 89
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 94
    .line 95
    return-void
.end method

.method public final resetDynamicLock()V
    .locals 3

    .line 1
    const-string v0, "PluginLockMediatorImpl"

    .line 2
    .line 3
    const-string/jumbo v1, "resetDynamicLock"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v0, v2, :cond_1

    .line 20
    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->resetDynamicLock()V

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final resetDynamicLockData(Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 3
    .line 4
    const-string/jumbo v0, "resetDynamicLockData() reconnectReq: "

    .line 5
    .line 6
    .line 7
    const-string v1, "PluginLockMediatorImpl"

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    const/4 v3, -0x2

    .line 17
    const-string/jumbo v4, "reset() state: "

    .line 18
    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    const-string/jumbo v6, "reset()"

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    const-string v7, "PluginLockNotification"

    .line 27
    .line 28
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string/jumbo v8, "unregisterCallback()"

    .line 32
    .line 33
    .line 34
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iput v5, v0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 38
    .line 39
    iput v5, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 40
    .line 41
    iput-wide v1, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 42
    .line 43
    iget-object v8, v0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    iget-object v9, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 46
    .line 47
    invoke-virtual {v9, v8}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 48
    .line 49
    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    invoke-static {v4, v8, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eq v8, v5, :cond_4

    .line 60
    .line 61
    if-eq v8, v3, :cond_4

    .line 62
    .line 63
    iget-object v7, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 64
    .line 65
    if-nez v7, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupVisibility()Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    move v7, v5

    .line 84
    :goto_1
    iget-object v8, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 85
    .line 86
    if-nez v8, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    if-eqz v8, :cond_3

    .line 94
    .line 95
    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupType()Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    :goto_2
    move v8, v5

    .line 105
    :goto_3
    invoke-virtual {v0, v7}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v0, v5, v5}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    const-string v0, "PluginLockSecure"

    .line 119
    .line 120
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 124
    .line 125
    if-eqz v0, :cond_b

    .line 126
    .line 127
    const-string/jumbo v7, "reset() reconnectReq: "

    .line 128
    .line 129
    .line 130
    const-string v8, "PluginLockShortcut"

    .line 131
    .line 132
    invoke-static {v7, p1, v8}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iput v5, v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 136
    .line 137
    const-string/jumbo v7, "unregisterCallback() "

    .line 138
    .line 139
    .line 140
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iput v5, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 144
    .line 145
    iput-wide v1, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 152
    .line 153
    .line 154
    if-nez p1, :cond_a

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {v4, v1, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    if-eq v1, v5, :cond_9

    .line 164
    .line 165
    if-eq v1, v3, :cond_9

    .line 166
    .line 167
    iget-object v1, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 168
    .line 169
    if-nez v1, :cond_7

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutBackupValue()Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    :goto_4
    move v1, v5

    .line 188
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string/jumbo v3, "reset() original: "

    .line 191
    .line 192
    .line 193
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-virtual {v0, v5}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    .line 210
    .line 211
    .line 212
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcurManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 215
    .line 216
    .line 217
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 218
    .line 219
    const/4 v1, 0x0

    .line 220
    if-eqz v0, :cond_c

    .line 221
    .line 222
    const-string v2, "PluginLockStatusBar"

    .line 223
    .line 224
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 228
    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;->onVisibilityUpdated(II)V

    .line 232
    .line 233
    .line 234
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 235
    .line 236
    if-eqz v0, :cond_d

    .line 237
    .line 238
    const-string v2, "PluginLockSwipe"

    .line 239
    .line 240
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    iput v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    .line 244
    .line 245
    const/16 v2, 0x2d

    .line 246
    .line 247
    iput v2, v0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    .line 248
    .line 249
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 250
    .line 251
    if-eqz v0, :cond_10

    .line 252
    .line 253
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 254
    .line 255
    if-eqz v2, :cond_f

    .line 256
    .line 257
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_LSM:Z

    .line 258
    .line 259
    if-eqz v2, :cond_f

    .line 260
    .line 261
    if-eqz p1, :cond_e

    .line 262
    .line 263
    const/4 v2, 0x1

    .line 264
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->resetAll()V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_f
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 273
    .line 274
    .line 275
    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 276
    .line 277
    if-eqz v0, :cond_11

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    .line 280
    .line 281
    .line 282
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 283
    .line 284
    if-eqz p1, :cond_12

    .line 285
    .line 286
    iput v5, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    .line 287
    .line 288
    iput v5, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    .line 289
    .line 290
    iput v5, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    .line 291
    .line 292
    iput v1, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    .line 293
    .line 294
    iput v5, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    .line 295
    .line 296
    iput v5, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    .line 297
    .line 298
    iput v5, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    .line 299
    .line 300
    iput v1, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    .line 301
    .line 302
    const/16 v0, 0x11

    .line 303
    .line 304
    iput v0, p1, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    .line 307
    .line 308
    .line 309
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 310
    .line 311
    if-eqz p1, :cond_13

    .line 312
    .line 313
    const-string p1, "PluginLockLockIcon"

    .line 314
    .line 315
    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    :cond_13
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 319
    .line 320
    check-cast p1, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-ge v1, v0, :cond_15

    .line 327
    .line 328
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 333
    .line 334
    if-eqz p1, :cond_14

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 341
    .line 342
    if-eqz p1, :cond_14

    .line 343
    .line 344
    invoke-interface {p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onPluginLockReset()V

    .line 345
    .line 346
    .line 347
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_15
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setEnabled: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v2, "PluginLockMediatorImpl"

    .line 28
    .line 29
    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    .line 33
    .line 34
    return-void
.end method

.method public final setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setInstanceState, screen: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v2, ", state: "

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "PluginLockMediatorImpl"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 40
    .line 41
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 42
    .line 43
    move-object v3, v0

    .line 44
    move-object v5, p2

    .line 45
    move-object v8, p0

    .line 46
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 50
    .line 51
    iput-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 54
    .line 55
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 66
    .line 67
    invoke-direct {v0, v4, p2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 71
    .line 72
    iput-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 75
    .line 76
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 79
    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 83
    .line 84
    invoke-direct {v0, v4, p2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 90
    .line 91
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 98
    .line 99
    invoke-direct {v0, v4, p2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 105
    .line 106
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 109
    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 113
    .line 114
    invoke-direct {v0, v4, p2, v3, p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 118
    .line 119
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 120
    .line 121
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 124
    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 128
    .line 129
    invoke-direct {v0, v4, p2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 133
    .line 134
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 135
    .line 136
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 139
    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 143
    .line 144
    invoke-direct {v0, v4, p2, v3, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 148
    .line 149
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 150
    .line 151
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 154
    .line 155
    if-nez v0, :cond_7

    .line 156
    .line 157
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 158
    .line 159
    invoke-direct {v0, v4, p2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 160
    .line 161
    .line 162
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 163
    .line 164
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 165
    .line 166
    iput-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 167
    .line 168
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 169
    .line 170
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 173
    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 177
    .line 178
    invoke-direct {v0, v4, p2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 182
    .line 183
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 184
    .line 185
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 188
    .line 189
    iput-object p2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v1, ", instanceState: "

    .line 200
    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v2, "PluginLockWallpaper"

    .line 212
    .line 213
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    if-nez p2, :cond_b

    .line 217
    .line 218
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 219
    .line 220
    if-nez v1, :cond_9

    .line 221
    .line 222
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 223
    .line 224
    if-eqz v1, :cond_a

    .line 225
    .line 226
    :cond_9
    const/4 v1, 0x1

    .line 227
    if-ne p1, v1, :cond_a

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_a
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_b

    .line 235
    .line 236
    const/4 p1, 0x0

    .line 237
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 238
    .line 239
    .line 240
    :cond_b
    :goto_0
    if-eqz p2, :cond_c

    .line 241
    .line 242
    iget-object p1, p2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_c
    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    .line 249
    .line 250
    :goto_1
    return-void
.end method

.method public final setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V
    .locals 4

    .line 1
    const-string v0, "PluginLockMediatorImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "setKeyguardUserSwitchListener: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 28
    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ge v2, v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 38
    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-ne v1, p1, :cond_0

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast p0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setPluginLock() "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "PluginLockMediatorImpl"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    move-object v1, p0

    .line 32
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v0, v1, :cond_1

    .line 39
    .line 40
    move-object v1, p0

    .line 41
    check-cast v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-interface {v1, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public final setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move/from16 v3, p3

    .line 5
    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 11
    .line 12
    const/4 v7, -0x2

    .line 13
    const-string v8, ", screen: "

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const-string v10, "PluginLockMediatorImpl"

    .line 17
    .line 18
    const/4 v11, 0x1

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 22
    .line 23
    if-eqz v6, :cond_4

    .line 24
    .line 25
    :cond_0
    if-ne v1, v11, :cond_4

    .line 26
    .line 27
    if-eq v2, v7, :cond_1

    .line 28
    .line 29
    const/16 v6, 0xa

    .line 30
    .line 31
    if-lt v2, v6, :cond_4

    .line 32
    .line 33
    :cond_1
    const-string/jumbo v6, "setPluginWallpaper() Home, type: "

    .line 34
    .line 35
    .line 36
    invoke-static {v6, p2, v8, p1, v10}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-boolean v1, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    const-string/jumbo v0, "setPluginWallpaper() cover is not attached"

    .line 48
    .line 49
    .line 50
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const/16 v1, 0x14

    .line 55
    .line 56
    if-lt v2, v1, :cond_3

    .line 57
    .line 58
    move v1, v11

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v1, v9

    .line 61
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 62
    .line 63
    if-eqz v0, :cond_20

    .line 64
    .line 65
    move v2, p2

    .line 66
    move/from16 v3, p3

    .line 67
    .line 68
    move-object/from16 v4, p4

    .line 69
    .line 70
    move-object/from16 v5, p5

    .line 71
    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_d

    .line 76
    .line 77
    :cond_4
    const-string/jumbo v6, "setPluginWallpaper() Lock, type: "

    .line 78
    .line 79
    .line 80
    invoke-static {v6, p2, v8, p1, v10}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 84
    .line 85
    iget-object v6, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    const/4 v1, -0x3

    .line 90
    if-ne v2, v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->resetAll()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_d

    .line 96
    .line 97
    :cond_5
    if-ne v2, v7, :cond_6

    .line 98
    .line 99
    invoke-virtual {v6, v9}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_d

    .line 103
    .line 104
    :cond_6
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v8, "update() wallpaperType:"

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v8, ", sourceType:"

    .line 121
    .line 122
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v8, ", source:"

    .line 129
    .line 130
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v8, ", screenType:"

    .line 137
    .line 138
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    sget v8, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 142
    .line 143
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v8, ", iCrops = "

    .line 147
    .line 148
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v8, "PluginLockWallpaper"

    .line 159
    .line 160
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    const/4 v1, -0x1

    .line 164
    iput v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 165
    .line 166
    iget-object v10, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 167
    .line 168
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    check-cast v10, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    check-cast v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 179
    .line 180
    iget v12, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 181
    .line 182
    if-eq v12, v7, :cond_8

    .line 183
    .line 184
    iget-object v7, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 185
    .line 186
    if-nez v7, :cond_7

    .line 187
    .line 188
    iget-object v7, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 189
    .line 190
    if-nez v7, :cond_7

    .line 191
    .line 192
    iget-object v7, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 193
    .line 194
    if-eqz v7, :cond_8

    .line 195
    .line 196
    :cond_7
    move v7, v11

    .line 197
    goto :goto_1

    .line 198
    :cond_8
    move v7, v9

    .line 199
    :goto_1
    iput-boolean v7, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 200
    .line 201
    iput v2, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 202
    .line 203
    invoke-virtual {v6, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    .line 204
    .line 205
    .line 206
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mIntelligentCrop:Ljava/lang/String;

    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    if-eqz v3, :cond_11

    .line 210
    .line 211
    if-eq v3, v11, :cond_d

    .line 212
    .line 213
    const/4 v0, 0x2

    .line 214
    if-eq v3, v0, :cond_a

    .line 215
    .line 216
    invoke-virtual {v10}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_9

    .line 224
    .line 225
    iget-object v0, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 226
    .line 227
    if-eqz v0, :cond_e

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-eqz v0, :cond_e

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType()V

    .line 239
    .line 240
    .line 241
    iget-object v0, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_9
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 248
    .line 249
    iget-object v3, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 250
    .line 251
    if-eqz v3, :cond_e

    .line 252
    .line 253
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-eqz v3, :cond_e

    .line 258
    .line 259
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_a
    iget-object v0, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 272
    .line 273
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    if-eqz v0, :cond_c

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_b

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_b
    move v0, v9

    .line 287
    goto :goto_3

    .line 288
    :cond_c
    :goto_2
    move v0, v11

    .line 289
    :goto_3
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 290
    .line 291
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 292
    .line 293
    iput-object v1, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_d
    :try_start_0
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 297
    .line 298
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 299
    .line 300
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 301
    .line 302
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    iget v3, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    .line 307
    .line 308
    if-ne v3, v1, :cond_f

    .line 309
    .line 310
    iget-object v3, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    .line 312
    if-nez v3, :cond_e

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_e
    :goto_4
    move v0, v9

    .line 316
    goto :goto_9

    .line 317
    :cond_f
    :goto_5
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getBitmap(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 326
    .line 327
    iput-object v0, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 328
    .line 329
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 330
    .line 331
    if-nez v0, :cond_10

    .line 332
    .line 333
    iput v9, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    .line 334
    .line 335
    :cond_10
    iput v1, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    .line 337
    move v0, v11

    .line 338
    goto :goto_9

    .line 339
    :catch_0
    move-exception v0

    .line 340
    move v1, v11

    .line 341
    goto :goto_6

    .line 342
    :catch_1
    move-exception v0

    .line 343
    move v1, v9

    .line 344
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v4, "couldn\'t load bitmap:"

    .line 347
    .line 348
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-static {v0, v3, v8}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    move v0, v1

    .line 355
    goto :goto_9

    .line 356
    :cond_11
    iget-object v0, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 357
    .line 358
    if-eqz v0, :cond_13

    .line 359
    .line 360
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_12

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_12
    move v0, v9

    .line 368
    goto :goto_8

    .line 369
    :cond_13
    :goto_7
    move v0, v11

    .line 370
    :goto_8
    iput-object v4, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 371
    .line 372
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 373
    .line 374
    iput-object v5, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 375
    .line 376
    :goto_9
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_14

    .line 381
    .line 382
    iget-object v1, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 383
    .line 384
    if-eqz v1, :cond_15

    .line 385
    .line 386
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    if-eqz v1, :cond_15

    .line 391
    .line 392
    invoke-virtual {v1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 396
    .line 397
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 398
    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_14
    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 402
    .line 403
    iget-object v3, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 404
    .line 405
    if-eqz v3, :cond_15

    .line 406
    .line 407
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    if-eqz v3, :cond_15

    .line 412
    .line 413
    invoke-virtual {v3, v1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(II)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v6, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 417
    .line 418
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 419
    .line 420
    .line 421
    :cond_15
    :goto_a
    iget-object v1, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 422
    .line 423
    if-nez v1, :cond_16

    .line 424
    .line 425
    iget-object v1, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 426
    .line 427
    if-nez v1, :cond_16

    .line 428
    .line 429
    iget-object v1, v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 430
    .line 431
    if-eqz v1, :cond_1c

    .line 432
    .line 433
    :cond_16
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    invoke-virtual {v6, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_18

    .line 442
    .line 443
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-eqz v1, :cond_17

    .line 448
    .line 449
    invoke-virtual {v6, v9}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v6, v11}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v6, v9}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6, v11}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    .line 459
    .line 460
    .line 461
    goto :goto_c

    .line 462
    :cond_17
    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 463
    .line 464
    invoke-virtual {v6, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType(I)V

    .line 465
    .line 466
    .line 467
    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 468
    .line 469
    invoke-virtual {v6, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    .line 470
    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_18
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {v6, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-nez v1, :cond_1a

    .line 482
    .line 483
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    invoke-virtual {v6, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_19

    .line 492
    .line 493
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    invoke-virtual {v6, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-nez v1, :cond_19

    .line 502
    .line 503
    move v1, v11

    .line 504
    goto :goto_b

    .line 505
    :cond_19
    move v1, v9

    .line 506
    :goto_b
    if-eqz v1, :cond_1c

    .line 507
    .line 508
    :cond_1a
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-eqz v1, :cond_1b

    .line 513
    .line 514
    invoke-virtual {v6, v9}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v6, v11}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    .line 518
    .line 519
    .line 520
    goto :goto_c

    .line 521
    :cond_1b
    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 522
    .line 523
    invoke-virtual {v6, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    .line 524
    .line 525
    .line 526
    :cond_1c
    :goto_c
    iget-object v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 527
    .line 528
    if-eqz v1, :cond_1e

    .line 529
    .line 530
    sget-boolean v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 531
    .line 532
    if-eqz v1, :cond_1d

    .line 533
    .line 534
    iget-boolean v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 535
    .line 536
    if-eqz v1, :cond_1d

    .line 537
    .line 538
    if-eqz v0, :cond_1e

    .line 539
    .line 540
    :cond_1d
    const-string/jumbo v0, "update() onWallpaperUpdate will be called"

    .line 541
    .line 542
    .line 543
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    iget-object v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 547
    .line 548
    invoke-interface {v0, v9}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    .line 549
    .line 550
    .line 551
    :cond_1e
    sget-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 552
    .line 553
    if-eqz v0, :cond_1f

    .line 554
    .line 555
    sput-boolean v9, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 556
    .line 557
    iput-boolean v11, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 558
    .line 559
    goto :goto_d

    .line 560
    :cond_1f
    iput-boolean v9, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 561
    .line 562
    :cond_20
    :goto_d
    return-void
.end method

.method public final setPluginWallpaperHint(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    const-string/jumbo v2, "white"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroid/app/SemWallpaperColors$Builder;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v2, "black"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    new-instance p1, Landroid/app/SemWallpaperColors$Builder;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v2, ""

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    invoke-static {p1}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperType(I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/16 v4, 0xa

    .line 77
    .line 78
    if-le v3, v4, :cond_4

    .line 79
    .line 80
    move v0, v1

    .line 81
    :cond_4
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    .line 87
    .line 88
    if-ne v0, v1, :cond_7

    .line 89
    .line 90
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    .line 95
    .line 96
    if-nez p0, :cond_5

    .line 97
    .line 98
    const-string p0, "PluginLockMediatorImpl"

    .line 99
    .line 100
    const-string/jumbo p1, "setPluginWallpaperHint() cover is not attached"

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    iget-object p0, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 108
    .line 109
    sget v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    .line 110
    .line 111
    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-object v1, p0

    .line 120
    check-cast v1, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    iput-object p1, v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 131
    .line 132
    :cond_6
    iget-object p1, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 133
    .line 134
    if-eqz p1, :cond_9

    .line 135
    .line 136
    sget p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    .line 137
    .line 138
    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string/jumbo v1, "updateHint() onWallpaperHintUpdate will be called: "

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "PluginHomeWallpaper"

    .line 158
    .line 159
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p0, Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 173
    .line 174
    if-eqz p0, :cond_9

    .line 175
    .line 176
    iget-object p1, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 179
    .line 180
    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 185
    .line 186
    iget-object v2, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    check-cast v2, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 199
    .line 200
    iput-object p1, v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    .line 203
    .line 204
    .line 205
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 206
    .line 207
    if-ne v0, v1, :cond_9

    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 210
    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-ne v0, v1, :cond_8

    .line 222
    .line 223
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->onViewModePageChanged(Landroid/app/SemWallpaperColors;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 230
    .line 231
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;

    .line 232
    .line 233
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Landroid/app/SemWallpaperColors;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    .line 238
    .line 239
    :cond_9
    :goto_1
    return-void
.end method

.method public final setScreenOrientation(ZZ)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setScreenOrientation noSensor: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", hideMenu : "

    .line 5
    .line 6
    const-string v2, "PluginLockMediatorImpl"

    .line 7
    .line 8
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string/jumbo p0, "setScreenOrientation ignore, video wallpaper"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string/jumbo p0, "setScreenOrientation ignore, tablet"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 54
    .line 55
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne p2, v0, :cond_3

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 68
    .line 69
    invoke-static {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->access$setScreenOrientation(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method public final updateDynamicLockData(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "PluginLockHelpText"

    .line 2
    .line 3
    const-string v1, "apply()"

    .line 4
    .line 5
    const-string v2, "PluginLockSecure"

    .line 6
    .line 7
    const-string/jumbo v3, "update()"

    .line 8
    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 11
    .line 12
    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v7, "PluginLockMediatorImpl"

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    :cond_0
    sget v5, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    if-ne v5, v8, :cond_1

    .line 27
    .line 28
    const-string/jumbo p0, "updateDynamicLockData skip"

    .line 29
    .line 30
    .line 31
    new-array p1, v6, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v7, p0, p1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string/jumbo v5, "updateDynamicLockData dynamicLockData: "

    .line 38
    .line 39
    .line 40
    invoke-static {v5, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-array v8, v6, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v7, v5, v8}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    .line 50
    .line 51
    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    .line 53
    .line 54
    const-class v8, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 55
    .line 56
    invoke-virtual {v5, v8, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v5

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v9, "[parse, update] "

    .line 67
    .line 68
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v4, v7, v8}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string/jumbo v9, "updateDynamicLockData() currData:"

    .line 92
    .line 93
    .line 94
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 98
    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v9, ", newData:"

    .line 103
    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    if-eqz v5, :cond_7

    .line 118
    .line 119
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 120
    .line 121
    iget-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const-string v10, "PluginLockSwipe"

    .line 127
    .line 128
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v9, v5}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 132
    .line 133
    .line 134
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 135
    .line 136
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getCaptureData()Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/CaptureData;->getType()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 157
    .line 158
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    const-string v2, "PluginLockWallpaper"

    .line 164
    .line 165
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    if-eqz v8, :cond_2

    .line 169
    .line 170
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v2, v8}, Lcom/android/systemui/pluginlock/model/WallpaperData;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_3

    .line 183
    .line 184
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getRecoverType()Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    const-string v0, "PluginLockLockIcon"

    .line 223
    .line 224
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catchall_1
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v2, "[basic, update] "

    .line 232
    .line 233
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v4, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    .line 252
    .line 253
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 254
    .line 255
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 256
    .line 257
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :catchall_2
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v2, "[clock, update] "

    .line 265
    .line 266
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v4, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    .line 285
    .line 286
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 287
    .line 288
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 289
    .line 290
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :catchall_3
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v2, "[music, update] "

    .line 298
    .line 299
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v4, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 320
    .line 321
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 322
    .line 323
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :catchall_4
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v2, "[notification, update] "

    .line 331
    .line 332
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v4, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    .line 351
    .line 352
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    const-string v1, "PluginLockStatusBar"

    .line 358
    .line 359
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isStatusBarIconVisible()Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isStatusBarNetworkVisible()Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    iget-object v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 371
    .line 372
    if-eqz v0, :cond_6

    .line 373
    .line 374
    const/4 v3, 0x4

    .line 375
    if-eqz v1, :cond_4

    .line 376
    .line 377
    move v1, v6

    .line 378
    goto :goto_5

    .line 379
    :cond_4
    move v1, v3

    .line 380
    :goto_5
    if-eqz v2, :cond_5

    .line 381
    .line 382
    move v3, v6

    .line 383
    :cond_5
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;->onVisibilityUpdated(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 384
    .line 385
    .line 386
    goto :goto_6

    .line 387
    :catchall_5
    move-exception v0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v2, "[statusbar, update] "

    .line 391
    .line 392
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v4, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    .line 411
    .line 412
    :cond_6
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 413
    .line 414
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 415
    .line 416
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 417
    .line 418
    .line 419
    goto :goto_7

    .line 420
    :catchall_6
    move-exception v0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v2, "[shortcut, update] "

    .line 424
    .line 425
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v4, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    .line 444
    .line 445
    :goto_7
    iput-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 446
    .line 447
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 452
    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->publishLockStarState()V

    .line 454
    .line 455
    .line 456
    :cond_7
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 457
    .line 458
    check-cast v0, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-ge v6, v1, :cond_9

    .line 465
    .line 466
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 471
    .line 472
    if-eqz v0, :cond_8

    .line 473
    .line 474
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 479
    .line 480
    if-eqz v0, :cond_8

    .line 481
    .line 482
    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->updateDynamicLockData(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 486
    .line 487
    goto :goto_8

    .line 488
    :cond_9
    return-void
.end method

.method public final updateWindowSecureState(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "updateWindowSecureState() : "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginLockMediatorImpl"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->securedWindow:Z

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
