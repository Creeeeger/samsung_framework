.class public final enum Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field private static final stringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCodec:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 8

    .line 1
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 2
    .line 3
    sget-object v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 4
    .line 5
    sget-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 6
    .line 7
    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 8
    .line 9
    sget-object v4, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 10
    .line 11
    sget-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 12
    .line 13
    sget-object v6, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 14
    .line 15
    sget-object v7, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const-string v2, "AUDIO_CODEC_NONE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 12
    .line 13
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "AMR-WB"

    .line 17
    .line 18
    const-string v4, "AUDIO_CODEC_AMRWB"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 24
    .line 25
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "AMR-NB"

    .line 29
    .line 30
    const-string v4, "AUDIO_CODEC_AMRNB"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 36
    .line 37
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "EVS-NB"

    .line 41
    .line 42
    const-string v4, "AUDIO_CODEC_EVSNB"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 48
    .line 49
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "EVS-WB"

    .line 53
    .line 54
    const-string v4, "AUDIO_CODEC_EVSWB"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 60
    .line 61
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "EVS-SWB"

    .line 65
    .line 66
    const-string v4, "AUDIO_CODEC_EVSSWB"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 72
    .line 73
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "EVS-FB"

    .line 77
    .line 78
    const-string v4, "AUDIO_CODEC_EVSFB"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 84
    .line 85
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "EVS"

    .line 89
    .line 90
    const-string v4, "AUDIO_CODEC_EVS"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 96
    .line 97
    invoke-static {}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 102
    .line 103
    new-instance v0, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    .line 109
    .line 110
    invoke-static {}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    array-length v1, v0

    .line 115
    :goto_0
    if-ge v3, v1, :cond_0

    .line 116
    .line 117
    aget-object v2, v0, v3

    .line 118
    .line 119
    sget-object v4, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    .line 1
    const-class v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
