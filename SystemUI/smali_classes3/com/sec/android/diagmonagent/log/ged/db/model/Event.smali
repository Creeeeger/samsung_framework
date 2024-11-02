.class public final Lcom/sec/android/diagmonagent/log/ged/db/model/Event;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public description:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public eventId:Ljava/lang/String;

.field public expirationTime:J

.field public extension:Ljava/lang/String;

.field public id:I

.field public logPath:Ljava/lang/String;

.field public memory:Ljava/lang/String;

.field public networkMode:Z

.field public relayClientType:Ljava/lang/String;

.field public relayClientVersion:Ljava/lang/String;

.field public retryCount:I

.field public s3Path:Ljava/lang/String;

.field public sdkType:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public serviceAgreeType:Ljava/lang/String;

.field public serviceDefinedKey:Ljava/lang/String;

.field public serviceId:Ljava/lang/String;

.field public serviceVersion:Ljava/lang/String;

.field public status:I

.field public storage:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->id:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->deviceId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceVersion:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceAgreeType:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkVersion:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkType:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceDefinedKey:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->description:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientVersion:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientType:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->extension:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->networkMode:Z

    .line 37
    .line 38
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->memory:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->storage:Ljava/lang/String;

    .line 41
    .line 42
    const/16 v1, 0x64

    .line 43
    .line 44
    iput v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 48
    .line 49
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    .line 56
    .line 57
    return-void
.end method
