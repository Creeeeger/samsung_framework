.class public Lcom/android/systemui/widget/SystemUIImageButton;
.super Landroid/widget/ImageButton;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public mAttrCount:I

.field public mDefaultArea:Ljava/lang/String;

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    .line 9
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    .line 10
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 11
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIImageButton$1;-><init>(Lcom/android/systemui/widget/SystemUIImageButton;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

    .line 12
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 13
    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 14
    new-instance p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-direct {p3, p1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;-><init>(I)V

    iput-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p2, :cond_13

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    move p3, p1

    .line 16
    :goto_0
    iget p4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-ge p3, p4, :cond_12

    .line 17
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    const/16 v0, 0x17

    if-ne p4, v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p4, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x9

    if-ne p4, v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x1a

    if-ne p4, v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x12

    if-ne p4, v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xf

    if-ne p4, v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0xa

    if-ne p4, v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x13

    if-ne p4, v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x10

    if-ne p4, v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x1b

    if-ne p4, v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImage:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/16 v0, 0x1d

    if-ne p4, v0, :cond_a

    .line 28
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const/16 v0, 0x8

    if-ne p4, v0, :cond_b

    .line 29
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackground:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 v0, 0x19

    if-ne p4, v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/16 v0, 0xd

    if-ne p4, v0, :cond_d

    .line 31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/16 v0, 0xe

    if-ne p4, v0, :cond_e

    .line 32
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/4 v0, 0x7

    if-ne p4, v0, :cond_f

    .line 33
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mMovable:Z

    goto :goto_1

    :cond_f
    const/4 v0, 0x5

    if-ne p4, v0, :cond_10

    .line 34
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_10
    const/16 v0, 0x14

    if-ne p4, v0, :cond_11

    .line 35
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemePolicyIgnorable:Z

    :cond_11
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 36
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    .line 37
    :cond_13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mDefaultArea:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mMovable:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsLockStarEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mGroup:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

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
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

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
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mMovable:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mDefaultArea:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 5
    .line 6
    iget v1, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    .line 7
    .line 8
    iget v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackgroundId:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final refreshResIds()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginColor:Ljava/lang/String;

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColorId:I

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColorId:I

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColorId:I

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 58
    .line 59
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImage:Ljava/lang/String;

    .line 60
    .line 61
    const-string v4, "drawable"

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    .line 70
    .line 71
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 72
    .line 73
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    .line 82
    .line 83
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 84
    .line 85
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImage:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImageId:I

    .line 94
    .line 95
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 96
    .line 97
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImage:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImageId:I

    .line 106
    .line 107
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 108
    .line 109
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v2, :cond_8

    .line 112
    .line 113
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 120
    .line 121
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackground:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v2, :cond_9

    .line 124
    .line 125
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackgroundId:I

    .line 130
    .line 131
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 132
    .line 133
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackgroundId:I

    .line 142
    .line 143
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 144
    .line 145
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackground:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v2, :cond_b

    .line 148
    .line 149
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackgroundId:I

    .line 154
    .line 155
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v1, :cond_c

    .line 160
    .line 161
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackgroundId:I

    .line 166
    .line 167
    :cond_c
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

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
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIImageButton;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 28
    .line 29
    .line 30
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p3, p1, v0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x1

    .line 19
    :goto_0
    if-nez v2, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "updateStyle() flag="

    .line 25
    .line 26
    .line 27
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ","

    .line 40
    .line 41
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " : "

    .line 52
    .line 53
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageButton;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    const-string v2, "SystemUIImageButton"

    .line 68
    .line 69
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget p3, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget p3, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    .line 93
    .line 94
    :goto_1
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackgroundId:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackgroundId:I

    .line 100
    .line 101
    :goto_2
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    .line 102
    .line 103
    const-wide/16 v5, 0x1

    .line 104
    .line 105
    and-long/2addr v3, v5

    .line 106
    cmp-long v0, v3, v0

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    if-eqz v0, :cond_b

    .line 110
    .line 111
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_b

    .line 116
    .line 117
    iget-object p2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 120
    .line 121
    iget-object p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {p3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v3

    .line 127
    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 128
    .line 129
    iget-boolean p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemePolicyIgnorable:Z

    .line 130
    .line 131
    invoke-static {p2, v3, v4, p3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-eqz p2, :cond_7

    .line 136
    .line 137
    const-string p1, "apply style: theme : white"

    .line 138
    .line 139
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 143
    .line 144
    iget p2, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImageId:I

    .line 145
    .line 146
    if-gtz p2, :cond_6

    .line 147
    .line 148
    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColorId:I

    .line 149
    .line 150
    if-lez p1, :cond_5

    .line 151
    .line 152
    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 159
    .line 160
    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColorId:I

    .line 161
    .line 162
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 171
    .line 172
    .line 173
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 174
    .line 175
    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    .line 176
    .line 177
    move p3, p1

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move p3, p2

    .line 180
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 181
    .line 182
    iget p2, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackgroundId:I

    .line 183
    .line 184
    goto/16 :goto_6

    .line 185
    .line 186
    :cond_7
    const-string p2, "apply style: theme"

    .line 187
    .line 188
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 192
    .line 193
    iget p3, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImageId:I

    .line 194
    .line 195
    if-gtz p3, :cond_a

    .line 196
    .line 197
    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColorId:I

    .line 198
    .line 199
    if-lez p2, :cond_8

    .line 200
    .line 201
    iget-object p2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 202
    .line 203
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 208
    .line 209
    iget p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColorId:I

    .line 210
    .line 211
    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    if-eqz p1, :cond_9

    .line 223
    .line 224
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 225
    .line 226
    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 230
    .line 231
    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    .line 232
    .line 233
    :goto_4
    move p3, p1

    .line 234
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 235
    .line 236
    iget p2, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackgroundId:I

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_b
    if-eqz p1, :cond_e

    .line 240
    .line 241
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 242
    .line 243
    iget-object v0, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 244
    .line 245
    if-nez v0, :cond_c

    .line 246
    .line 247
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    .line 248
    .line 249
    if-eqz p1, :cond_e

    .line 250
    .line 251
    :cond_c
    const-string p1, "apply style: white-bg"

    .line 252
    .line 253
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 257
    .line 258
    iget p3, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    .line 259
    .line 260
    if-gtz p3, :cond_e

    .line 261
    .line 262
    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColorId:I

    .line 263
    .line 264
    if-lez p1, :cond_d

    .line 265
    .line 266
    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 273
    .line 274
    iget p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColorId:I

    .line 275
    .line 276
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    .line 281
    .line 282
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 283
    .line 284
    invoke-direct {p3, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v3, "filter: "

    .line 290
    .line 291
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    const-string v3, "#%08X"

    .line 303
    .line 304
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_d
    move-object p3, v1

    .line 320
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 321
    .line 322
    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_e
    :goto_6
    move p1, p3

    .line 326
    move-object p3, v1

    .line 327
    :goto_7
    if-lez p1, :cond_10

    .line 328
    .line 329
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    if-eqz p1, :cond_10

    .line 336
    .line 337
    if-eqz p3, :cond_f

    .line 338
    .line 339
    const-string v0, "filter is not null!!"

    .line 340
    .line 341
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 345
    .line 346
    .line 347
    :cond_f
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    .line 349
    .line 350
    :cond_10
    if-lez p2, :cond_11

    .line 351
    .line 352
    const-string/jumbo p1, "resBgId is not null!!"

    .line 353
    .line 354
    .line 355
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 359
    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 369
    .line 370
    .line 371
    :cond_11
    return-void
.end method
