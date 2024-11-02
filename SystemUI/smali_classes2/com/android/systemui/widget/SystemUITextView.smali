.class public Lcom/android/systemui/widget/SystemUITextView;
.super Landroid/widget/TextView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public mAttrCount:I

.field public final mBlurSettings:Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

.field public final mCompoundVisible:Z

.field public mDefaultArea:Ljava/lang/String;

.field public mDensityDpi:I

.field public mFontScale:F

.field public mIsCallbackRegistered:Z

.field public final mIsFixedFontSize:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

.field public mMaxFontScale:F

.field public mOriginalFontSizeDp:F

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    const v2, 0x3f99999a    # 1.2f

    .line 8
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v3, 0x1

    .line 11
    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    .line 12
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    .line 13
    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    .line 14
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    .line 15
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 16
    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUITextView$1;-><init>(Lcom/android/systemui/widget/SystemUITextView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

    .line 17
    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;-><init>(Lcom/android/systemui/widget/SystemUITextView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mBlurSettings:Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

    .line 18
    sget-object v0, Lcom/android/systemui/R$styleable;->KeyguardFontSize:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    .line 20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 22
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-direct {p2}, Lcom/android/systemui/widget/SystemUITextView$ResData;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz p1, :cond_17

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    move p2, v2

    .line 25
    :goto_0
    iget p3, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-ge p2, p3, :cond_16

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/16 p4, 0x17

    if-ne p3, p4, :cond_0

    .line 27
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 28
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 p4, 0x9

    if-ne p3, p4, :cond_2

    .line 29
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 p4, 0x1a

    if-ne p3, p4, :cond_3

    .line 30
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 p4, 0x12

    if-ne p3, p4, :cond_4

    .line 31
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 p4, 0xf

    if-ne p3, p4, :cond_5

    .line 32
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 p4, 0xb

    if-ne p3, p4, :cond_6

    .line 33
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 p4, 0x1c

    if-ne p3, p4, :cond_7

    .line 34
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 p4, 0x15

    if-ne p3, p4, :cond_8

    .line 35
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/16 p4, 0x11

    if-ne p3, p4, :cond_9

    .line 36
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const/16 p4, 0x8

    if-ne p3, p4, :cond_a

    .line 37
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackground:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const/16 p4, 0x19

    if-ne p3, p4, :cond_b

    .line 38
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const/16 p4, 0xd

    if-ne p3, p4, :cond_c

    .line 39
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackground:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const/16 p4, 0xe

    if-ne p3, p4, :cond_d

    .line 40
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/4 p4, 0x2

    if-ne p3, p4, :cond_e

    .line 41
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawable:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/4 p4, 0x4

    if-ne p3, p4, :cond_f

    .line 42
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScale:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const/4 p4, 0x3

    if-ne p3, p4, :cond_10

    .line 43
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPadding:Ljava/lang/String;

    goto :goto_1

    :cond_10
    const/4 p4, 0x7

    if-ne p3, p4, :cond_11

    .line 44
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mMovable:Z

    goto :goto_1

    :cond_11
    const/4 p4, 0x5

    if-ne p3, p4, :cond_12

    .line 45
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_12
    const/16 p4, 0xc

    if-ne p3, p4, :cond_13

    .line 46
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mReduceTransparency:Z

    goto :goto_1

    :cond_13
    const/16 p4, 0x14

    if-ne p3, p4, :cond_14

    .line 47
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemePolicyIgnorable:Z

    goto :goto_1

    :cond_14
    const/16 p4, 0x18

    if-ne p3, p4, :cond_15

    .line 48
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperColorIgnorable:Z

    :cond_15
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 49
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    .line 50
    :cond_17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onAttachedToWindow mAttrCount = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    .line 12
    .line 13
    const-string v2, "SystemUITextView"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mMovable:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

    .line 35
    .line 36
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsLockStarEnabled:Z

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mGroup:Ljava/lang/String;

    .line 50
    .line 51
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

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
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mMovable:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

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
    cmpl-float v1, v1, v2

    .line 24
    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "mOriginalFontSizeDp "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "  "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "SystemUITextView"

    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 94
    .line 95
    iget v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    .line 96
    .line 97
    iget v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 98
    .line 99
    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackgroundId:I

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    if-lez v1, :cond_1

    .line 103
    .line 104
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    :cond_1
    if-lez v2, :cond_2

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {p0, v1, v4, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 142
    .line 143
    .line 144
    :cond_2
    if-lez v0, :cond_3

    .line 145
    .line 146
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    return-void
.end method

.method public final refreshResIds()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 58
    .line 59
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 68
    .line 69
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    .line 80
    .line 81
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColorId:I

    .line 92
    .line 93
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 94
    .line 95
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColorId:I

    .line 104
    .line 105
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 106
    .line 107
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackground:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackgroundId:I

    .line 118
    .line 119
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 120
    .line 121
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackground:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackgroundId:I

    .line 130
    .line 131
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 132
    .line 133
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackground:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackgroundId:I

    .line 142
    .line 143
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 144
    .line 145
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v2, :cond_b

    .line 148
    .line 149
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackgroundId:I

    .line 154
    .line 155
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 156
    .line 157
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawable:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v2, :cond_c

    .line 160
    .line 161
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    .line 166
    .line 167
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 168
    .line 169
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScale:Ljava/lang/String;

    .line 170
    .line 171
    const-string v3, "dimen"

    .line 172
    .line 173
    if-eqz v2, :cond_d

    .line 174
    .line 175
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    .line 180
    .line 181
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPadding:Ljava/lang/String;

    .line 184
    .line 185
    if-eqz v1, :cond_e

    .line 186
    .line 187
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    .line 192
    .line 193
    :cond_e
    return-void
.end method

.method public final setMaxFontScale(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x3f99999a    # 1.2f

    .line 8
    .line 9
    .line 10
    cmpg-float v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    .line 16
    .line 17
    :goto_0
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

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
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 28
    .line 29
    .line 30
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final updateCompoundDrawable(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 13
    .line 14
    iget v1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    .line 15
    .line 16
    if-lez v1, :cond_7

    .line 17
    .line 18
    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    .line 19
    .line 20
    if-gtz p1, :cond_1

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 31
    .line 32
    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 46
    .line 47
    iget v3, v3, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    float-to-int v1, v1

    .line 54
    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    .line 55
    .line 56
    const/high16 v4, 0x3f800000    # 1.0f

    .line 57
    .line 58
    sub-float v4, v3, v4

    .line 59
    .line 60
    add-float/2addr v4, v3

    .line 61
    int-to-float v1, v1

    .line 62
    mul-float/2addr v1, v4

    .line 63
    float-to-int v1, v1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    .line 70
    .line 71
    const-wide/16 v3, 0x1

    .line 72
    .line 73
    and-long/2addr v0, v3

    .line 74
    const-wide/16 v3, 0x0

    .line 75
    .line 76
    cmp-long v0, v0, v3

    .line 77
    .line 78
    const-string v1, "SystemUITextView"

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const-string v3, "#%08X"

    .line 95
    .line 96
    const-string v4, "filter: "

    .line 97
    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 111
    .line 112
    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    .line 113
    .line 114
    if-lez v0, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 123
    .line 124
    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    .line 125
    .line 126
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 158
    .line 159
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 160
    .line 161
    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 166
    .line 167
    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    .line 168
    .line 169
    if-lez v0, :cond_5

    .line 170
    .line 171
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 178
    .line 179
    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    .line 180
    .line 181
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 213
    .line 214
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 215
    .line 216
    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    .line 230
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 231
    .line 232
    iget-object v3, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

    .line 233
    .line 234
    if-eqz v3, :cond_5

    .line 235
    .line 236
    iget-object v3, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    .line 237
    .line 238
    if-eqz v3, :cond_5

    .line 239
    .line 240
    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    .line 241
    .line 242
    if-lez v0, :cond_5

    .line 243
    .line 244
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 251
    .line 252
    iget v3, v3, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    .line 253
    .line 254
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 259
    .line 260
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 261
    .line 262
    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_5
    move-object v3, v2

    .line 267
    :goto_0
    if-eqz p1, :cond_6

    .line 268
    .line 269
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 270
    .line 271
    .line 272
    :cond_6
    :try_start_0
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 276
    .line 277
    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    .line 278
    .line 279
    if-lez p1, :cond_7

    .line 280
    .line 281
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 290
    .line 291
    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    float-to-int p1, p1

    .line 298
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :catch_0
    const-string p0, "Exception adding mCompoundDrawable!"

    .line 303
    .line 304
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    :cond_7
    :goto_1
    return-void
.end method

.method public final updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p2, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    .line 11
    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    .line 12
    .line 13
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v3, 0x3f99999a    # 1.2f

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 29
    .line 30
    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eq p2, v0, :cond_1

    .line 34
    .line 35
    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    .line 36
    .line 37
    move p2, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move p2, v3

    .line 40
    :goto_1
    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    .line 41
    .line 42
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iput v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v2, p2

    .line 52
    :goto_2
    if-nez v2, :cond_3

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    :cond_3
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    .line 57
    .line 58
    iget p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    .line 59
    .line 60
    mul-float/2addr p1, p2

    .line 61
    iget-object p2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .line 73
    mul-float/2addr p1, p2

    .line 74
    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    .line 80
    .line 81
    .line 82
    :cond_4
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
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

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
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

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
    invoke-virtual {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

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
    const-string v0, "SystemUITextView"

    .line 68
    .line 69
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    .line 78
    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final updateTextView()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->semClearAllTextEffect()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const v5, 0x7f06005e

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const v5, 0x7f060996

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :goto_0
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/high16 v6, 0x437f0000    # 255.0f

    .line 68
    .line 69
    mul-float/2addr v5, v6

    .line 70
    float-to-int v5, v5

    .line 71
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackgroundId:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackgroundId:I

    .line 87
    .line 88
    :goto_1
    iget-wide v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    .line 89
    .line 90
    const-wide/16 v8, 0x1

    .line 91
    .line 92
    and-long/2addr v6, v8

    .line 93
    const-wide/16 v8, 0x0

    .line 94
    .line 95
    cmp-long v6, v6, v8

    .line 96
    .line 97
    const/4 v7, -0x1

    .line 98
    const-string v8, "SystemUITextView"

    .line 99
    .line 100
    const/4 v9, 0x0

    .line 101
    if-eqz v6, :cond_9

    .line 102
    .line 103
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_9

    .line 108
    .line 109
    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    iget-object v10, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 112
    .line 113
    iget-object v10, v10, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v10}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v10

    .line 119
    iget-object v12, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 120
    .line 121
    iget-boolean v12, v12, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemePolicyIgnorable:Z

    .line 122
    .line 123
    invoke-static {v6, v10, v11, v12}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_5

    .line 128
    .line 129
    const-string v6, "apply style: theme : white"

    .line 130
    .line 131
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 135
    .line 136
    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    .line 137
    .line 138
    if-lez v10, :cond_3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move v10, v7

    .line 142
    :goto_2
    iget v11, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColorId:I

    .line 143
    .line 144
    if-lez v11, :cond_4

    .line 145
    .line 146
    move v7, v11

    .line 147
    :cond_4
    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackgroundId:I

    .line 148
    .line 149
    if-lez v6, :cond_8

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_5
    const-string v6, "apply style: theme : black"

    .line 153
    .line 154
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 158
    .line 159
    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    .line 160
    .line 161
    if-lez v10, :cond_6

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    move v10, v7

    .line 165
    :goto_3
    iget v11, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColorId:I

    .line 166
    .line 167
    if-lez v11, :cond_7

    .line 168
    .line 169
    move v7, v11

    .line 170
    :cond_7
    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackgroundId:I

    .line 171
    .line 172
    if-lez v6, :cond_8

    .line 173
    .line 174
    :goto_4
    move v5, v6

    .line 175
    :cond_8
    move v6, v7

    .line 176
    move v7, v10

    .line 177
    goto :goto_7

    .line 178
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 179
    .line 180
    iget-boolean v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperColorIgnorable:Z

    .line 181
    .line 182
    if-eqz v10, :cond_d

    .line 183
    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_a
    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    .line 190
    .line 191
    :goto_5
    if-eqz v1, :cond_b

    .line 192
    .line 193
    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_b
    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 197
    .line 198
    :goto_6
    if-lez v10, :cond_c

    .line 199
    .line 200
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2, v10, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    :cond_c
    if-lez v6, :cond_d

    .line 211
    .line 212
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v4, v6, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    :cond_d
    move v6, v7

    .line 223
    :goto_7
    iget-object v10, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 224
    .line 225
    iget-boolean v10, v10, Lcom/android/systemui/widget/SystemUITextView$ResData;->mReduceTransparency:Z

    .line 226
    .line 227
    if-eqz v10, :cond_f

    .line 228
    .line 229
    iget-object v10, p0, Lcom/android/systemui/widget/SystemUITextView;->mBlurSettings:Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

    .line 230
    .line 231
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    const-class v10, Lcom/android/systemui/util/SettingsHelper;

    .line 235
    .line 236
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    check-cast v10, Lcom/android/systemui/util/SettingsHelper;

    .line 241
    .line 242
    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-eqz v10, :cond_f

    .line 247
    .line 248
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-eqz v1, :cond_e

    .line 255
    .line 256
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 257
    .line 258
    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 262
    .line 263
    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    .line 264
    .line 265
    :goto_8
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 282
    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_f
    if-lez v7, :cond_10

    .line 286
    .line 287
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 288
    .line 289
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1, v7, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :cond_10
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-lez v6, :cond_11

    .line 309
    .line 310
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v3, v6, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    :cond_11
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 321
    .line 322
    .line 323
    :goto_9
    if-lez v5, :cond_12

    .line 324
    .line 325
    const-string/jumbo v0, "set Background Drawable!!"

    .line 326
    .line 327
    .line 328
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    .line 339
    .line 340
    :cond_12
    return-void
.end method
