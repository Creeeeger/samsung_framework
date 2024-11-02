.class public final Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDeviceSupportLargeCoverScreen()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isDeviceSupportTaskbar()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isFoldableTypeFlip()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isFoldableTypeFold()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isNavigationBarMigrated()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SIMPLIFIED_GESTURE:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isOpenThemeSupported()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_OPEN_THEME:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSupportSearcle()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isTablet()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
