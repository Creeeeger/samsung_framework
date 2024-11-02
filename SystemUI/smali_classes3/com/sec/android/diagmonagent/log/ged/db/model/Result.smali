.class public final Lcom/sec/android/diagmonagent/log/ged/db/model/Result;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public clientStatusCode:I

.field public eventId:Ljava/lang/String;

.field public id:I

.field public serviceId:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->id:I

    .line 6
    .line 7
    return-void
.end method
