.class public final Lcom/android/systemui/navigationbar/util/NavigationModeUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

.field public static bottomInsetScaleArray:[F

.field public static sideInsetScaleArray:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    sput-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    .line 12
    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    sput-object v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getGestureOverlayPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/systemui/BasicRune;->supportSamsungGesturalModeAsDefault()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    xor-int/2addr v1, v2

    .line 11
    const-string/jumbo v3, "navigation_bar_gesture_detail_type"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string/jumbo v1, "navigation_bar_gesture_hint"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-nez v0, :cond_2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-eqz v2, :cond_3

    .line 44
    .line 45
    const-string p0, "com.android.internal.systemui.navbar.gestural"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const-string p0, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    .line 49
    .line 50
    :goto_1
    return-object p0
.end method

.method public static final isBottomGesture(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method
