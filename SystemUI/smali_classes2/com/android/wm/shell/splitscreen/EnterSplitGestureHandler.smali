.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAtm:Landroid/app/IActivityTaskManager;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayDeviceType:I

.field public final mDisplayId:I

.field public final mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

.field public final mGestureExclusionListener:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

.field public final mHandler:Landroid/os/Handler;

.field public mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsA11yButtonEnabled:Z

.field public mIsCommonEnabled:Z

.field public mIsDeviceProvisioned:Z

.field public mIsEnabled:Z

.field public mIsLockTaskMode:Z

.field public mIsSettingEnabled:Z

.field public mIsStandAlone:Z

.field public mIsSupportSplitScreen:Z

.field public mIsSystemUiStateValid:Z

.field public mIsTalkbackEnabled:Z

.field public mIsUserSetupComplete:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mNavMode:I

.field public mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    sput-boolean v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    .line 14
    .line 15
    const-string v0, "EnterSplitGestureHandler"

    .line 16
    .line 17
    sput-object v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/view/IWindowManager;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/view/IWindowManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureExclusionListener:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayDeviceType:I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    iput p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayId:I

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 34
    .line 35
    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 36
    .line 37
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mSplitScreenController:Ljava/util/Optional;

    .line 38
    .line 39
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mAtm:Landroid/app/IActivityTaskManager;

    .line 44
    .line 45
    new-instance p3, Landroid/view/TwoFingerSwipeGestureDetector;

    .line 46
    .line 47
    new-instance p4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    invoke-direct {p4, p0}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    .line 50
    .line 51
    .line 52
    const-string p5, "EnterSplit"

    .line 53
    .line 54
    invoke-direct {p3, p1, p4, p5}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 58
    .line 59
    new-instance p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final getTalkbackComponent()Landroid/content/ComponentName;
    .locals 4

    .line 1
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "TalkBack"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    new-instance p0, Landroid/content/ComponentName;

    .line 58
    .line 59
    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_1
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public final updateEnableState(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "updateEnableState caller="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    move p1, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move p1, v3

    .line 35
    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSupportSplitScreen:Z

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    move v2, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v2, v3

    .line 66
    :goto_1
    if-nez p1, :cond_3

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    move v3, v4

    .line 71
    :cond_3
    if-eqz v1, :cond_4

    .line 72
    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v5, "updateEnableState state.\n  mIsSupportSplitScreen = "

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSupportSplitScreen:Z

    .line 82
    .line 83
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, "\n  mIsSettingEnabled = "

    .line 87
    .line 88
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    .line 92
    .line 93
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, "\n  mIsStandAlone(need false) = "

    .line 97
    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    .line 102
    .line 103
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v5, "\n  mNavMode(need 0) = "

    .line 107
    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    .line 112
    .line 113
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v5, "\n  mIsDeviceProvisioned = "

    .line 117
    .line 118
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    .line 122
    .line 123
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v5, "\n  mIsUserSetupComplete = "

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    .line 132
    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, "\n  mIsLockTaskMode = "

    .line 137
    .line 138
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z

    .line 142
    .line 143
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v5, "\n  mIsSystemUIStateOk = "

    .line 147
    .line 148
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    .line 152
    .line 153
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v5, "\n  isEnabled = "

    .line 157
    .line 158
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsCommonEnabled:Z

    .line 172
    .line 173
    if-eq p1, v2, :cond_5

    .line 174
    .line 175
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsCommonEnabled:Z

    .line 176
    .line 177
    new-instance p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda2;

    .line 178
    .line 179
    invoke-direct {p1, v2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mSplitScreenController:Ljava/util/Optional;

    .line 183
    .line 184
    invoke-virtual {v2, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsEnabled:Z

    .line 188
    .line 189
    if-ne v3, p1, :cond_7

    .line 190
    .line 191
    if-eqz v1, :cond_6

    .line 192
    .line 193
    const-string p0, "enabled same in past."

    .line 194
    .line 195
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_6
    return-void

    .line 199
    :cond_7
    iget p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayId:I

    .line 200
    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    const-string/jumbo p0, "updateEnableState. now default display is supported."

    .line 204
    .line 205
    .line 206
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_8
    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsEnabled:Z

    .line 211
    .line 212
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureExclusionListener:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    .line 213
    .line 214
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 215
    .line 216
    if-eqz v3, :cond_9

    .line 217
    .line 218
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    const-string v5, "enter-split"

    .line 223
    .line 224
    invoke-virtual {v3, v5, p1, v4}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iput-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 229
    .line 230
    :try_start_0
    new-instance v3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 233
    .line 234
    invoke-virtual {v4}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-direct {v3, p0, v4, v5}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 243
    .line 244
    .line 245
    iput-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    .line 247
    :try_start_1
    invoke-interface {v2, v1, p1}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :catch_0
    move-exception p0

    .line 252
    const-string p1, "Failed to register window manager callbacks"

    .line 253
    .line 254
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :catch_1
    move-exception p0

    .line 259
    new-instance p1, Ljava/lang/RuntimeException;

    .line 260
    .line 261
    const-string v0, "Failed to create input event receiver"

    .line 262
    .line 263
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    throw p1

    .line 267
    :cond_9
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

    .line 268
    .line 269
    const/4 v4, 0x0

    .line 270
    if-eqz v3, :cond_a

    .line 271
    .line 272
    invoke-virtual {v3}, Landroid/view/InputEventReceiver;->dispose()V

    .line 273
    .line 274
    .line 275
    iput-object v4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

    .line 276
    .line 277
    :cond_a
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 278
    .line 279
    if-eqz v3, :cond_b

    .line 280
    .line 281
    invoke-virtual {v3}, Landroid/view/InputMonitor;->dispose()V

    .line 282
    .line 283
    .line 284
    iput-object v4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 285
    .line 286
    :cond_b
    :try_start_2
    invoke-interface {v2, v1, p1}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :catch_2
    move-exception p0

    .line 291
    const-string p1, "Failed to unregister window manager callbacks"

    .line 292
    .line 293
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .line 295
    .line 296
    :goto_2
    return-void
.end method
