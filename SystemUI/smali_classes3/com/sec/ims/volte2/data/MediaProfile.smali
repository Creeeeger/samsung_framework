.class public Lcom/sec/ims/volte2/data/MediaProfile;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/MediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final RTT_MODE_DISABLED:I = 0x0

.field public static final RTT_MODE_FULL:I = 0x1


# instance fields
.field private mAudioBitRate:Ljava/lang/String;

.field private mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field private mAudioQuality:I

.field private mHeight:I

.field private mRttMode:I

.field private mVideoOrientation:I

.field private mVideoPause:Z

.field private mVideoQuality:I

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    .line 6
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 7
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 8
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 9
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 10
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 11
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v1, ""

    .line 25
    iput-object v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    .line 27
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 28
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 29
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 30
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 31
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 32
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 34
    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_0
    const-string v3, "AMR-WB"

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_1
    const-string v3, "AMR-NB"

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_2
    const-string v3, "EVS-FB"

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_3
    const-string v3, "EVS-SWB"

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 42
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_4
    const-string v3, "EVS-WB"

    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 44
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_5
    const-string v3, "EVS-NB"

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 46
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_6
    const-string v3, "EVS"

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 48
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 49
    :cond_7
    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 50
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    .line 15
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 16
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 17
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 18
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 19
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 20
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    .line 21
    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 22
    iput-object p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getAudioBitRate()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAudioQuality()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    .line 2
    .line 3
    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public getRttMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    .line 2
    .line 3
    return p0
.end method

.method public getVideoOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 2
    .line 3
    return p0
.end method

.method public getVideoPause()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 2
    .line 3
    return p0
.end method

.method public getVideoQuality()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 2
    .line 3
    return p0
.end method

.method public getVideoSize()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 2
    .line 3
    const/16 v1, 0x500

    .line 4
    .line 5
    const/16 v2, 0x2d0

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 10
    .line 11
    if-ne v3, v1, :cond_0

    .line 12
    .line 13
    const-string p0, "HD720"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    const-string p0, "HD720LAND"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v1, 0x280

    .line 26
    .line 27
    const/16 v2, 0x1e0

    .line 28
    .line 29
    const-string v3, "VGA"

    .line 30
    .line 31
    if-ne v0, v2, :cond_3

    .line 32
    .line 33
    iget v4, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 34
    .line 35
    if-ne v4, v1, :cond_3

    .line 36
    .line 37
    :cond_2
    move-object p0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    if-ne v0, v1, :cond_4

    .line 40
    .line 41
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 42
    .line 43
    if-ne v1, v2, :cond_4

    .line 44
    .line 45
    const-string p0, "VGALAND"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    const/16 v1, 0x140

    .line 49
    .line 50
    const/16 v2, 0xf0

    .line 51
    .line 52
    if-ne v0, v2, :cond_5

    .line 53
    .line 54
    iget v4, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 55
    .line 56
    if-ne v4, v1, :cond_5

    .line 57
    .line 58
    const-string p0, "QVGA"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 64
    .line 65
    if-ne v1, v2, :cond_6

    .line 66
    .line 67
    const-string p0, "QVGALAND"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    const/16 v1, 0xb0

    .line 71
    .line 72
    const/16 v2, 0x90

    .line 73
    .line 74
    if-ne v0, v2, :cond_7

    .line 75
    .line 76
    iget v4, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 77
    .line 78
    if-ne v4, v1, :cond_7

    .line 79
    .line 80
    const-string p0, "QCIF"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_7
    if-ne v0, v1, :cond_8

    .line 84
    .line 85
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 86
    .line 87
    if-ne v1, v2, :cond_8

    .line 88
    .line 89
    const-string p0, "QCIFLAND"

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_8
    if-nez v0, :cond_2

    .line 93
    .line 94
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 95
    .line 96
    if-nez p0, :cond_2

    .line 97
    .line 98
    const-string p0, "UNSUPPORTED"

    .line 99
    .line 100
    :goto_0
    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public setAudioBitRate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 2
    .line 3
    return-void
.end method

.method public setAudioQuality(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    .line 2
    .line 3
    return-void
.end method

.method public setRttMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoQuality(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 4
    .line 5
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p2, ""

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
