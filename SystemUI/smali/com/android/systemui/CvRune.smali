.class public final Lcom/android/systemui/CvRune;
.super Lcom/android/systemui/Rune;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final HOTSPOT_CHECK_MHSDBG:Z

.field public static final HOTSPOT_CONFIG_OP_BRANDING:Ljava/lang/String;

.field public static final HOTSPOT_ENABLED_SPRINT_EXTENSION:Z

.field public static final HOTSPOT_USE_CHAMELEON:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CscFeature_Common_EnableSprintExtension"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_ENABLED_SPRINT_EXTENSION:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "CscFeature_Common_UseChameleon"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_USE_CHAMELEON:Z

    .line 24
    .line 25
    const-string v0, "eng"

    .line 26
    .line 27
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 45
    :goto_1
    sput-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_CHECK_MHSDBG:Z

    .line 46
    .line 47
    const-string/jumbo v0, "vendor.wifiap.simcheck.disable"

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "1"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 64
    .line 65
    const-string v2, ""

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 74
    .line 75
    sput-object v0, Lcom/android/systemui/CvRune;->HOTSPOT_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 76
    .line 77
    const-string/jumbo v0, "ro.product.first_api_level"

    .line 78
    .line 79
    .line 80
    const/4 v1, -0x1

    .line 81
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
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
