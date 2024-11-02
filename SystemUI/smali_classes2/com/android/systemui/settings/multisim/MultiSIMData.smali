.class public final Lcom/android/systemui/settings/multisim/MultiSIMData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public airplaneMode:Z

.field public carrierName:[Ljava/lang/String;

.field public changingDataInternally:Z

.field public changingNetMode:Z

.field public defaultDataSimId:I

.field public defaultSmsSimId:I

.field public defaultVoiceSimId:I

.field public isCalling:Z

.field public isDataEnabled:Z

.field public isESimSlot:[Z

.field public isMultiSimReady:Z

.field public isRestrictionsForMmsUse:Z

.field public isSRoaming:Z

.field public isSecondaryUser:Z

.field public phoneNumber:[Ljava/lang/String;

.field public simImageIdx:[I

.field public simName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    filled-new-array {v0, v1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 17
    .line 18
    const-string v1, "SIM 1"

    .line 19
    .line 20
    const-string v2, "SIM 2"

    .line 21
    .line 22
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v2, v1, [Z

    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 40
    .line 41
    new-array v2, v1, [Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 44
    .line 45
    new-array v1, v1, [Ljava/lang/String;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 4
    .line 5
    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 8
    .line 9
    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 12
    .line 13
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 24
    .line 25
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 40
    .line 41
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 44
    .line 45
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 57
    .line 58
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, [Ljava/lang/String;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 67
    .line 68
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 69
    .line 70
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 75
    .line 76
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, [Ljava/lang/String;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, [Ljava/lang/String;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 95
    .line 96
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 14
    .line 15
    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 26
    .line 27
    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 34
    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 38
    .line 39
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 40
    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 50
    .line 51
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 52
    .line 53
    if-ne v1, v3, :cond_2

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 58
    .line 59
    if-ne v1, v3, :cond_2

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 62
    .line 63
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 64
    .line 65
    if-ne v1, v3, :cond_2

    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 68
    .line 69
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 70
    .line 71
    if-ne v1, v3, :cond_2

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 74
    .line 75
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 76
    .line 77
    if-ne v1, v3, :cond_2

    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 80
    .line 81
    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 82
    .line 83
    if-ne v1, v3, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 86
    .line 87
    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 88
    .line 89
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 96
    .line 97
    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 106
    .line 107
    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 108
    .line 109
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 116
    .line 117
    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_2

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    move v0, v2

    .line 137
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MultiSIMData{mDefaultVoiceSimId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mDefaultSmsSimId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mDefaultDataSimId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", SimImageIdx="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", SimName="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", mAirplaneMode="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", mChangNetModeDelaying="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", mIsSRoaming="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", mChangingDataInternally="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", mIsESimSlot="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 107
    .line 108
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ", carrierName="

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ", phoneNumber="

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", isDataEnabled="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", isRestrictionsForMmsUse="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", isMultiSimReady="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", isCalling="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", isSecondaryUser="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 189
    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const/16 p0, 0x7d

    .line 194
    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0
.end method
