.class public Lcom/android/systemui/widget/SystemUIView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public mAttrCount:I

.field public mDefaultArea:Ljava/lang/String;

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIView$1;

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

    .line 6
    new-instance p1, Lcom/android/systemui/widget/SystemUIView$ResData;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 7
    iput v2, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    .line 8
    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 9
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    .line 10
    const-class p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 11
    new-instance p1, Lcom/android/systemui/widget/SystemUIView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/widget/SystemUIView$1;-><init>(Lcom/android/systemui/widget/SystemUIView;)V

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIView$1;

    .line 12
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 13
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    move p2, v2

    .line 15
    :goto_0
    iget p3, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-ge p2, p3, :cond_d

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/16 p4, 0x17

    if-ne p3, p4, :cond_0

    .line 17
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 18
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 p4, 0x9

    if-ne p3, p4, :cond_2

    .line 19
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 p4, 0x1a

    if-ne p3, p4, :cond_3

    .line 20
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 p4, 0x12

    if-ne p3, p4, :cond_4

    .line 21
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeColor:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 p4, 0xf

    if-ne p3, p4, :cond_5

    .line 22
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/16 p4, 0xa

    if-ne p3, p4, :cond_6

    .line 23
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImage:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 p4, 0x13

    if-ne p3, p4, :cond_7

    .line 24
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeImage:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const/16 p4, 0x10

    if-ne p3, p4, :cond_8

    .line 25
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackImage:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 p4, 0x1b

    if-ne p3, p4, :cond_9

    .line 26
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImage:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/4 p4, 0x7

    if-ne p3, p4, :cond_a

    .line 27
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mMovable:Z

    goto :goto_1

    :cond_a
    const/4 p4, 0x5

    if-ne p3, p4, :cond_b

    .line 28
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIView$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 p4, 0x14

    if-ne p3, p4, :cond_c

    .line 29
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 30
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    .line 31
    :cond_e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mDefaultArea:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mMovable:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIView$1;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsLockStarEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mGroup:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

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
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mMovable:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIView$1;

    .line 33
    .line 34
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mDefaultArea:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 5
    .line 6
    iget v1, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImageId:I

    .line 7
    .line 8
    iget v0, v0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColorId:I

    .line 9
    .line 10
    const-string v2, "SystemUIView"

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v3, "setBackgroundResource!!"

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-lez v0, :cond_1

    .line 24
    .line 25
    const-string/jumbo v1, "setBackgroundColor!!"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final refreshResIds()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColorId:I

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColorId:I

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeColor:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackColor:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 58
    .line 59
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImage:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "drawable"

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImageId:I

    .line 70
    .line 71
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 72
    .line 73
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImageId:I

    .line 82
    .line 83
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 84
    .line 85
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeImage:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackImage:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    :cond_7
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    .line 21
    .line 22
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    .line 35
    .line 36
    :cond_1
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
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

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
    iget-wide v2, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

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
    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

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
    const-string v2, "SystemUIView"

    .line 68
    .line 69
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget p3, p2, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImageId:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget p3, p2, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImageId:I

    .line 93
    .line 94
    :goto_1
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget p2, p2, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColorId:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget p2, p2, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColorId:I

    .line 100
    .line 101
    :goto_2
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

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
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    if-eqz p1, :cond_8

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 120
    .line 121
    iget-object v0, p1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColor:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    :cond_6
    const-string p1, "apply style: white-bg"

    .line 130
    .line 131
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 135
    .line 136
    iget-object v0, p1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    iget p3, p1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImageId:I

    .line 141
    .line 142
    :cond_7
    iget-object v0, p1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColor:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    iget p2, p1, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColorId:I

    .line 147
    .line 148
    :cond_8
    :goto_3
    if-lez p3, :cond_9

    .line 149
    .line 150
    const-string/jumbo p1, "setBackgroundResource!!"

    .line 151
    .line 152
    .line 153
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    :cond_9
    if-lez p2, :cond_a

    .line 160
    .line 161
    const-string/jumbo p1, "setBackgroundColor!!"

    .line 162
    .line 163
    .line 164
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const/4 p3, 0x0

    .line 174
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 179
    .line 180
    .line 181
    :cond_a
    return-void
.end method
