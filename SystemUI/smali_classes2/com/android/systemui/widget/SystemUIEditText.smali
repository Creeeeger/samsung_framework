.class public Lcom/android/systemui/widget/SystemUIEditText;
.super Landroid/widget/EditText;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public mAttrCount:I

.field public mDefaultArea:Ljava/lang/String;

.field public final mDrawPaint:Landroid/graphics/Paint;

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    .line 7
    new-instance v2, Lcom/android/systemui/widget/SystemUIEditText$ResData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 8
    iput v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    .line 9
    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    .line 10
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    .line 11
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 12
    new-instance v0, Lcom/android/systemui/widget/SystemUIEditText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIEditText$1;-><init>(Lcom/android/systemui/widget/SystemUIEditText;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

    .line 13
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 14
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    move p2, v3

    .line 16
    :goto_0
    iget p3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-ge p2, p3, :cond_d

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/16 p4, 0x17

    if-ne p3, p4, :cond_0

    .line 18
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 19
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 p4, 0x9

    if-ne p3, p4, :cond_2

    .line 20
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 p4, 0x1a

    if-ne p3, p4, :cond_3

    .line 21
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 p4, 0x12

    if-ne p3, p4, :cond_4

    .line 22
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColor:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 p4, 0xf

    if-ne p3, p4, :cond_5

    .line 23
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/16 p4, 0xb

    if-ne p3, p4, :cond_6

    .line 24
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 p4, 0x1c

    if-ne p3, p4, :cond_7

    .line 25
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const/16 p4, 0x15

    if-ne p3, p4, :cond_8

    .line 26
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 p4, 0x11

    if-ne p3, p4, :cond_9

    .line 27
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/4 p4, 0x7

    if-ne p3, p4, :cond_a

    .line 28
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mMovable:Z

    goto :goto_1

    :cond_a
    const/4 p4, 0x5

    if-ne p3, p4, :cond_b

    .line 29
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 p4, 0x14

    if-ne p3, p4, :cond_c

    .line 30
    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemePolicyIgnorable:Z

    :cond_c
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 31
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    .line 32
    :cond_e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDefaultArea:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mMovable:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsLockStarEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mGroup:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const-wide/16 v2, 0x400

    .line 54
    .line 55
    or-long/2addr v0, v2

    .line 56
    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "activity"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/ActivityManager;

    .line 14
    .line 15
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v1, 0x4d

    .line 20
    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p0}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 39
    .line 40
    :goto_0
    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

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
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mMovable:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDefaultArea:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 5
    .line 6
    iget v1, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    .line 7
    .line 8
    iget v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    if-lez v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final refreshResIds()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColorId:I

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColorId:I

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColorId:I

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 58
    .line 59
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    .line 68
    .line 69
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColorId:I

    .line 80
    .line 81
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColor:Ljava/lang/String;

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
    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColorId:I

    .line 92
    .line 93
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v1, :cond_7

    .line 98
    .line 99
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColorId:I

    .line 104
    .line 105
    :cond_7
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

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
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIEditText;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 28
    .line 29
    .line 30
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
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
    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

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
    iget-wide v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

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
    invoke-virtual {p0}, Landroid/widget/EditText;->toString()Ljava/lang/String;

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
    const-string v2, "SystemUIEditText"

    .line 68
    .line 69
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/EditText;->semClearAllTextEffect()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget p3, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColorId:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget p3, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    .line 96
    .line 97
    :goto_1
    if-eqz p1, :cond_4

    .line 98
    .line 99
    iget p1, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColorId:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iget p1, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    .line 103
    .line 104
    :goto_2
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    .line 105
    .line 106
    const-wide/16 v5, 0x1

    .line 107
    .line 108
    and-long/2addr v3, v5

    .line 109
    cmp-long p2, v3, v0

    .line 110
    .line 111
    if-eqz p2, :cond_8

    .line 112
    .line 113
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_8

    .line 118
    .line 119
    iget-object p2, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 130
    .line 131
    iget-boolean v3, v3, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemePolicyIgnorable:Z

    .line 132
    .line 133
    invoke-static {p2, v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_6

    .line 138
    .line 139
    const-string p2, "apply style: theme : white"

    .line 140
    .line 141
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 145
    .line 146
    iget v0, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColorId:I

    .line 147
    .line 148
    if-lez v0, :cond_5

    .line 149
    .line 150
    move p3, v0

    .line 151
    :cond_5
    iget p2, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColorId:I

    .line 152
    .line 153
    if-lez p2, :cond_8

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    const-string p2, "apply style: theme : black"

    .line 157
    .line 158
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 162
    .line 163
    iget v0, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColorId:I

    .line 164
    .line 165
    if-lez v0, :cond_7

    .line 166
    .line 167
    move p3, v0

    .line 168
    :cond_7
    iget p2, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColorId:I

    .line 169
    .line 170
    if-lez p2, :cond_8

    .line 171
    .line 172
    :goto_3
    move p1, p2

    .line 173
    :cond_8
    const-string p2, "#%08X"

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    if-lez p3, :cond_9

    .line 177
    .line 178
    iget-object v1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    .line 189
    .line 190
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string/jumbo v3, "textColor="

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :cond_9
    if-lez p1, :cond_a

    .line 230
    .line 231
    iget-object p3, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-virtual {p3, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-virtual {p0, p3, v0, v1, p1}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 254
    .line 255
    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string/jumbo p3, "shadowColor="

    .line 259
    .line 260
    .line 261
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    :cond_a
    return-void
.end method
