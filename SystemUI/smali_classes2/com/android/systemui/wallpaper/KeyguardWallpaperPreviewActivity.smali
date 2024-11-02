.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sConfigured:Z = false

.field public static sIsActivityAlive:Z


# instance fields
.field public mBackgroundImageView:Landroid/widget/ImageView;

.field public mBottomContainer:Landroid/view/ViewGroup;

.field public mCapturedImageView:Landroid/widget/ImageView;

.field public mColorInfo:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

.field public mCurrentWhich:I

.field public mDescriptionCount:I

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mPackageName:Ljava/lang/String;

.field public mPreviewArea:Landroid/view/ViewGroup;

.field public mPreviewContainer:Landroid/widget/FrameLayout;

.field public mPreviewRootView:Landroid/widget/FrameLayout;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRootView:Landroid/widget/FrameLayout;

.field public mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

.field public mSetAsWallpaper:Z

.field public mSetAsWallpaperButton:Landroid/widget/Button;

.field public mSettingDescriptionTextView:Landroid/widget/TextView;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;

.field public mWallpaperType:I

.field public mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;


# direct methods
.method public static -$$Nest$minitBackgroundImageView(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    const-string v1, "KeyguardWallpaperPreviewActivity"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "initBackgroundImageView(): wallpaperBitmap is null"

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string v6, "initBackgroundImageView() bw = "

    .line 44
    .line 45
    const-string v7, " , bh = "

    .line 46
    .line 47
    const-string v8, " , vw = "

    .line 48
    .line 49
    invoke-static {v6, v2, v7, v3, v8}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, " , vh = "

    .line 54
    .line 55
    invoke-static {v2, v4, v3, v5, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 71
    .line 72
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    .line 74
    invoke-static {p0, p1, v2, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 79
    .line 80
    const v1, 0x404d4d4d

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v0, "initBackgroundImageView(): viewWidth="

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, ", viewHeight="

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v0, "initBackgroundImageView(): bitmapWidth="

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", bitmapHeight="

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 20
    .line 21
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;

    .line 27
    .line 28
    return-void
.end method

.method public static getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const-string/jumbo v1, "window"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/view/WindowManager;

    .line 19
    .line 20
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Landroid/graphics/Point;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 30
    .line 31
    .line 32
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 33
    .line 34
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move v3, p0

    .line 45
    :goto_1
    if-nez p1, :cond_2

    .line 46
    .line 47
    if-ne v0, v2, :cond_3

    .line 48
    .line 49
    :cond_2
    move p0, v1

    .line 50
    :cond_3
    new-instance p1, Landroid/util/Size;

    .line 51
    .line 52
    invoke-direct {p1, v3, p0}, Landroid/util/Size;-><init>(II)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method


# virtual methods
.method public final dismissProgressDialog()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperPreviewActivity"

    .line 2
    .line 3
    const-string v1, "dismissProgressDialog()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isAnimating()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const v2, 0x7f0102ab

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const v1, 0x7f0102ac

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final isSubDisplay()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
.end method

.method public final loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const-string v0, "loadAnimatedBackgroundBitmap()"

    .line 2
    .line 3
    const-string v1, "KeyguardWallpaperPreviewActivity"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 17
    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "loadAnimatedBackgroundBitmap(): NameNotFoundException mPackageName="

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "drawable"

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, "lockscreen_wallpaper"

    .line 56
    .line 57
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const-string v3, "loadAnimatedBackgroundBitmap: id = "

    .line 62
    .line 63
    const-string v4, " , pkg = "

    .line 64
    .line 65
    invoke-static {v3, v2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    if-lez v2, :cond_0

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_0
    const/4 p0, 0x0

    .line 95
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string v2, "KeyguardWallpaperPreviewActivity"

    .line 7
    .line 8
    const-string v0, "onCreate()"

    .line 9
    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const v5, 0x103012b

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 35
    .line 36
    iget-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-string/jumbo v4, "wallpaper"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/app/WallpaperManager;

    .line 46
    .line 47
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2b

    .line 54
    .line 55
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 56
    .line 57
    if-nez v4, :cond_0

    .line 58
    .line 59
    goto/16 :goto_1a

    .line 60
    .line 61
    :cond_0
    const v4, 0x7f0d0189

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v4, "type"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "locType"

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, "getWallpaperTypeInteger(): type="

    .line 81
    .line 82
    const-string v7, ", locType="

    .line 83
    .line 84
    invoke-static {v6, v4, v7, v5, v2}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v6, "motion"

    .line 88
    .line 89
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/4 v7, -0x1

    .line 94
    const/4 v8, 0x2

    .line 95
    const/4 v9, 0x4

    .line 96
    const-string v10, "download"

    .line 97
    .line 98
    if-nez v6, :cond_2

    .line 99
    .line 100
    const-string v6, "cinematic"

    .line 101
    .line 102
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const-string v6, "animated"

    .line 110
    .line 111
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_4

    .line 122
    .line 123
    move v4, v9

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    :goto_0
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    move v4, v0

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    if-eqz v5, :cond_4

    .line 134
    .line 135
    const-string/jumbo v4, "preload"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    move v4, v8

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move v4, v7

    .line 147
    :goto_1
    iput v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 148
    .line 149
    const-string/jumbo v4, "packageName"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iput-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 157
    .line 158
    const-string v4, "colorInfo"

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const/16 v4, 0x400

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 180
    .line 181
    const/16 v4, 0x300

    .line 182
    .line 183
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 188
    .line 189
    .line 190
    const v3, 0x7f0a08e7

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Landroid/widget/FrameLayout;

    .line 198
    .line 199
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 200
    .line 201
    const v3, 0x7f0a0818

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Landroid/widget/FrameLayout;

    .line 209
    .line 210
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 211
    .line 212
    const v3, 0x7f0a0813

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Landroid/view/ViewGroup;

    .line 220
    .line 221
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 222
    .line 223
    const v3, 0x7f0a0815

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Landroid/widget/FrameLayout;

    .line 231
    .line 232
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 233
    .line 234
    const v3, 0x7f0a0d38

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Landroid/widget/TextView;

    .line 242
    .line 243
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 244
    .line 245
    const v3, 0x7f0a0220

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    check-cast v3, Landroid/widget/ImageView;

    .line 253
    .line 254
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    .line 255
    .line 256
    const v3, 0x7f0a0124

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Landroid/widget/ImageView;

    .line 264
    .line 265
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 266
    .line 267
    const v3, 0x7f0a0126

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Landroid/widget/ImageView;

    .line 275
    .line 276
    const v3, 0x7f0a0125

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    check-cast v3, Landroid/widget/ImageView;

    .line 284
    .line 285
    const v3, 0x7f0a016f

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    check-cast v3, Landroid/view/ViewGroup;

    .line 293
    .line 294
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBottomContainer:Landroid/view/ViewGroup;

    .line 295
    .line 296
    const v3, 0x7f0a0d37

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Landroid/widget/TextView;

    .line 304
    .line 305
    const v3, 0x7f0a0a0d

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Landroid/widget/Button;

    .line 313
    .line 314
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/Button;

    .line 315
    .line 316
    const v3, 0x7f0a0817

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Landroid/widget/ProgressBar;

    .line 324
    .line 325
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 326
    .line 327
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    .line 328
    .line 329
    invoke-direct {v3, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;-><init>(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    iput-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    iput-boolean v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    .line 336
    .line 337
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 338
    .line 339
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    .line 347
    .line 348
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 356
    .line 357
    const/4 v5, 0x3

    .line 358
    if-eqz v4, :cond_a

    .line 359
    .line 360
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 361
    .line 362
    if-nez v6, :cond_a

    .line 363
    .line 364
    iget v6, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 365
    .line 366
    if-eq v6, v0, :cond_7

    .line 367
    .line 368
    if-eq v6, v9, :cond_5

    .line 369
    .line 370
    const-string v6, ""

    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-eqz v6, :cond_6

    .line 378
    .line 379
    const-string v6, "animated_sub_description_count"

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_6
    const-string v6, "animated_main_description_count"

    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-eqz v6, :cond_8

    .line 390
    .line 391
    const-string v6, "motion_sub_description_count"

    .line 392
    .line 393
    goto :goto_2

    .line 394
    :cond_8
    const-string v6, "motion_main_description_count"

    .line 395
    .line 396
    :goto_2
    iget-object v7, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 397
    .line 398
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    invoke-static {v7, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 403
    .line 404
    .line 405
    move-result v10

    .line 406
    iput v10, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 407
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    if-eqz v10, :cond_9

    .line 413
    .line 414
    iget v10, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 415
    .line 416
    if-gt v10, v5, :cond_9

    .line 417
    .line 418
    add-int/2addr v10, v0

    .line 419
    iput v10, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 420
    .line 421
    invoke-static {v7, v6, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 426
    .line 427
    .line 428
    move-result v10

    .line 429
    if-nez v10, :cond_a

    .line 430
    .line 431
    iget v10, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 432
    .line 433
    if-gt v10, v5, :cond_a

    .line 434
    .line 435
    add-int/2addr v10, v0

    .line 436
    iput v10, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 437
    .line 438
    invoke-static {v7, v6, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    .line 440
    .line 441
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->showProgressDialog()V

    .line 442
    .line 443
    .line 444
    const-string v6, "init()"

    .line 445
    .line 446
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    iget v6, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 450
    .line 451
    if-eq v6, v0, :cond_b

    .line 452
    .line 453
    if-eq v6, v8, :cond_b

    .line 454
    .line 455
    if-eq v6, v9, :cond_b

    .line 456
    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    const-string v7, "init(): mWallpaperType="

    .line 460
    .line 461
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget v7, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 465
    .line 466
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 477
    .line 478
    .line 479
    :cond_b
    const v6, 0x7f1309f9

    .line 480
    .line 481
    .line 482
    const v7, 0x7f1309f8

    .line 483
    .line 484
    .line 485
    const/16 v10, 0x8

    .line 486
    .line 487
    if-eqz v4, :cond_d

    .line 488
    .line 489
    sget-boolean v11, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 490
    .line 491
    if-nez v11, :cond_d

    .line 492
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 494
    .line 495
    .line 496
    move-result v11

    .line 497
    if-eqz v11, :cond_c

    .line 498
    .line 499
    move v11, v6

    .line 500
    goto :goto_4

    .line 501
    :cond_c
    move v11, v7

    .line 502
    :goto_4
    iget-object v12, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 503
    .line 504
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(I)V

    .line 505
    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_d
    iget-object v11, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 509
    .line 510
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    .line 512
    .line 513
    :goto_5
    const/4 v11, 0x0

    .line 514
    if-eqz v4, :cond_13

    .line 515
    .line 516
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 517
    .line 518
    if-nez v4, :cond_13

    .line 519
    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-eqz v4, :cond_e

    .line 525
    .line 526
    iget v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 527
    .line 528
    if-gt v4, v5, :cond_f

    .line 529
    .line 530
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-nez v4, :cond_11

    .line 535
    .line 536
    iget v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mDescriptionCount:I

    .line 537
    .line 538
    if-le v4, v5, :cond_11

    .line 539
    .line 540
    :cond_f
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 541
    .line 542
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    .line 544
    .line 545
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 546
    .line 547
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 552
    .line 553
    if-nez v4, :cond_10

    .line 554
    .line 555
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 556
    .line 557
    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 558
    .line 559
    invoke-direct {v4, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 560
    .line 561
    .line 562
    :cond_10
    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 563
    .line 564
    invoke-static {v5, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    int-to-float v5, v5

    .line 573
    const v6, 0x3e22d0e5    # 0.159f

    .line 574
    .line 575
    .line 576
    mul-float/2addr v5, v6

    .line 577
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 582
    .line 583
    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 584
    .line 585
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    .line 587
    .line 588
    goto :goto_7

    .line 589
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    if-eqz v4, :cond_12

    .line 594
    .line 595
    goto :goto_6

    .line 596
    :cond_12
    move v6, v7

    .line 597
    :goto_6
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 598
    .line 599
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 600
    .line 601
    .line 602
    const v4, 0x7f0a0d39

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    check-cast v4, Landroid/widget/LinearLayout;

    .line 610
    .line 611
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    iget-object v6, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 616
    .line 617
    invoke-static {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;

    .line 618
    .line 619
    .line 620
    move-result-object v6

    .line 621
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    int-to-float v6, v6

    .line 626
    const v7, 0x3d9fbe77    # 0.078f

    .line 627
    .line 628
    .line 629
    mul-float/2addr v6, v7

    .line 630
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 631
    .line 632
    .line 633
    move-result v6

    .line 634
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    iget-object v10, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 639
    .line 640
    invoke-static {v10, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 645
    .line 646
    .line 647
    move-result v10

    .line 648
    int-to-float v10, v10

    .line 649
    const v11, 0x3d3c6a7f    # 0.046f

    .line 650
    .line 651
    .line 652
    mul-float/2addr v10, v11

    .line 653
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 654
    .line 655
    .line 656
    move-result v10

    .line 657
    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 658
    .line 659
    .line 660
    goto :goto_7

    .line 661
    :cond_13
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 662
    .line 663
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 668
    .line 669
    if-nez v4, :cond_14

    .line 670
    .line 671
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 672
    .line 673
    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 674
    .line 675
    invoke-direct {v4, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 676
    .line 677
    .line 678
    :cond_14
    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 679
    .line 680
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    const v6, 0x7f070568

    .line 685
    .line 686
    .line 687
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 692
    .line 693
    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 694
    .line 695
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    .line 697
    .line 698
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 699
    .line 700
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    .line 702
    .line 703
    :goto_7
    const-string v4, "initPreviewArea()"

    .line 704
    .line 705
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    .line 709
    .line 710
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 711
    .line 712
    .line 713
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 714
    .line 715
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;

    .line 716
    .line 717
    invoke-direct {v4, v1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;I)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 721
    .line 722
    .line 723
    iget v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 724
    .line 725
    if-ne v0, v9, :cond_15

    .line 726
    .line 727
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 728
    .line 729
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;

    .line 730
    .line 731
    invoke-direct {v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 735
    .line 736
    .line 737
    :cond_15
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/Button;

    .line 738
    .line 739
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;

    .line 740
    .line 741
    invoke-direct {v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    .line 746
    .line 747
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 748
    .line 749
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 750
    .line 751
    const-string v5, "WallpaperUtils"

    .line 752
    .line 753
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    const-string v7, " physicalRatio: "

    .line 762
    .line 763
    const-string v9, " logicalRatio: "

    .line 764
    .line 765
    :try_start_0
    const-class v10, Landroid/hardware/display/DisplayManager;

    .line 766
    .line 767
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v10

    .line 771
    check-cast v10, Landroid/hardware/display/DisplayManager;

    .line 772
    .line 773
    invoke-virtual {v10}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 774
    .line 775
    .line 776
    move-result-object v10

    .line 777
    array-length v11, v10

    .line 778
    if-ge v11, v8, :cond_16

    .line 779
    .line 780
    goto/16 :goto_a

    .line 781
    .line 782
    :cond_16
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 787
    .line 788
    .line 789
    move-result v8

    .line 790
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 791
    .line 792
    .line 793
    move-result v11

    .line 794
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    .line 795
    .line 796
    .line 797
    move-result v8

    .line 798
    int-to-float v8, v8

    .line 799
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 800
    .line 801
    .line 802
    move-result v11

    .line 803
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    int-to-float v0, v0

    .line 812
    div-float/2addr v8, v0

    .line 813
    invoke-static {v10}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getPhysicalDisplaySizes([Landroid/view/Display;)[Landroid/util/Size;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    move v11, v3

    .line 818
    :goto_8
    array-length v12, v0

    .line 819
    if-ge v11, v12, :cond_18

    .line 820
    .line 821
    aget-object v12, v0, v11

    .line 822
    .line 823
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    .line 824
    .line 825
    .line 826
    move-result v13

    .line 827
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 828
    .line 829
    .line 830
    move-result v14

    .line 831
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 832
    .line 833
    .line 834
    move-result v13

    .line 835
    int-to-float v13, v13

    .line 836
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    .line 837
    .line 838
    .line 839
    move-result v14

    .line 840
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 841
    .line 842
    .line 843
    move-result v12

    .line 844
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    .line 845
    .line 846
    .line 847
    move-result v12

    .line 848
    int-to-float v12, v12

    .line 849
    div-float/2addr v13, v12

    .line 850
    new-instance v12, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .line 854
    .line 855
    const-string v14, "getCurrentDisplayID: search: "

    .line 856
    .line 857
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v12

    .line 879
    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .line 881
    .line 882
    sub-float v12, v13, v8

    .line 883
    .line 884
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 885
    .line 886
    .line 887
    move-result v12

    .line 888
    const v14, 0x3c23d70a    # 0.01f

    .line 889
    .line 890
    .line 891
    cmpg-float v12, v12, v14

    .line 892
    .line 893
    if-gez v12, :cond_17

    .line 894
    .line 895
    aget-object v0, v10, v11

    .line 896
    .line 897
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    new-instance v10, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .line 905
    .line 906
    const-string v11, "getCurrentDisplayID: found: "

    .line 907
    .line 908
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v7

    .line 930
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    goto :goto_9

    .line 934
    :cond_17
    add-int/lit8 v11, v11, 0x1

    .line 935
    .line 936
    goto :goto_8

    .line 937
    :cond_18
    aget-object v0, v10, v3

    .line 938
    .line 939
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 940
    .line 941
    .line 942
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_9
    move v3, v0

    .line 944
    goto :goto_a

    .line 945
    :catch_0
    move-exception v0

    .line 946
    const-string v7, "getCurrentDisplayID: "

    .line 947
    .line 948
    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    .line 950
    .line 951
    :goto_a
    const-string v7, "android.view.IWindowManager"

    .line 952
    .line 953
    const-string v8, "asInterface"

    .line 954
    .line 955
    const-string v9, "android.view.IWindowManager$Stub"

    .line 956
    .line 957
    const-string/jumbo v10, "window"

    .line 958
    .line 959
    .line 960
    const-class v11, Ljava/lang/String;

    .line 961
    .line 962
    const-string v12, "checkService"

    .line 963
    .line 964
    const-string v13, "android.os.ServiceManager"

    .line 965
    .line 966
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 967
    .line 968
    .line 969
    move-result-object v14

    .line 970
    if-eqz v14, :cond_1f

    .line 971
    .line 972
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    iget v15, v0, Landroid/util/DisplayMetrics;->density:F

    .line 977
    .line 978
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 979
    .line 980
    move-object/from16 p1, v2

    .line 981
    .line 982
    int-to-float v2, v0

    .line 983
    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    new-instance v0, Landroid/graphics/Point;

    .line 988
    .line 989
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 990
    .line 991
    .line 992
    move-object/from16 v16, v4

    .line 993
    .line 994
    :try_start_1
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 995
    .line 996
    .line 997
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 998
    move-object/from16 v17, v14

    .line 999
    .line 1000
    :try_start_2
    filled-new-array {v11}, [Ljava/lang/Class;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v14

    .line 1004
    invoke-virtual {v4, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1012
    move-object/from16 v18, v6

    .line 1013
    .line 1014
    const/4 v6, 0x0

    .line 1015
    :try_start_3
    invoke-virtual {v4, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v4

    .line 1019
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v6

    .line 1023
    const/4 v14, 0x1

    .line 1024
    new-array v14, v14, [Ljava/lang/Class;

    .line 1025
    .line 1026
    const-class v19, Landroid/os/IBinder;

    .line 1027
    .line 1028
    const/16 v20, 0x0

    .line 1029
    .line 1030
    aput-object v19, v14, v20

    .line 1031
    .line 1032
    invoke-virtual {v6, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v6

    .line 1036
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    const/4 v14, 0x0

    .line 1041
    invoke-virtual {v6, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v4

    .line 1045
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v6

    .line 1049
    const-string v14, "getInitialDisplaySize"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1050
    .line 1051
    move/from16 v19, v15

    .line 1052
    .line 1053
    const/4 v15, 0x2

    .line 1054
    :try_start_4
    new-array v15, v15, [Ljava/lang/Class;

    .line 1055
    .line 1056
    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1057
    .line 1058
    const/16 v21, 0x0

    .line 1059
    .line 1060
    aput-object v20, v15, v21

    .line 1061
    .line 1062
    const-class v20, Landroid/graphics/Point;

    .line 1063
    .line 1064
    const/16 v21, 0x1

    .line 1065
    .line 1066
    aput-object v20, v15, v21

    .line 1067
    .line 1068
    invoke-virtual {v6, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v6

    .line 1072
    const/4 v14, 0x2

    .line 1073
    new-array v14, v14, [Ljava/lang/Object;

    .line 1074
    .line 1075
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v15

    .line 1079
    const/16 v20, 0x0

    .line 1080
    .line 1081
    aput-object v15, v14, v20

    .line 1082
    .line 1083
    aput-object v0, v14, v21

    .line 1084
    .line 1085
    invoke-virtual {v6, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1086
    .line 1087
    .line 1088
    new-instance v4, Landroid/util/Size;

    .line 1089
    .line 1090
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 1091
    .line 1092
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1093
    .line 1094
    invoke-direct {v4, v6, v0}, Landroid/util/Size;-><init>(II)V

    .line 1095
    .line 1096
    .line 1097
    goto :goto_d

    .line 1098
    :catch_1
    move-exception v0

    .line 1099
    goto :goto_c

    .line 1100
    :catch_2
    move-exception v0

    .line 1101
    :goto_b
    move/from16 v19, v15

    .line 1102
    .line 1103
    goto :goto_c

    .line 1104
    :catch_3
    move-exception v0

    .line 1105
    move-object/from16 v18, v6

    .line 1106
    .line 1107
    goto :goto_b

    .line 1108
    :catch_4
    move-exception v0

    .line 1109
    move-object/from16 v18, v6

    .line 1110
    .line 1111
    move-object/from16 v17, v14

    .line 1112
    .line 1113
    goto :goto_b

    .line 1114
    :goto_c
    const-string v4, "getPhysicalDisplaySize: "

    .line 1115
    .line 1116
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    .line 1118
    .line 1119
    const/4 v4, 0x0

    .line 1120
    :goto_d
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 1121
    .line 1122
    .line 1123
    move-result v0

    .line 1124
    int-to-float v0, v0

    .line 1125
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 1126
    .line 1127
    .line 1128
    move-result v6

    .line 1129
    int-to-float v6, v6

    .line 1130
    div-float v6, v0, v6

    .line 1131
    .line 1132
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 1133
    .line 1134
    .line 1135
    move-result v0

    .line 1136
    int-to-float v0, v0

    .line 1137
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 1138
    .line 1139
    .line 1140
    move-result v14

    .line 1141
    int-to-float v14, v14

    .line 1142
    div-float/2addr v0, v14

    .line 1143
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 1144
    .line 1145
    .line 1146
    move-result v14

    .line 1147
    int-to-float v14, v14

    .line 1148
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    .line 1149
    .line 1150
    .line 1151
    move-result v15

    .line 1152
    int-to-float v15, v15

    .line 1153
    div-float/2addr v14, v15

    .line 1154
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    move/from16 v20, v2

    .line 1157
    .line 1158
    const-string v2, "getScreenSizeScaleToBase:  logicalDisplaySize : "

    .line 1159
    .line 1160
    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    const-string v1, " ("

    .line 1167
    .line 1168
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    const-string v0, ")  physicalDisplaySize : "

    .line 1175
    .line 1176
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    const-string v0, ") "

    .line 1189
    .line 1190
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .line 1199
    .line 1200
    :try_start_5
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    filled-new-array {v11}, [Ljava/lang/Class;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v1

    .line 1208
    invoke-virtual {v0, v12, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    const/4 v2, 0x0

    .line 1217
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    const/4 v2, 0x1

    .line 1226
    new-array v2, v2, [Ljava/lang/Class;

    .line 1227
    .line 1228
    const-class v4, Landroid/os/IBinder;

    .line 1229
    .line 1230
    const/4 v9, 0x0

    .line 1231
    aput-object v4, v2, v9

    .line 1232
    .line 1233
    invoke-virtual {v1, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v1

    .line 1237
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    const/4 v2, 0x0

    .line 1242
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v1

    .line 1250
    const-string v2, "getInitialDisplayDensity"

    .line 1251
    .line 1252
    const/4 v4, 0x1

    .line 1253
    new-array v7, v4, [Ljava/lang/Class;

    .line 1254
    .line 1255
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1256
    .line 1257
    const/4 v9, 0x0

    .line 1258
    aput-object v8, v7, v9

    .line 1259
    .line 1260
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    new-array v2, v4, [Ljava/lang/Object;

    .line 1265
    .line 1266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v4

    .line 1270
    aput-object v4, v2, v9

    .line 1271
    .line 1272
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    check-cast v0, Ljava/lang/Integer;

    .line 1277
    .line 1278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1279
    .line 1280
    .line 1281
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1282
    goto :goto_e

    .line 1283
    :catch_5
    move-exception v0

    .line 1284
    const-string v1, "getInitialDisplayDensity: "

    .line 1285
    .line 1286
    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    .line 1288
    .line 1289
    const/4 v0, -0x1

    .line 1290
    :goto_e
    mul-float v2, v6, v20

    .line 1291
    .line 1292
    mul-float v15, v6, v19

    .line 1293
    .line 1294
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 1295
    .line 1296
    move-object/from16 v4, v18

    .line 1297
    .line 1298
    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v1

    .line 1302
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1303
    .line 1304
    const-string v4, "android.hardware.display.category.PRESENTATION"

    .line 1305
    .line 1306
    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    array-length v4, v1

    .line 1311
    const/4 v7, 0x0

    .line 1312
    const/4 v8, 0x0

    .line 1313
    :goto_f
    if-ge v7, v4, :cond_1a

    .line 1314
    .line 1315
    aget-object v9, v1, v7

    .line 1316
    .line 1317
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 1318
    .line 1319
    .line 1320
    move-result v9

    .line 1321
    if-ne v9, v3, :cond_19

    .line 1322
    .line 1323
    const-string v8, "getBaseScreenDensityRate: presentation displayId "

    .line 1324
    .line 1325
    invoke-static {v8, v3, v5}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    const/4 v8, 0x1

    .line 1329
    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 1330
    .line 1331
    goto :goto_f

    .line 1332
    :cond_1a
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1337
    .line 1338
    const/4 v3, 0x1

    .line 1339
    if-eq v1, v3, :cond_1d

    .line 1340
    .line 1341
    if-eqz v8, :cond_1b

    .line 1342
    .line 1343
    goto :goto_10

    .line 1344
    :cond_1b
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1345
    .line 1346
    cmpg-float v1, v6, v1

    .line 1347
    .line 1348
    if-gez v1, :cond_1c

    .line 1349
    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    const-string v3, "getBaseScreenDensityRate: physical display size is smaller than logical display size : "

    .line 1353
    .line 1354
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v1

    .line 1364
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    .line 1366
    .line 1367
    goto :goto_10

    .line 1368
    :cond_1c
    if-lez v0, :cond_1d

    .line 1369
    .line 1370
    int-to-float v1, v0

    .line 1371
    cmpl-float v3, v2, v1

    .line 1372
    .line 1373
    if-eqz v3, :cond_1d

    .line 1374
    .line 1375
    div-float/2addr v1, v2

    .line 1376
    goto :goto_11

    .line 1377
    :cond_1d
    :goto_10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1378
    .line 1379
    :goto_11
    sget v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->sScreenDensityRateFromBase:F

    .line 1380
    .line 1381
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 1382
    .line 1383
    .line 1384
    move-result v3

    .line 1385
    if-eqz v3, :cond_1e

    .line 1386
    .line 1387
    sput v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sScreenDensityRateFromBase:F

    .line 1388
    .line 1389
    const-string v3, "getBaseScreenDensityRate: currentDpi: "

    .line 1390
    .line 1391
    const-string v4, " currentDensity: "

    .line 1392
    .line 1393
    const-string v7, " scaledDpi: "

    .line 1394
    .line 1395
    move/from16 v8, v19

    .line 1396
    .line 1397
    move/from16 v9, v20

    .line 1398
    .line 1399
    invoke-static {v3, v9, v4, v8, v7}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v3

    .line 1403
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1404
    .line 1405
    .line 1406
    const-string v2, " scaledDensity: "

    .line 1407
    .line 1408
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1412
    .line 1413
    .line 1414
    const-string v2, " sScreenDensityRate: "

    .line 1415
    .line 1416
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    .line 1422
    const-string v1, " initialDensityDpi: "

    .line 1423
    .line 1424
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    const-string v2, " resolutionScale: "

    .line 1431
    .line 1432
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    .line 1450
    .line 1451
    :cond_1e
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sScreenDensityRateFromBase:F

    .line 1452
    .line 1453
    goto :goto_12

    .line 1454
    :cond_1f
    move-object/from16 p1, v2

    .line 1455
    .line 1456
    move-object/from16 v16, v4

    .line 1457
    .line 1458
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1459
    .line 1460
    :goto_12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1461
    .line 1462
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 1463
    .line 1464
    .line 1465
    move-result v1

    .line 1466
    if-eqz v1, :cond_20

    .line 1467
    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    const-string/jumbo v2, "scaleMiddleDensityViewIfNeeded: screenDensityRate : "

    .line 1471
    .line 1472
    .line 1473
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v1

    .line 1483
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    .line 1485
    .line 1486
    move-object/from16 v1, v16

    .line 1487
    .line 1488
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setScaledView(FLandroid/view/View;)V

    .line 1489
    .line 1490
    .line 1491
    goto :goto_13

    .line 1492
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    const-string/jumbo v2, "scaleMiddleDensityViewIfNeeded: skipped : screenDensityRate:"

    .line 1495
    .line 1496
    .line 1497
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v0

    .line 1507
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    .line 1509
    .line 1510
    :goto_13
    const/4 v0, 0x0

    .line 1511
    move-object/from16 v1, p0

    .line 1512
    .line 1513
    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    new-instance v2, Landroid/util/TypedValue;

    .line 1518
    .line 1519
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1520
    .line 1521
    .line 1522
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 1523
    .line 1524
    if-eqz v3, :cond_22

    .line 1525
    .line 1526
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 1527
    .line 1528
    if-nez v3, :cond_22

    .line 1529
    .line 1530
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isSubDisplay()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v3

    .line 1534
    if-eqz v3, :cond_21

    .line 1535
    .line 1536
    const v3, 0x7f0704c2

    .line 1537
    .line 1538
    .line 1539
    goto :goto_14

    .line 1540
    :cond_21
    const v3, 0x7f0704c1

    .line 1541
    .line 1542
    .line 1543
    goto :goto_14

    .line 1544
    :cond_22
    const v3, 0x7f07052a

    .line 1545
    .line 1546
    .line 1547
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v4

    .line 1551
    const/4 v5, 0x1

    .line 1552
    invoke-virtual {v4, v3, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    .line 1556
    .line 1557
    .line 1558
    move-result v2

    .line 1559
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 1560
    .line 1561
    .line 1562
    move-result v3

    .line 1563
    int-to-float v3, v3

    .line 1564
    mul-float/2addr v3, v2

    .line 1565
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 1566
    .line 1567
    .line 1568
    move-result v3

    .line 1569
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 1570
    .line 1571
    .line 1572
    move-result v0

    .line 1573
    int-to-float v0, v0

    .line 1574
    mul-float/2addr v0, v2

    .line 1575
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 1576
    .line 1577
    .line 1578
    move-result v0

    .line 1579
    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 1580
    .line 1581
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    if-nez v2, :cond_23

    .line 1586
    .line 1587
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 1588
    .line 1589
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 1590
    .line 1591
    const/4 v5, 0x0

    .line 1592
    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1593
    .line 1594
    .line 1595
    :cond_23
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1596
    .line 1597
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1598
    .line 1599
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 1600
    .line 1601
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1602
    .line 1603
    .line 1604
    const-string v0, "initCapturedImageView()"

    .line 1605
    .line 1606
    move-object/from16 v2, p1

    .line 1607
    .line 1608
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    .line 1610
    .line 1611
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 1612
    .line 1613
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v0

    .line 1617
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    const-string v4, "content://com.android.systemui.keyguard.image"

    .line 1620
    .line 1621
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1625
    .line 1626
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v4

    .line 1630
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1631
    .line 1632
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v0

    .line 1636
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v0

    .line 1640
    const-string v4, "/custom?width=%d&height=%d"

    .line 1641
    .line 1642
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    .line 1648
    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1650
    .line 1651
    const-string/jumbo v4, "uri : "

    .line 1652
    .line 1653
    .line 1654
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1655
    .line 1656
    .line 1657
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v4

    .line 1661
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v0

    .line 1668
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v3

    .line 1679
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v3

    .line 1683
    invoke-static {v0, v3}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v0

    .line 1687
    :try_start_6
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1691
    goto :goto_15

    .line 1692
    :catch_6
    move-exception v0

    .line 1693
    move-object v3, v0

    .line 1694
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1695
    .line 1696
    .line 1697
    const/4 v0, 0x0

    .line 1698
    :goto_15
    if-nez v0, :cond_26

    .line 1699
    .line 1700
    const-string v0, "getLegacyCapturedBitmap()"

    .line 1701
    .line 1702
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    .line 1704
    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1706
    .line 1707
    const-string v3, "/storage/emulated/"

    .line 1708
    .line 1709
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1710
    .line 1711
    .line 1712
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 1713
    .line 1714
    .line 1715
    move-result v3

    .line 1716
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v3

    .line 1720
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    .line 1722
    .line 1723
    const-string v3, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    .line 1724
    .line 1725
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v0

    .line 1732
    new-instance v3, Ljava/io/File;

    .line 1733
    .line 1734
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 1738
    .line 1739
    .line 1740
    move-result v3

    .line 1741
    if-eqz v3, :cond_24

    .line 1742
    .line 1743
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0

    .line 1747
    goto :goto_17

    .line 1748
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    const-string v4, "initCapturedImageView(): "

    .line 1751
    .line 1752
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    .line 1757
    .line 1758
    const-string v0, " isn\'t exist"

    .line 1759
    .line 1760
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    .line 1769
    .line 1770
    :try_start_7
    const-string v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    .line 1771
    .line 1772
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v0

    .line 1776
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v2

    .line 1780
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v0

    .line 1784
    if-eqz v0, :cond_25

    .line 1785
    .line 1786
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1790
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1791
    .line 1792
    .line 1793
    goto :goto_18

    .line 1794
    :catch_7
    move-exception v0

    .line 1795
    goto :goto_16

    .line 1796
    :cond_25
    const/4 v0, 0x0

    .line 1797
    goto :goto_17

    .line 1798
    :catch_8
    move-exception v0

    .line 1799
    const/4 v2, 0x0

    .line 1800
    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1801
    .line 1802
    .line 1803
    goto :goto_18

    .line 1804
    :cond_26
    :goto_17
    move-object v2, v0

    .line 1805
    :goto_18
    if-eqz v2, :cond_28

    .line 1806
    .line 1807
    :try_start_9
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 1808
    .line 1809
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v3

    .line 1813
    invoke-static {v0, v3, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->applyPreviewVisibility(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v0

    .line 1817
    if-eq v2, v0, :cond_27

    .line 1818
    .line 1819
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1820
    .line 1821
    .line 1822
    move-result v3

    .line 1823
    if-nez v3, :cond_27

    .line 1824
    .line 1825
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1826
    .line 1827
    .line 1828
    :cond_27
    move-object v2, v0

    .line 1829
    goto :goto_19

    .line 1830
    :catch_9
    move-exception v0

    .line 1831
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1832
    .line 1833
    .line 1834
    :cond_28
    :goto_19
    if-eqz v2, :cond_29

    .line 1835
    .line 1836
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1837
    .line 1838
    const/4 v3, 0x0

    .line 1839
    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1840
    .line 1841
    .line 1842
    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    .line 1843
    .line 1844
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1845
    .line 1846
    .line 1847
    :cond_29
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sConfigured:Z

    .line 1848
    .line 1849
    if-nez v0, :cond_2a

    .line 1850
    .line 1851
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v0

    .line 1855
    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    .line 1856
    .line 1857
    .line 1858
    const/4 v0, 0x1

    .line 1859
    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sConfigured:Z

    .line 1860
    .line 1861
    :cond_2a
    return-void

    .line 1862
    :cond_2b
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 1863
    .line 1864
    .line 1865
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "KeyguardWallpaperPreviewActivity"

    .line 5
    .line 6
    const-string v1, "onDestroy()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;I)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x9c4

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const-string v0, "KeyguardWallpaperPreviewActivity"

    .line 5
    .line 6
    const-string v1, "onPause()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onPause()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 12
    .line 13
    const v2, 0x7f1309fa

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(ILandroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "onResume() which = "

    .line 38
    .line 39
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 43
    .line 44
    const-string v4, "KeyguardWallpaperPreviewActivity"

    .line 45
    .line 46
    invoke-static {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const v3, 0x7f1309fc

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 66
    .line 67
    if-eq v4, v1, :cond_3

    .line 68
    .line 69
    if-eq v4, v2, :cond_3

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    if-eq v4, v1, :cond_2

    .line 73
    .line 74
    const-string v1, ""

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const v1, 0x7f1309fb

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const v1, 0x7f1309fd

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    const v2, 0x7f1309f7

    .line 95
    .line 96
    .line 97
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final setSystemSettings(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setSystemSettings(): key="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", value="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "KeyguardWallpaperPreviewActivity"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eq v0, p1, :cond_0

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final setSystemSettingsForUser(IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setSystemSettingsForUser(): key="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", value="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "KeyguardWallpaperPreviewActivity"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, -0x2

    .line 36
    invoke-static {v0, p3, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eq p1, p2, :cond_0

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, p3, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final showProgressDialog()V
    .locals 2

    .line 1
    const-string v0, "KeyguardWallpaperPreviewActivity"

    .line 2
    .line 3
    const-string/jumbo v1, "showProgressDialog()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isAnimating()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
