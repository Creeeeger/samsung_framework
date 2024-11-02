.class public final Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public sdkType:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public serviceAgreeType:Ljava/lang/String;

.field public serviceId:Ljava/lang/String;

.field public serviceVersion:Ljava/lang/String;

.field public status:I

.field public trackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->trackingId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->deviceId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceVersion:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceAgreeType:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkVersion:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkType:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->status:I

    .line 22
    .line 23
    return-void
.end method
