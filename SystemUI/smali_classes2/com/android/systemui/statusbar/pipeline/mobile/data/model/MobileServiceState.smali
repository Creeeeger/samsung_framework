.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# instance fields
.field public final dataRegState:I

.field public final dataRoamingType:I

.field public final femtoCellIndicator:I

.field public final mSimSubmode:I

.field public final optionalRadioTech:I

.field public final simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

.field public final telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field public final vioceCallAvailable:Z

.field public final voiceNetworkType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;-><init>(IZIIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZIIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    .line 5
    iput p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    .line 6
    iput p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    .line 7
    iput p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->femtoCellIndicator:I

    .line 8
    iput p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    .line 9
    iput p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 10
    iput-object p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 11
    iput-object p9, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    return-void
.end method

.method public constructor <init>(IZIIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 12
    new-instance p8, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {p8, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 13
    sget-object p9, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;->NO_SIM_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 14
    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;-><init>(IZIIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;)V

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

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
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    .line 28
    .line 29
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    .line 35
    .line 36
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->femtoCellIndicator:I

    .line 42
    .line 43
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->femtoCellIndicator:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    .line 49
    .line 50
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 56
    .line 57
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 63
    .line 64
    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 65
    .line 66
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_9

    .line 71
    .line 72
    return v2

    .line 73
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 76
    .line 77
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_a

    .line 82
    .line 83
    return v2

    .line 84
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    add-int/2addr v0, v1

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    .line 18
    .line 19
    const/16 v2, 0x1f

    .line 20
    .line 21
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->femtoCellIndicator:I

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    .line 38
    .line 39
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 44
    .line 45
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v1, v0

    .line 56
    mul-int/lit8 v1, v1, 0x1f

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/2addr p0, v1

    .line 65
    return p0
.end method

.method public final logDiffs(Lcom/android/systemui/log/table/Diffable;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    .line 4
    .line 5
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "optionalRadioTech"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const-string/jumbo v0, "voiceCallAvailable"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    .line 28
    .line 29
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    .line 30
    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const-string v0, "dataRegtate"

    .line 34
    .line 35
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    .line 39
    .line 40
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    .line 41
    .line 42
    if-eq v0, v1, :cond_3

    .line 43
    .line 44
    const-string v0, "dataRoaming"

    .line 45
    .line 46
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->femtoCellIndicator:I

    .line 50
    .line 51
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->femtoCellIndicator:I

    .line 52
    .line 53
    if-eq v0, v1, :cond_4

    .line 54
    .line 55
    const-string v0, "getFemtoCall"

    .line 56
    .line 57
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    .line 61
    .line 62
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    .line 63
    .line 64
    if-eq v0, v1, :cond_5

    .line 65
    .line 66
    const-string/jumbo v0, "voiceNetworkType"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 73
    .line 74
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 75
    .line 76
    if-eq v0, v1, :cond_6

    .line 77
    .line 78
    const-string v0, "mSimSubmode"

    .line 79
    .line 80
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 86
    .line 87
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_7

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string/jumbo p1, "simCard"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    return-void
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MobileServiceState(optionalRadioTech="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", vioceCallAvailable="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", dataRegState="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", dataRoamingType="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", femtoCellIndicator="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->femtoCellIndicator:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", voiceNetworkType="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mSimSubmode="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", telephonyDisplayInfo="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", simCardInfo="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, ")"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
