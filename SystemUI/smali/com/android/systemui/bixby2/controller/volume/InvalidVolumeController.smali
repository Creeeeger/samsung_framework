.class public final Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final status:I

.field private final statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "fail"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;->statusCode:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;->status:I

    .line 2
    .line 3
    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;->statusCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
