.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final LARGE_POS:I

.field public static final REMOVE_ICON_ID:I


# instance fields
.field public final MIN_DEFAULT_DPI:I

.field public final TAG:Ljava/lang/String;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final editor:Landroid/content/SharedPreferences$Editor;

.field public isAnotherActivityOverMain:Z

.field public isCurrentTopEdit:Z

.field public isMainRelaunchedByConfigChanged:Z

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mContext:Landroid/content/Context;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final multiSIMController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field public tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

.field public final tileHost:Lcom/android/systemui/qs/QSTileHost;

.field public tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->REMOVE_ICON_ID:I

    .line 12
    .line 13
    const/16 v0, 0x270f

    .line 14
    .line 15
    sput v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->LARGE_POS:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/tuner/TunerService;Landroid/content/Context;Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->multiSIMController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    const-string p1, "SecQSSettingEdit"

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const/16 p1, 0xd5

    .line 27
    .line 28
    iput p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->MIN_DEFAULT_DPI:I

    .line 29
    .line 30
    const-string/jumbo p1, "quick_pref"

    .line 31
    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->editor:Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    return-void
.end method

.method public static getBottomPadding(Landroidx/activity/ComponentActivity;Landroid/view/WindowInsets;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v1, 0x7f070968

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f070bc0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const v3, 0x7f07124b

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    sub-int/2addr v1, p0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sub-int p0, v1, p1

    .line 56
    .line 57
    if-le p0, v2, :cond_1

    .line 58
    .line 59
    sub-int p1, v1, v2

    .line 60
    .line 61
    :cond_1
    return p1
.end method

.method public static getSidePadding(Landroidx/activity/ComponentActivity;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const v1, 0x7f070b44

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p0, v0

    .line 28
    :goto_0
    sub-int/2addr v0, p0

    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    return v0
.end method


# virtual methods
.method public final isPhoneLandscape()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 7
    .line 8
    iget v2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->MIN_DEFAULT_DPI:I

    .line 9
    .line 10
    if-le v0, v2, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-ne p0, v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    return v1
.end method
