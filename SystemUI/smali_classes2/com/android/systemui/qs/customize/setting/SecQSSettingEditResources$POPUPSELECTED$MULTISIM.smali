.class final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$MULTISIM;
.super Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MULTISIM"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final getSelectedIdx()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "multi_sim_bar_show_on_qspanel"

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    return v1
.end method

.method public final isAvailable()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->multiSIMController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v2

    .line 18
    :goto_0
    if-eqz v3, :cond_2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v0, v2

    .line 24
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isMultiSimAvailable()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "multi_sim_bar_hide_by_knox_restrictions"

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2
    return v1
.end method

.method public final updateValue(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "multi_sim_bar_show_on_qspanel"

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->updateSALog:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    const-string v0, "QPPS1025"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method
