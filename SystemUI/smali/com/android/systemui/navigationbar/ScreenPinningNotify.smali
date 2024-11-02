.class public final Lcom/android/systemui/navigationbar/ScreenPinningNotify;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastShowToastTime:J

.field public mLastToast:Landroid/widget/Toast;

.field public mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final showEscapeToast(ZZ)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x3e8

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    const-string p0, "ScreenPinningNotify"

    .line 16
    .line 17
    const-string p1, "Ignore toast since it is requested in very short interval."

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string v2, "accessibility"

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    move v2, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v2, v5

    .line 59
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mTouchExplorationEnabled:Z

    .line 60
    .line 61
    sget-boolean v2, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 72
    .line 73
    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    move v5, v4

    .line 78
    :cond_3
    if-eqz p1, :cond_5

    .line 79
    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    const p1, 0x7f130f88

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const p1, 0x7f130f87

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    if-eqz p2, :cond_8

    .line 91
    .line 92
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mTouchExplorationEnabled:Z

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    const p1, 0x7f130f86

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    if-eqz v5, :cond_7

    .line 101
    .line 102
    const p1, 0x7f130f89

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    const p1, 0x7f130f85

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_8
    const p1, 0x7f130e80

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-static {p1, v3, v4}, Lcom/android/systemui/SysUIToast;->makeText(ILandroid/content/Context;I)Landroid/widget/Toast;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    .line 121
    .line 122
    iput-wide v0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    .line 123
    .line 124
    return-void
.end method
