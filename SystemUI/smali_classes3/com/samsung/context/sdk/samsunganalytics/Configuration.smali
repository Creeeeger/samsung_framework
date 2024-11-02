.class public final Lcom/samsung/context/sdk/samsunganalytics/Configuration;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public auidType:I

.field public deviceId:Ljava/lang/String;

.field public enableAutoDeviceId:Z

.field public isAlwaysRunningApp:Z

.field public trackingId:Ljava/lang/String;

.field public userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    .line 11
    .line 12
    return-void
.end method
