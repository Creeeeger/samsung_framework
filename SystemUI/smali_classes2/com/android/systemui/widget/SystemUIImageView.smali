.class public Lcom/android/systemui/widget/SystemUIImageView;
.super Landroid/widget/ImageView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public mDefaultArea:Ljava/lang/String;

.field public mHasAttr:Z

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public mIsPluginLockEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mPluginLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$2;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

.field public mUpdateFlag:J

.field public final mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    .line 6
    new-instance v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 7
    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 8
    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    .line 9
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    .line 10
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 11
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 12
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$1;-><init>(Lcom/android/systemui/widget/SystemUIImageView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

    .line 13
    const-class v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 14
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 15
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$2;-><init>(Lcom/android/systemui/widget/SystemUIImageView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$2;

    .line 16
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 17
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 18
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p3, 0x1

    .line 20
    iput-boolean p3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    :cond_0
    move p3, v3

    :goto_0
    if-ge p3, p2, :cond_14

    .line 21
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    const/16 v0, 0x17

    if-ne p4, v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    if-nez p4, :cond_2

    .line 23
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x9

    if-ne p4, v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x1a

    if-ne p4, v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x12

    if-ne p4, v0, :cond_5

    .line 26
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0xf

    if-ne p4, v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0xa

    if-ne p4, v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x13

    if-ne p4, v0, :cond_8

    .line 29
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x10

    if-ne p4, v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x1b

    if-ne p4, v0, :cond_a

    .line 31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x1d

    if-ne p4, v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 v0, 0x8

    if-ne p4, v0, :cond_c

    .line 33
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackground:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/16 v0, 0x19

    if-ne p4, v0, :cond_d

    .line 34
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/16 v0, 0xd

    if-ne p4, v0, :cond_e

    .line 35
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackground:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/16 v0, 0xe

    if-ne p4, v0, :cond_f

    .line 36
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const/4 v0, 0x7

    if-ne p4, v0, :cond_10

    .line 37
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mMovable:Z

    goto :goto_1

    :cond_10
    const/4 v0, 0x6

    if-ne p4, v0, :cond_11

    .line 38
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    goto :goto_1

    :cond_11
    const/4 v0, 0x5

    if-ne p4, v0, :cond_12

    .line 39
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_12
    const/16 v0, 0x14

    if-ne p4, v0, :cond_13

    .line 40
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemePolicyIgnorable:Z

    :cond_13
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 41
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    .line 42
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private refreshResIds()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginColor:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "color"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 10
    .line 11
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 24
    .line 25
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColor:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 38
    .line 39
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColor:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 52
    .line 53
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    .line 62
    .line 63
    const-string v3, "drawable"

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 68
    .line 69
    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 82
    .line 83
    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    .line 88
    .line 89
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 90
    .line 91
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImage:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 96
    .line 97
    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImageId:I

    .line 102
    .line 103
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 104
    .line 105
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImage:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 110
    .line 111
    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImageId:I

    .line 116
    .line 117
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 124
    .line 125
    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackground:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 138
    .line 139
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    .line 144
    .line 145
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    .line 148
    .line 149
    if-eqz v1, :cond_a

    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 152
    .line 153
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    .line 158
    .line 159
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 160
    .line 161
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackground:Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v1, :cond_b

    .line 164
    .line 165
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 166
    .line 167
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackgroundId:I

    .line 172
    .line 173
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 174
    .line 175
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    .line 176
    .line 177
    if-eqz v1, :cond_c

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 180
    .line 181
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    iput p0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackgroundId:I

    .line 186
    .line 187
    :cond_c
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mDefaultArea:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mMovable:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsPluginLockEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mGroup:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 46
    .line 47
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 52
    .line 53
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$2;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

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
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mMovable:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mDefaultArea:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 50
    .line 51
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 9
    .line 10
    iget v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    .line 11
    .line 12
    iget v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    .line 13
    .line 14
    const-string v2, "SystemUIImageView"

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const-string/jumbo v3, "set Image Drawable!!"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-lez v0, :cond_1

    .line 34
    .line 35
    const-string/jumbo v1, "set Background Drawable!!"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final setOriginImage(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 18
    .line 19
    iput-object p1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 33
    .line 34
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const-wide/16 v1, -0x1

    .line 44
    .line 45
    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "drawable"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string/jumbo v0, "setOriginImage() this = "

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "SystemUIImageView"

    .line 82
    .line 83
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

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
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 28
    .line 29
    .line 30
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final setWhiteBgImage(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 18
    .line 19
    iput-object p1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 33
    .line 34
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const-wide/16 v1, -0x1

    .line 44
    .line 45
    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "drawable"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string/jumbo v0, "setWhiteBgImage() this = "

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "SystemUIImageView"

    .line 82
    .line 83
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final updateImage()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsLockStarEnabled:Z

    .line 2
    .line 3
    const-string v1, "SystemUIImageView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "return - set image from lock star : "

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    .line 52
    .line 53
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    .line 61
    .line 62
    :goto_1
    iget-wide v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    .line 63
    .line 64
    const-wide/16 v7, 0x1

    .line 65
    .line 66
    and-long/2addr v5, v7

    .line 67
    const-wide/16 v7, 0x0

    .line 68
    .line 69
    cmp-long v5, v5, v7

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    const/4 v7, 0x0

    .line 73
    if-eqz v5, :cond_b

    .line 74
    .line 75
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_b

    .line 80
    .line 81
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 92
    .line 93
    iget-boolean v8, v8, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemePolicyIgnorable:Z

    .line 94
    .line 95
    invoke-static {v3, v4, v5, v8}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    const-string v3, "apply style: theme : white"

    .line 102
    .line 103
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 107
    .line 108
    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImageId:I

    .line 109
    .line 110
    if-gtz v4, :cond_5

    .line 111
    .line 112
    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    .line 113
    .line 114
    if-lez v4, :cond_3

    .line 115
    .line 116
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 123
    .line 124
    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    .line 125
    .line 126
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    if-eqz v2, :cond_4

    .line 139
    .line 140
    iget v2, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 141
    .line 142
    if-lez v2, :cond_4

    .line 143
    .line 144
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 151
    .line 152
    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 153
    .line 154
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 166
    .line 167
    iget v4, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    move v6, v7

    .line 171
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 172
    .line 173
    iget v3, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackgroundId:I

    .line 174
    .line 175
    if-lez v3, :cond_f

    .line 176
    .line 177
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    .line 178
    .line 179
    if-lez v2, :cond_f

    .line 180
    .line 181
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 188
    .line 189
    iget v5, v5, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    .line 190
    .line 191
    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 196
    .line 197
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 198
    .line 199
    invoke-direct {v5, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_8

    .line 203
    .line 204
    :cond_6
    const-string v3, "apply style: theme"

    .line 205
    .line 206
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 210
    .line 211
    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImageId:I

    .line 212
    .line 213
    if-gtz v4, :cond_a

    .line 214
    .line 215
    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    .line 216
    .line 217
    if-lez v4, :cond_7

    .line 218
    .line 219
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 226
    .line 227
    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    .line 228
    .line 229
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_7
    if-eqz v2, :cond_8

    .line 242
    .line 243
    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 244
    .line 245
    if-lez v3, :cond_8

    .line 246
    .line 247
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 254
    .line 255
    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 256
    .line 257
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 266
    .line 267
    .line 268
    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 269
    .line 270
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 271
    .line 272
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 276
    .line 277
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    .line 278
    .line 279
    :goto_5
    move v4, v2

    .line 280
    goto :goto_6

    .line 281
    :cond_a
    move v6, v7

    .line 282
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 283
    .line 284
    iget v3, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackgroundId:I

    .line 285
    .line 286
    if-lez v3, :cond_f

    .line 287
    .line 288
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    .line 289
    .line 290
    if-lez v2, :cond_f

    .line 291
    .line 292
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 299
    .line 300
    iget v5, v5, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    .line 301
    .line 302
    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 307
    .line 308
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 309
    .line 310
    invoke-direct {v5, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 311
    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_b
    if-eqz v2, :cond_10

    .line 315
    .line 316
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 317
    .line 318
    iget-object v5, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    .line 319
    .line 320
    if-nez v5, :cond_c

    .line 321
    .line 322
    iget-object v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    .line 323
    .line 324
    if-eqz v2, :cond_10

    .line 325
    .line 326
    :cond_c
    const-string v2, "apply style: white-bg"

    .line 327
    .line 328
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 332
    .line 333
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    .line 334
    .line 335
    if-gtz v2, :cond_e

    .line 336
    .line 337
    const-string/jumbo v3, "white-bg res invalid = "

    .line 338
    .line 339
    .line 340
    invoke-static {v3, v2, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 344
    .line 345
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 346
    .line 347
    if-lez v2, :cond_d

    .line 348
    .line 349
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 350
    .line 351
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 356
    .line 357
    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 358
    .line 359
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 368
    .line 369
    .line 370
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 371
    .line 372
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    .line 373
    .line 374
    move v4, v2

    .line 375
    goto :goto_7

    .line 376
    :cond_e
    move v4, v2

    .line 377
    move v6, v7

    .line 378
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 379
    .line 380
    iget v3, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    .line 381
    .line 382
    if-lez v3, :cond_f

    .line 383
    .line 384
    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 385
    .line 386
    if-lez v2, :cond_f

    .line 387
    .line 388
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 395
    .line 396
    iget v5, v5, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    .line 397
    .line 398
    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 403
    .line 404
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 405
    .line 406
    invoke-direct {v5, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 407
    .line 408
    .line 409
    goto :goto_8

    .line 410
    :cond_f
    move-object v5, v0

    .line 411
    :goto_8
    move v7, v6

    .line 412
    move v9, v4

    .line 413
    move v4, v3

    .line 414
    move v3, v9

    .line 415
    goto :goto_9

    .line 416
    :cond_10
    const-string v2, "apply style: default"

    .line 417
    .line 418
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    move-object v5, v0

    .line 422
    :goto_9
    if-lez v3, :cond_15

    .line 423
    .line 424
    const-string/jumbo v2, "set Image Drawable!!"

    .line 425
    .line 426
    .line 427
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 431
    .line 432
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    if-nez v2, :cond_11

    .line 437
    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    const-string v6, "drawable is null res = "

    .line 441
    .line 442
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    :cond_11
    if-eqz v7, :cond_12

    .line 460
    .line 461
    if-eqz v2, :cond_12

    .line 462
    .line 463
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-static {v3}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-virtual {v3, v2}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    if-nez v3, :cond_13

    .line 480
    .line 481
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 482
    .line 483
    .line 484
    :cond_13
    if-eqz v2, :cond_14

    .line 485
    .line 486
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 487
    .line 488
    .line 489
    :cond_14
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    .line 491
    .line 492
    :cond_15
    if-lez v4, :cond_17

    .line 493
    .line 494
    const-string/jumbo v0, "set Background Drawable!!"

    .line 495
    .line 496
    .line 497
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 501
    .line 502
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    if-eqz v0, :cond_16

    .line 507
    .line 508
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 509
    .line 510
    .line 511
    :cond_16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    .line 513
    .line 514
    :cond_17
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
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
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

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
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

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
    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

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
    const-string v0, "SystemUIImageView"

    .line 68
    .line 69
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
