.class public final Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public appMirroring:Z

.field public bluetoothDeviceAddress:Ljava/lang/String;

.field public bluetoothDeviceName:Ljava/lang/String;

.field public dynamic:Z

.field public level:I

.field public levelMax:I

.field public levelMin:I

.field public muteSupported:Z

.field public muted:Z

.field public name:I

.field public nameRes:Ljava/lang/String;

.field public remoteFixedVolume:Z

.field public remoteLabel:Ljava/lang/String;

.field public remoteSpeaker:Z

.field public routedToBluetooth:Z

.field public routedToBuds:Z

.field public routedToBuds3:Z

.field public routedToHeadset:Z

.field public routedToHearingAid:Z

.field public routedToHomeMini:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    .line 9
    .line 10
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 11
    .line 12
    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 13
    .line 14
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 15
    .line 16
    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 19
    .line 20
    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    .line 27
    .line 28
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    .line 29
    .line 30
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 31
    .line 32
    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    .line 47
    .line 48
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    .line 51
    .line 52
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    .line 55
    .line 56
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    .line 59
    .line 60
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    .line 63
    .line 64
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    .line 67
    .line 68
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    .line 71
    .line 72
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    .line 75
    .line 76
    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 83
    .line 84
    iput-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 85
    .line 86
    return-object v0
.end method
