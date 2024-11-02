.class public final Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get5gIconConfig(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const-string v0, ""

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "CarrierFeature_SystemUI_ConfigOpBranding5GIcon"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "CscFeature_SystemUI_ConfigOpBranding5GIcon"

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final getLteWideBandConfig(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const-string v0, ""

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "CarrierFeature_SystemUI_ConfigOpBrandingLTEWideBandIcon"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "CscFeature_SystemUI_ConfigOpBrandingLTEWideBandIcon"

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0
.end method
