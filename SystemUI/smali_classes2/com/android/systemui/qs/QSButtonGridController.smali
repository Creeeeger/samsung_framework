.class public final Lcom/android/systemui/qs/QSButtonGridController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BUTTON_WIDTH_MAX_RATIO:F

.field public static final BUTTON_WIDTH_MIN_RATIO:F


# instance fields
.field public final mQSPanelControllerLazy:Ldagger/Lazy;

.field public final mSettingListener:Lcom/android/systemui/qs/QSButtonGridController$1;

.field public final mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v1, 0x3fb47ae1    # 1.41f

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v1, 0x3fc28f5c    # 1.52f

    .line 10
    .line 11
    .line 12
    :goto_0
    sput v1, Lcom/android/systemui/qs/QSButtonGridController;->BUTTON_WIDTH_MAX_RATIO:F

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const v0, 0x3f1eb852    # 0.62f

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const v0, 0x3f428f5c    # 0.76f

    .line 21
    .line 22
    .line 23
    :goto_1
    sput v0, Lcom/android/systemui/qs/QSButtonGridController;->BUTTON_WIDTH_MIN_RATIO:F

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "quickstar_qs_tile_layout_custom_matrix"

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix_width"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    filled-new-array {p1, v0}, [Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mSettingsValueList:[Landroid/net/Uri;

    .line 23
    .line 24
    new-instance p1, Lcom/android/systemui/qs/QSButtonGridController$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSButtonGridController$1;-><init>(Lcom/android/systemui/qs/QSButtonGridController;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mSettingListener:Lcom/android/systemui/qs/QSButtonGridController$1;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/systemui/qs/QSButtonGridController;->mQSPanelControllerLazy:Ldagger/Lazy;

    .line 32
    .line 33
    return-void
.end method

.method public static getDefaultProgress()I
    .locals 3

    .line 1
    sget v0, Lcom/android/systemui/qs/QSButtonGridController;->BUTTON_WIDTH_MAX_RATIO:F

    .line 2
    .line 3
    sget v1, Lcom/android/systemui/qs/QSButtonGridController;->BUTTON_WIDTH_MIN_RATIO:F

    .line 4
    .line 5
    sub-float v1, v0, v1

    .line 6
    .line 7
    const/high16 v2, 0x41200000    # 10.0f

    .line 8
    .line 9
    div-float/2addr v1, v2

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sub-float/2addr v0, v2

    .line 13
    div-float/2addr v0, v1

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public static isQSButtonGridPopupEnabled()Z
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
