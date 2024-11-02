.class public final enum Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;


# instance fields
.field private mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 2
    .line 3
    const-string v1, "HIGH_DETECTION_RATE_MODE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 10
    .line 11
    const-string v2, "FAST_SPEED_MODE"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v1}, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->$VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 22
    .line 23
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
    iput p3, p0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->$VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 8
    .line 9
    return-object v0
.end method
