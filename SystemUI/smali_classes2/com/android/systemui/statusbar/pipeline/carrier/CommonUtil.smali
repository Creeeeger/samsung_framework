.class public final Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

.field public final countryISO:Ljava/lang/String;

.field public final extraSystemIcons:Ljava/util/List;

.field public overriddenIconBranding:Ljava/lang/String;

.field public final salesCode:Ljava/lang/String;

.field public final systemPropertiesWrapper:Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->systemPropertiesWrapper:Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->salesCode:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "CountryISO"

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "CscFeature_SystemUI_ConfigDefIndicatorAdditionalSystemIcon"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, ","

    .line 35
    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v2, 0x6

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {p1, v0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->extraSystemIcons:Ljava/util/List;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->overriddenIconBranding:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo p1, "user"

    .line 51
    .line 52
    .line 53
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    const-string/jumbo p1, "persist.debug.subdisplay_test_mode"

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    and-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final getIconBranding(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->overriddenIconBranding:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    :cond_1
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 37
    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :cond_2
    :goto_0
    return-object p0
.end method

.method public final supportTSS20()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->systemPropertiesWrapper:Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->singleSKU:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->unified:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method
