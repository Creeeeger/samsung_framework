.class public final Lcom/android/systemui/wallpaper/tilt/TiltColorController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field public mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

.field public final mAnimateHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;

.field public mColorFilter:Landroid/graphics/ColorFilter;

.field public mColorMatrix:Landroid/graphics/ColorMatrix;

.field public final mContext:Landroid/content/Context;

.field public final mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

.field public mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

.field public final mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

.field public final mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;

.field public final mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field public mHueLimit:F

.field public final mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsEnable:Z

.field public mIsGyroAllowed:Z

.field public mMaxRotation:F

.field public mNeedUpdateColorFilter:Z

.field public mPaint:Landroid/graphics/Paint;

.field public mPrevState:Z

.field public final mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field public final mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field public final mTiltHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

.field public final mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field public mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

.field public mTotalRotation:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const v3, 0x3e2e147b    # 0.17f

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/Drawer;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevState:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 26
    .line 27
    const/high16 v2, -0x3e100000    # -30.0f

    .line 28
    .line 29
    const-string v3, "hue"

    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 35
    .line 36
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 37
    .line 38
    const v2, 0x3f99999a    # 1.2f

    .line 39
    .line 40
    .line 41
    const-string/jumbo v3, "saturation"

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 48
    .line 49
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    const-string v3, "alpha"

    .line 53
    .line 54
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 58
    .line 59
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 60
    .line 61
    const v3, 0x3f8ccccd    # 1.1f

    .line 62
    .line 63
    .line 64
    const-string/jumbo v4, "scale"

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 71
    .line 72
    const/high16 v1, 0x41f00000    # 30.0f

    .line 73
    .line 74
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    .line 75
    .line 76
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 84
    .line 85
    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 86
    .line 87
    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 88
    .line 89
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 90
    .line 91
    invoke-direct {v0, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(F)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 95
    .line 96
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

    .line 97
    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

    .line 106
    .line 107
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

    .line 117
    .line 118
    new-instance p2, Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 119
    .line 120
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;)V

    .line 121
    .line 122
    .line 123
    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 124
    .line 125
    new-instance p1, Landroid/graphics/Paint;

    .line 126
    .line 127
    const/4 p2, 0x1

    .line 128
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    .line 132
    .line 133
    new-instance p1, Landroid/graphics/ColorMatrix;

    .line 134
    .line 135
    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    .line 141
    .line 142
    .line 143
    return-void
.end method


# virtual methods
.method public final refreshTiltSettings()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isEnableTilt(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "dymlock_suspend_multiwallpaper_switching"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v4

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    move v4, v3

    .line 29
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setEnable(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v3, "lockscreen_wallpaper_tilt_effect_hue_limit"

    .line 37
    .line 38
    const/16 v4, 0x1e

    .line 39
    .line 40
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    const/high16 v3, 0x43340000    # 180.0f

    .line 46
    .line 47
    cmpl-float v4, v0, v3

    .line 48
    .line 49
    const-string v5, "TiltColorController"

    .line 50
    .line 51
    if-lez v4, :cond_2

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo v6, "setHueLimit: too big."

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ". set to 180.0"

    .line 65
    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move v0, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v3, 0x0

    .line 79
    cmpg-float v3, v0, v3

    .line 80
    .line 81
    if-gez v3, :cond_3

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo v4, "setHueLimit: too small."

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ". set to 30.0"

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    const/high16 v0, 0x41f00000    # 30.0f

    .line 107
    .line 108
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v4, "setHueLimit: "

    .line 111
    .line 112
    .line 113
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo v3, "refreshTiltSettings: "

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 137
    .line 138
    const-string v4, " isTiltEnabled: "

    .line 139
    .line 140
    const-string v6, " isSuspendByDynamicLockScreen: "

    .line 141
    .line 142
    invoke-static {v0, v3, v4, v1, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, " hueLimit:"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final requestDraw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    check-cast p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final setEnable(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setEnable: "

    .line 2
    .line 3
    .line 4
    const-string v1, " isGyroAllowed"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 11
    .line 12
    const-string v2, "TiltColorController"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 27
    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    iget-boolean p0, v1, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "GyroDetector"

    .line 36
    .line 37
    const-string p1, "Sensor resumed."

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iput-boolean v0, v1, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 43
    .line 44
    iget-object p0, v1, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 45
    .line 46
    iget-object p1, v1, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;

    .line 47
    .line 48
    iget-object v0, v1, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensor:Landroid/hardware/Sensor;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 59
    .line 60
    iget v2, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    cmpl-float v2, v2, v3

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iput v3, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 70
    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    .line 73
    .line 74
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 75
    .line 76
    iget v2, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 77
    .line 78
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    .line 80
    cmpl-float v2, v2, v4

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    iput v4, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 85
    .line 86
    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 87
    .line 88
    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    .line 90
    .line 91
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 92
    .line 93
    iput v4, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 99
    .line 100
    iput v3, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 106
    .line 107
    iput v4, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 108
    .line 109
    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    .line 117
    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_0
    return-void
.end method

.method public final setTiltSettingObserver(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Handler;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "lockscreen_wallpaper_tilt_effect"

    .line 31
    .line 32
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "lockscreen_wallpaper_tilt_effect_hue_limit"

    .line 49
    .line 50
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "dymlock_suspend_multiwallpaper_switching"

    .line 66
    .line 67
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    .line 101
    .line 102
    :cond_1
    :goto_0
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p1
.end method

.method public final startAlphaAnimation(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 13
    .line 14
    sget-object v2, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "TiltColorController_Alpha"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 39
    .line 40
    iput-object v0, v2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 41
    .line 42
    iput-object v0, v2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-boolean v2, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    .line 53
    .line 54
    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v2, "startAlphaAnimation: "

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " / 350"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "TiltColorController"

    .line 76
    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 84
    .line 85
    const-wide/16 v0, 0x15e

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->start()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final startEnterAnimation(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimationInner(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iput p1, p0, Landroid/os/Message;->what:I

    .line 35
    .line 36
    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final startEnterAnimationInner(Z)V
    .locals 8

    .line 1
    const-string v0, "TiltColorController"

    .line 2
    .line 3
    const-string/jumbo v1, "startEnterAnimation: "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string/jumbo v1, "startEnterAnimation: create"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 33
    .line 34
    sget-object v6, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    .line 44
    .line 45
    .line 46
    const-string v6, "TiltColorController_Enter"

    .line 47
    .line 48
    invoke-virtual {v1, v6}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v6, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 52
    .line 53
    iput-object v1, v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 54
    .line 55
    iput-object v1, v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 56
    .line 57
    iget-object v1, v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 78
    .line 79
    const-wide/16 v6, 0x3e8

    .line 80
    .line 81
    invoke-virtual {p1, v6, v7}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 85
    .line 86
    .line 87
    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    .line 89
    invoke-virtual {v4, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startAlphaAnimation(F)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 103
    .line 104
    const-wide/16 v6, 0x15e

    .line 105
    .line 106
    invoke-virtual {p1, v6, v7}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    .line 107
    .line 108
    .line 109
    const/high16 p1, -0x3e100000    # -30.0f

    .line 110
    .line 111
    invoke-virtual {v5, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 112
    .line 113
    .line 114
    const p1, 0x3f99999a    # 1.2f

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 118
    .line 119
    .line 120
    const p1, 0x3f8ccccd    # 1.1f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startAlphaAnimation(F)V

    .line 130
    .line 131
    .line 132
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->start()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    .line 138
    .line 139
    .line 140
    const-string/jumbo p0, "startEnterAnimation: done"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final stopAllAnimations()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method
