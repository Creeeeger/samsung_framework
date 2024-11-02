.class public final Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# static fields
.field public static final sConditionMap:Ljava/util/HashMap;


# instance fields
.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final disableSafeMediaVolume()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 20
    .line 21
    const-string p1, "FakeVolumeInfraMediator"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :cond_0
    array-length v0, p2

    .line 28
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 33
    .line 34
    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final getActiveBtDeviceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getActiveBtDeviceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAudioCastDeviceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getAudioCastDeviceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getBixbyServiceState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBixbyServiceState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBtCallDeviceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBtCallDeviceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getCaptionsComponentState(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCaptionsComponentState(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCutoutHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCutoutHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDevicesForStreamMusic()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getDevicesForStreamMusic()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getEarProtectLimit()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getEarProtectLimit()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMultiSoundDevice()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getMultiSoundDevice()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMusicFineVolume()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getMusicFineVolume()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getPinAppName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinAppName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPinDevice()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDevice()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getPinDeviceName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDeviceName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSmartViewDeviceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSmartViewDeviceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSystemTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSystemTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getTimeoutControls()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControls()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getTimeoutControlsText()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControlsText()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final initSound(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isAllSoundOff()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAllSoundOff()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAodVolumePanel()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAodVolumePanel()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAudioMirroring()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAudioMirroring()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBixbyServiceForeground()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBixbyServiceForeground()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBixbyServiceOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBixbyServiceOn()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBleCallDeviceOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBleCallDeviceOn()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBluetoothScoOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBluetoothScoOn()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBudsTogetherEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBudsTogetherEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isCaptionEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isCaptionEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDensityOrFontChanged()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDensityOrFontChanged()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDexMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDexMode()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDisplayTypeChanged()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDisplayTypeChanged()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 23
    .line 24
    const-string p1, "FakeVolumeInfraMediator"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return p2

    .line 30
    :cond_0
    array-length v0, p2

    .line 31
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 36
    .line 37
    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final isHasVibrator()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isHasVibrator()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isKeyguardState()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKeyguardState()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isKioskModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKioskModeEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isLcdOff()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLcdOff()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isLeBroadcasting()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLeBroadcasting()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isMediaDefault()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMediaDefault()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isMultiSoundOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMultiSoundOn()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isOrientationChanged()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isOrientationChanged()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSafeMediaVolumeDeviceOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumeDeviceOn()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSafeMediaVolumePinDeviceOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumePinDeviceOn()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSetupWizardComplete()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSetupWizardComplete()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isShadeLockedState()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isShadeLockedState()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSmartView()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isStandalone()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isStandalone()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSupportTvVolumeSync()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSupportTvVolumeSync()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUserInCall()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isUserInCall()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isVoiceCapable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVoiceCapable()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isVolumeStarEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVolumeStarEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isZenModeEnabled(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeEnabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isZenModeNone(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeNone(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isZenModePriorityOnly(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModePriorityOnly(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final notifyVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final playSound()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    return-void
.end method

.method public final playSound(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound(I)V

    return-void
.end method

.method public final sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendSystemDialogsCloseAction()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendSystemDialogsCloseAction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setActiveStream(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCaptionEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setCaptionEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRingerMode(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSafeMediaVolume()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeMediaVolume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSafeVolumeDialogShowing(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeVolumeDialogShowing(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setStreamVolume(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startHearingEnhancementsActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startHearingEnhancementsActivity()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startLeBroadcastActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startLeBroadcastActivity()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startSettingsActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startSettingsActivity()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startVolumeSettingsActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startVolumeSettingsActivity()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toggleWifiDisplayMute()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->toggleWifiDisplayMute()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final userActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
