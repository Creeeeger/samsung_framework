.class public final enum Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_HOGP:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_LE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;


# instance fields
.field private final maxCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 2
    .line 3
    const-string v1, "SCANNING_FAILURE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 11
    .line 12
    const-string v2, "CONNECTION_FAILURE"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 19
    .line 20
    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 21
    .line 22
    const-string v5, "PAIRING_FAILURE"

    .line 23
    .line 24
    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 28
    .line 29
    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 30
    .line 31
    const-string v5, "CONNECTION_FAILURE_HOGP"

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_HOGP:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 38
    .line 39
    new-instance v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 40
    .line 41
    const-string v6, "CONNECTION_FAILURE_LE"

    .line 42
    .line 43
    const/4 v7, 0x4

    .line 44
    invoke-direct {v5, v6, v7, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_LE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 48
    .line 49
    new-instance v6, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 50
    .line 51
    const-string v7, "CONNECTION_FAILURE_WATCH"

    .line 52
    .line 53
    const/4 v8, 0x5

    .line 54
    invoke-direct {v6, v7, v8, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v6, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 58
    .line 59
    move-object v4, v5

    .line 60
    move-object v5, v6

    .line 61
    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->$VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->maxCount:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->$VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 8
    .line 9
    return-object v0
.end method
