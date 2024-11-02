.class public Lcom/android/systemui/widget/SystemUIButton;
.super Landroid/widget/Button;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAttrCount:I

.field public final mBlurSettings:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

.field public mDefaultArea:Ljava/lang/String;

.field public mDensityDpi:I

.field public mFontScale:F

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

.field public mOriginalFontSizeDp:F

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 6
    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    .line 10
    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    .line 11
    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 12
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    .line 13
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 14
    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIButton$1;-><init>(Lcom/android/systemui/widget/SystemUIButton;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

    .line 15
    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;-><init>(Lcom/android/systemui/widget/SystemUIButton;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mBlurSettings:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    .line 16
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 17
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    move p2, v1

    .line 19
    :goto_0
    iget p3, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-ge p2, p3, :cond_11

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/16 p4, 0x17

    if-ne p3, p4, :cond_0

    .line 21
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 22
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 p4, 0x9

    if-ne p3, p4, :cond_2

    .line 23
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 p4, 0x1a

    if-ne p3, p4, :cond_3

    .line 24
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 p4, 0x12

    if-ne p3, p4, :cond_4

    .line 25
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 p4, 0xf

    if-ne p3, p4, :cond_5

    .line 26
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 p4, 0xb

    if-ne p3, p4, :cond_6

    .line 27
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 p4, 0x1c

    if-ne p3, p4, :cond_7

    .line 28
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 p4, 0x15

    if-ne p3, p4, :cond_8

    .line 29
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 p4, 0x11

    if-ne p3, p4, :cond_9

    .line 30
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/16 p4, 0x8

    if-ne p3, p4, :cond_a

    .line 31
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackground:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const/16 p4, 0x19

    if-ne p3, p4, :cond_b

    .line 32
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 p4, 0xd

    if-ne p3, p4, :cond_c

    .line 33
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackground:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/16 p4, 0xe

    if-ne p3, p4, :cond_d

    .line 34
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/4 p4, 0x7

    if-ne p3, p4, :cond_e

    .line 35
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mMovable:Z

    goto :goto_1

    :cond_e
    const/4 p4, 0x5

    if-ne p3, p4, :cond_f

    .line 36
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const/16 p4, 0x14

    if-ne p3, p4, :cond_10

    .line 37
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemePolicyIgnorable:Z

    :cond_10
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 38
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    .line 39
    :cond_12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mMovable:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsLockStarEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mGroup:Ljava/lang/String;

    .line 36
    .line 37
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 10
    .line 11
    const-class v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 18
    .line 19
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mMovable:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    cmpl-float v2, v1, v2

    .line 24
    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 36
    .line 37
    mul-float v3, v1, v2

    .line 38
    .line 39
    div-float/2addr v0, v3

    .line 40
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    .line 41
    .line 42
    const v3, 0x3f99999a    # 1.2f

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    mul-float/2addr v2, v0

    .line 56
    mul-float/2addr v2, v1

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 93
    .line 94
    iget v5, v4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    .line 95
    .line 96
    iget v6, v4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    .line 97
    .line 98
    iget v4, v4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    if-lez v5, :cond_1

    .line 102
    .line 103
    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v8, v5, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    :cond_1
    if-lez v6, :cond_2

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-virtual {p0, v5, v8, v9, v6}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 141
    .line 142
    .line 143
    :cond_2
    if-lez v4, :cond_3

    .line 144
    .line 145
    iget-object v5, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final refreshResIds()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColor:Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, "color"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColorId:I

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColor:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColorId:I

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColorId:I

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 58
    .line 59
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColor:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    .line 68
    .line 69
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColorId:I

    .line 80
    .line 81
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColor:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v2, :cond_6

    .line 86
    .line 87
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColorId:I

    .line 92
    .line 93
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 94
    .line 95
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColorId:I

    .line 104
    .line 105
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 106
    .line 107
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackground:Ljava/lang/String;

    .line 108
    .line 109
    const-string v3, "drawable"

    .line 110
    .line 111
    if-eqz v2, :cond_8

    .line 112
    .line 113
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    .line 118
    .line 119
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 120
    .line 121
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v2, :cond_9

    .line 124
    .line 125
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackgroundId:I

    .line 130
    .line 131
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 132
    .line 133
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackground:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackgroundId:I

    .line 142
    .line 143
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v1, :cond_b

    .line 148
    .line 149
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackgroundId:I

    .line 154
    .line 155
    :cond_b
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 28
    .line 29
    .line 30
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final updateButtonColor()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->semClearAllTextEffect()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget v5, v5, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColorId:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v5, v5, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    .line 36
    .line 37
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget v6, v6, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColorId:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget v6, v6, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    .line 45
    .line 46
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget v7, v7, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackgroundId:I

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget v7, v7, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    .line 54
    .line 55
    :goto_2
    iget-wide v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    .line 56
    .line 57
    const-wide/16 v10, 0x1

    .line 58
    .line 59
    and-long/2addr v8, v10

    .line 60
    const-wide/16 v10, 0x0

    .line 61
    .line 62
    cmp-long v8, v8, v10

    .line 63
    .line 64
    if-eqz v8, :cond_8

    .line 65
    .line 66
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_8

    .line 71
    .line 72
    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 75
    .line 76
    iget-object v9, v9, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v9

    .line 82
    iget-object v11, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 83
    .line 84
    iget-boolean v11, v11, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemePolicyIgnorable:Z

    .line 85
    .line 86
    invoke-static {v8, v9, v10, v11}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    const-string v9, "SystemUIButton"

    .line 91
    .line 92
    if-eqz v8, :cond_5

    .line 93
    .line 94
    const-string v8, "apply style: theme : white"

    .line 95
    .line 96
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 100
    .line 101
    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColorId:I

    .line 102
    .line 103
    if-lez v9, :cond_3

    .line 104
    .line 105
    move v5, v9

    .line 106
    :cond_3
    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColorId:I

    .line 107
    .line 108
    if-lez v9, :cond_4

    .line 109
    .line 110
    move v6, v9

    .line 111
    :cond_4
    iget v8, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackgroundId:I

    .line 112
    .line 113
    if-lez v8, :cond_8

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    const-string v8, "apply style: theme : black"

    .line 117
    .line 118
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 122
    .line 123
    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColorId:I

    .line 124
    .line 125
    if-lez v9, :cond_6

    .line 126
    .line 127
    move v5, v9

    .line 128
    :cond_6
    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColorId:I

    .line 129
    .line 130
    if-lez v9, :cond_7

    .line 131
    .line 132
    move v6, v9

    .line 133
    :cond_7
    iget v8, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackgroundId:I

    .line 134
    .line 135
    if-lez v8, :cond_8

    .line 136
    .line 137
    :goto_3
    move v7, v8

    .line 138
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mBlurSettings:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const-class v8, Lcom/android/systemui/util/SettingsHelper;

    .line 144
    .line 145
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    .line 150
    .line 151
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_b

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    const v5, 0x7f060529

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    const v5, 0x7f060528

    .line 164
    .line 165
    .line 166
    :goto_4
    if-eqz v0, :cond_a

    .line 167
    .line 168
    const v0, 0x7f080ec6

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_a
    const v0, 0x7f080ec5

    .line 173
    .line 174
    .line 175
    :goto_5
    move v7, v0

    .line 176
    :cond_b
    const/4 v0, 0x0

    .line 177
    if-lez v5, :cond_c

    .line 178
    .line 179
    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v8, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 190
    .line 191
    .line 192
    :cond_c
    if-lez v6, :cond_d

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    invoke-virtual {v10, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-virtual {p0, v5, v8, v9, v6}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 217
    .line 218
    .line 219
    :cond_d
    if-lez v7, :cond_e

    .line 220
    .line 221
    iget-object v5, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v5, v7, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    .line 233
    .line 234
    :cond_e
    invoke-virtual {p0, v3, v1, v4, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public final updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    .line 3
    const v1, 0x3f99999a    # 1.2f

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq p1, v1, :cond_0

    .line 23
    .line 24
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    .line 25
    .line 26
    move p1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p1, v3

    .line 29
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, p1

    .line 41
    :goto_1
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    .line 44
    .line 45
    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    .line 46
    .line 47
    mul-float/2addr p1, v0

    .line 48
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .line 60
    mul-float/2addr p1, v0

    .line 61
    invoke-virtual {p0, v3, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p3, p1, v0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v0, "updateStyle() flag="

    .line 25
    .line 26
    .line 27
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ","

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, " : "

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/Button;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    const-string v0, "SystemUIButton"

    .line 68
    .line 69
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->updateButtonColor()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
