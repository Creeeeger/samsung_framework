.class public final Lcom/android/systemui/ScRune;
.super Lcom/android/systemui/Rune;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ENHANCEMENT_DUMP_HELPER:Z

.field public static final QUICK_MANAGE_SUBSCREEN_TILE_LIST:Z

.field public static final QUICK_TILE_SUBSCREEN_SENSOR_PRIVACY:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v0, v2

    .line 17
    :goto_1
    sput-boolean v0, Lcom/android/systemui/ScRune;->ENHANCEMENT_DUMP_HELPER:Z

    .line 18
    .line 19
    const-string/jumbo v0, "user"

    .line 20
    .line 21
    .line 22
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    const-string/jumbo v0, "persist.debug.subdisplay_test_mode"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    and-int/2addr v0, v2

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_2
    const-string v1, "LARGESCREEN"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    sput-boolean v2, Lcom/android/systemui/ScRune;->QUICK_MANAGE_SUBSCREEN_TILE_LIST:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sput-boolean v0, Lcom/android/systemui/ScRune;->QUICK_TILE_SUBSCREEN_SENSOR_PRIVACY:Z

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
