.class public final Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Ringtone"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVoiceCapable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x4

    .line 10
    :goto_0
    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVoiceCapable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "success"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "DoNotSupportCall"

    .line 12
    .line 13
    :goto_0
    return-object p0
.end method

.method public getStreamType()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
