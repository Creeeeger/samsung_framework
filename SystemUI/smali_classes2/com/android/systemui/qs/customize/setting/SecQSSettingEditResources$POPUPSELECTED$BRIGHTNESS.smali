.class final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$BRIGHTNESS;
.super Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BRIGHTNESS"
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
    const-string v0, "brightness_on_top"

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
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
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
    const-string v1, "brightness_on_top"

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
    const-string v0, "QPPS1023"

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
