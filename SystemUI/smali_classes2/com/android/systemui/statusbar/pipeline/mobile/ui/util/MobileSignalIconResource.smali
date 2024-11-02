.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getMobileSignalIconGroup(IIZ)[I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 7
    .line 8
    invoke-interface {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS_SPR:[I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 23
    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS_CHN_DISABLED:[I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS_CHN:[I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p0, 0x5

    .line 51
    if-ne p2, p0, :cond_3

    .line 52
    .line 53
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_5LEVEL_ICONS:[I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS:[I

    .line 67
    .line 68
    :goto_0
    return-object p0
.end method

.method public final getNoServiceIcon(I)I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMOBILE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 7
    .line 8
    invoke-interface {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON_TMOBILE:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 23
    .line 24
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON_VZW:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 41
    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON_SPR:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON:I

    .line 64
    .line 65
    :goto_0
    return p0
.end method
