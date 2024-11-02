.class public final enum Lcom/samsung/android/knox/cmfa/AuthFactorType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/cmfa/AuthFactorType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/cmfa/AuthFactorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum DEVICE_INTEGRITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum FACE_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum LAPTOP_PROXIMITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum LOCK_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum PROCESS_ACTIVITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 13

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->DEVICE_INTEGRITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knox/cmfa/AuthFactorType;->FACE_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/knox/cmfa/AuthFactorType;->WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LAPTOP_PROXIMITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/knox/cmfa/AuthFactorType;->ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 14
    .line 15
    sget-object v7, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 16
    .line 17
    sget-object v8, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 18
    .line 19
    sget-object v9, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 20
    .line 21
    sget-object v10, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PROCESS_ACTIVITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 22
    .line 23
    sget-object v11, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LOCK_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 24
    .line 25
    sget-object v12, Lcom/samsung/android/knox/cmfa/AuthFactorType;->CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 26
    .line 27
    filled-new-array/range {v0 .. v12}, [Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 2
    .line 3
    const-string v1, "DEVICE_INTEGRITY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->DEVICE_INTEGRITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 12
    .line 13
    const-string v1, "FACE_DETECTION"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->FACE_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 22
    .line 23
    const-string v1, "TOUCH_DETECTION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 32
    .line 33
    const-string v1, "WATCH_ON"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 42
    .line 43
    const-string v1, "LAPTOP_PROXIMITY"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LAPTOP_PROXIMITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 52
    .line 53
    const-string v1, "ON_BODY_DETECTION"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 62
    .line 63
    const-string v1, "TRUSTED_LOCATION"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 70
    .line 71
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 72
    .line 73
    const-string v1, "TRUSTED_DEVICE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 80
    .line 81
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 82
    .line 83
    const-string v1, "TRUSTED_SERVICE"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 91
    .line 92
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 93
    .line 94
    const-string v1, "PASSIVE_AUTH"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 102
    .line 103
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 104
    .line 105
    const-string v1, "PROCESS_ACTIVITY"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PROCESS_ACTIVITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 113
    .line 114
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 115
    .line 116
    const-string v1, "LOCK_DETECTION"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LOCK_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 124
    .line 125
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 126
    .line 127
    const-string v1, "CRITICAL_EVENT_DETECTION"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 135
    .line 136
    invoke-static {}, Lcom/samsung/android/knox/cmfa/AuthFactorType;->$values()[Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 141
    .line 142
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType$1;

    .line 143
    .line 144
    invoke-direct {v0}, Lcom/samsung/android/knox/cmfa/AuthFactorType$1;-><init>()V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 148
    .line 149
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/cmfa/AuthFactorType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
