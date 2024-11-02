.class public final Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;
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
    const-string v0, "Notification"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private final isAllowedNotification(Landroid/app/NotificationManager$Policy;)Z
    .locals 0

    .line 1
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2
    .line 3
    and-int/lit8 p1, p0, 0x2

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    and-int/lit8 p1, p0, 0x4

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    and-int/lit8 p1, p0, 0x1

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    and-int/lit16 p1, p0, 0x80

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    and-int/lit8 p1, p0, 0x8

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    and-int/lit8 p1, p0, 0x10

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0x100

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method


# virtual methods
.method public getStreamType()I
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isStreamDisabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVoiceCapable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getRingerMode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVoiceCapable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;->isAllowedNotification(Landroid/app/NotificationManager$Policy;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method
