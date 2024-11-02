.class public final Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final AppId:Ljava/lang/String;

.field public final accessToken:Ljava/lang/String;

.field public apiKey:Ljava/lang/String;

.field public enableStreaming:Z

.field public requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

.field public final serverUrl:Ljava/lang/String;

.field public signingKey:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->AppId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accessToken:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->userId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->serverUrl:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    .line 24
    .line 25
    return-void
.end method
