.class public final Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCropResult:Landroid/graphics/Rect;

.field public mDefaultDisplay:Landroid/view/Display;

.field public final mDisplayId:I

.field public mFromLandScape:Z

.field public mLidState:I

.field public final mTmpDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    .line 8
    .line 9
    new-instance v0, Landroid/view/DisplayInfo;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    .line 22
    .line 23
    return-void
.end method

.method public static checkDisplaySize(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    if-ne p0, v2, :cond_0

    .line 27
    .line 28
    const/16 p0, 0x11

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    int-to-float v3, v1

    .line 39
    int-to-float v4, v0

    .line 40
    div-float v5, v3, v4

    .line 41
    .line 42
    div-float/2addr v4, v3

    .line 43
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    int-to-float v6, v6

    .line 53
    div-float/2addr v3, v6

    .line 54
    sub-float/2addr v5, v3

    .line 55
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const v6, 0x3e99999a    # 0.3f

    .line 60
    .line 61
    .line 62
    cmpl-float v5, v5, v6

    .line 63
    .line 64
    if-lez v5, :cond_1

    .line 65
    .line 66
    sub-float/2addr v4, v3

    .line 67
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    cmpl-float v3, v3, v6

    .line 72
    .line 73
    if-lez v3, :cond_1

    .line 74
    .line 75
    const-string v3, "Smart Crop ratio different display size.So clear cache. which : "

    .line 76
    .line 77
    const-string v4, " display w: "

    .line 78
    .line 79
    const-string v5, " , h: "

    .line 80
    .line 81
    invoke-static {v3, p0, v4, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", cropRect : "

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "ImageSmartCropper"

    .line 101
    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method public final getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final needToExtractSmartCropRect(III)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 11
    .line 12
    const-string v0, "display"

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x2

    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    move p0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move p0, v0

    .line 45
    :goto_0
    const-string v2, "ImageSmartCropper"

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    const-string p0, "SmartView is connected (fixed ratio), so extract rect"

    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    const-string p0, "SmartView is not connected"

    .line 56
    .line 57
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_2

    .line 65
    .line 66
    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isMainScreenRatio(II)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isMainScreenRatio(II)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    :cond_3
    const-string p0, "Display info is not updated yet."

    .line 85
    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return v0

    .line 90
    :cond_4
    return v1
.end method

.method public final needToSmartCrop()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string/jumbo v3, "sehome_portrait_mode_only"

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, v4, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, " getSettingKey "

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    .line 42
    .line 43
    const-string v5, "ImageSmartCropper"

    .line 44
    .line 45
    invoke-static {v2, v3, v5}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    const-string/jumbo v2, "sub_display_system_wallpaper_transparency"

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string v2, "android.wallpaper.settings_systemui_transparency"

    .line 57
    .line 58
    :goto_0
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    if-ne p0, v3, :cond_3

    .line 62
    .line 63
    const-string v2, "dex_system_wallpaper_transparency"

    .line 64
    .line 65
    :cond_3
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    move v1, v4

    .line 72
    :cond_4
    return v1
.end method

.method public final updateSmartCropRect(Landroid/graphics/Bitmap;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "] ["

    .line 8
    .line 9
    const-string v4, "Number of faces = "

    .line 10
    .line 11
    const-string v5, "deviceRatio: "

    .line 12
    .line 13
    const-string v6, "deviceWidth : "

    .line 14
    .line 15
    const-string v7, "bmpWidth : "

    .line 16
    .line 17
    sget-boolean v8, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    .line 18
    .line 19
    const-string v9, "ImageSmartCropper"

    .line 20
    .line 21
    if-eqz v8, :cond_0

    .line 22
    .line 23
    iget-object v8, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    invoke-virtual {v8, v2, v10}, Landroid/app/WallpaperManager;->getWallpaperOrientation(II)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    const/4 v10, 0x2

    .line 38
    if-ne v8, v10, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 42
    .line 43
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "updateSmartCropRect landscape mode. do not smart crop"

    .line 49
    .line 50
    .line 51
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string/jumbo v8, "updateSmartCropRect"

    .line 56
    .line 57
    .line 58
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    :try_start_0
    const-string v0, "mBackground == null"

    .line 64
    .line 65
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    const-string v0, "mBackground is recycled"

    .line 76
    .line 77
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    iget v10, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 86
    .line 87
    iget v11, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 88
    .line 89
    iget v8, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    new-instance v12, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v7, ", bmpHeight : "

    .line 108
    .line 109
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v6, ", deviceHeight : "

    .line 131
    .line 132
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToExtractSmartCropRect(III)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_3

    .line 150
    .line 151
    return-void

    .line 152
    :cond_3
    new-instance v6, Lcom/samsung/android/media/face/SemFaceDetection;

    .line 153
    .line 154
    invoke-direct {v6}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/samsung/android/media/face/SemFaceDetection;->init()V

    .line 158
    .line 159
    .line 160
    new-instance v7, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v12, Landroid/graphics/Rect;

    .line 166
    .line 167
    const/4 v13, 0x0

    .line 168
    invoke-direct {v12, v13, v13, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    .line 170
    .line 171
    const/4 v13, 0x1

    .line 172
    if-eq v8, v13, :cond_5

    .line 173
    .line 174
    const/4 v13, 0x3

    .line 175
    if-ne v8, v13, :cond_4

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_4
    const/4 v8, 0x0

    .line 179
    goto :goto_1

    .line 180
    :cond_5
    :goto_0
    const/4 v8, 0x1

    .line 181
    :goto_1
    if-eqz v8, :cond_6

    .line 182
    .line 183
    int-to-float v8, v11

    .line 184
    int-to-float v10, v10

    .line 185
    goto :goto_2

    .line 186
    :cond_6
    int-to-float v8, v10

    .line 187
    int-to-float v10, v11

    .line 188
    :goto_2
    div-float/2addr v8, v10

    .line 189
    int-to-float v10, v15

    .line 190
    mul-float/2addr v10, v8

    .line 191
    float-to-int v10, v10

    .line 192
    if-le v10, v14, :cond_7

    .line 193
    .line 194
    move v10, v14

    .line 195
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v5, ", landBitmapWidth : "

    .line 204
    .line 205
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v5, ", landBitmapHeight : "

    .line 212
    .line 213
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-object v4, v12

    .line 246
    const/4 v8, 0x0

    .line 247
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-ge v8, v11, :cond_9

    .line 252
    .line 253
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    check-cast v11, Lcom/samsung/android/media/face/SemFace;

    .line 258
    .line 259
    iget-object v11, v11, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    .line 260
    .line 261
    new-instance v12, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v13, "faceRect is : ["

    .line 267
    .line 268
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v13, v11, Landroid/graphics/Rect;->left:I

    .line 272
    .line 273
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget v13, v11, Landroid/graphics/Rect;->top:I

    .line 280
    .line 281
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget v13, v11, Landroid/graphics/Rect;->right:I

    .line 288
    .line 289
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    .line 296
    .line 297
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    .line 314
    .line 315
    .line 316
    move-result v13

    .line 317
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v13, "]"

    .line 321
    .line 322
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v12

    .line 329
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    if-le v12, v13, :cond_8

    .line 341
    .line 342
    move-object v4, v11

    .line 343
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    .line 347
    .line 348
    .line 349
    if-nez v5, :cond_b

    .line 350
    .line 351
    new-instance v3, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    .line 352
    .line 353
    invoke-direct {v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;-><init>()V

    .line 354
    .line 355
    .line 356
    mul-int v5, v15, v14

    .line 357
    .line 358
    new-array v5, v5, [I

    .line 359
    .line 360
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 361
    .line 362
    const/4 v7, 0x1

    .line 363
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 364
    .line 365
    .line 366
    move-result-object v12

    .line 367
    const/4 v1, 0x0

    .line 368
    const/4 v6, 0x0

    .line 369
    const/16 v17, 0x0

    .line 370
    .line 371
    const/4 v7, 0x0

    .line 372
    move-object v13, v5

    .line 373
    move v8, v14

    .line 374
    move v14, v1

    .line 375
    move v1, v15

    .line 376
    move/from16 v16, v6

    .line 377
    .line 378
    move/from16 v18, v1

    .line 379
    .line 380
    move/from16 v19, v8

    .line 381
    .line 382
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v1, v8, v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage(II[I)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_a

    .line 390
    .line 391
    invoke-virtual {v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect()Landroid/graphics/Rect;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v6, "[ findObjectRect() ] : "

    .line 401
    .line 402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_a
    const-string v5, "do not find object"

    .line 417
    .line 418
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    :goto_4
    iget-wide v5, v3, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    .line 422
    .line 423
    invoke-static {v5, v6}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseOneImage(J)I

    .line 424
    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_b
    move v8, v14

    .line 428
    move v1, v15

    .line 429
    const/4 v7, 0x0

    .line 430
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string/jumbo v5, "recognizedRect: "

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    new-instance v3, Landroid/graphics/Rect;

    .line 452
    .line 453
    invoke-direct {v3, v7, v7, v1, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    div-int/lit8 v5, v10, 0x2

    .line 461
    .line 462
    div-int/lit8 v14, v8, 0x2

    .line 463
    .line 464
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_c

    .line 469
    .line 470
    sub-int/2addr v14, v5

    .line 471
    invoke-virtual {v3, v7, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 472
    .line 473
    .line 474
    goto :goto_6

    .line 475
    :cond_c
    sub-int v14, v8, v5

    .line 476
    .line 477
    if-le v1, v14, :cond_d

    .line 478
    .line 479
    sub-int v14, v8, v10

    .line 480
    .line 481
    invoke-virtual {v3, v7, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 482
    .line 483
    .line 484
    goto :goto_6

    .line 485
    :cond_d
    if-lt v1, v5, :cond_e

    .line 486
    .line 487
    sub-int/2addr v1, v5

    .line 488
    invoke-virtual {v3, v7, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 489
    .line 490
    .line 491
    :cond_e
    :goto_6
    iput-object v3, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 492
    .line 493
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    .line 494
    .line 495
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    const-string v2, "[ findCropRect() of Real Image] : "

    .line 504
    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 509
    .line 510
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .line 519
    .line 520
    goto :goto_7

    .line 521
    :catch_0
    move-exception v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v2, "OutOfMemoryError while smart cropping: "

    .line 525
    .line 526
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    goto :goto_7

    .line 544
    :catch_1
    move-exception v0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v2, "java.lang.LinkageError occurred when smart cropping "

    .line 548
    .line 549
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    goto :goto_7

    .line 567
    :catch_2
    move-exception v0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string v2, "Exception occurred when smart cropping "

    .line 571
    .line 572
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    :goto_7
    return-void
.end method

.method public final updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    .line 23
    .line 24
    :goto_0
    const-string v0, " updateSmartCropRectIfNeeded: which = "

    .line 25
    .line 26
    const-string v1, ", landscape = "

    .line 27
    .line 28
    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " , rect = "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "ImageSmartCropper"

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    move v0, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v0, v3

    .line 67
    :goto_1
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance v4, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-direct {v4, v5, p2, v6}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getImageCategory()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    :goto_2
    move v2, v3

    .line 98
    :cond_3
    if-nez v2, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;I)V

    .line 104
    .line 105
    .line 106
    :cond_5
    return-void

    .line 107
    :cond_6
    :goto_3
    const-string/jumbo p0, "updateSmartCropRectIfNeeded: Do not update SmartCrop."

    .line 108
    .line 109
    .line 110
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-void
.end method
