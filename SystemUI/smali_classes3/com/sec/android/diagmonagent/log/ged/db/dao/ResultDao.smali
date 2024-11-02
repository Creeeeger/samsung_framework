.class public final Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final MAX_KEEP_TIME:J

.field public final db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    const-wide/16 v1, 0x1e

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->MAX_KEEP_TIME:J

    .line 13
    .line 14
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    return-void
.end method

.method public static makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->serviceId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->eventId:Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 15
    .line 16
    iput v1, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->clientStatusCode:I

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->timestamp:J

    .line 19
    .line 20
    iput-wide v1, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->timestamp:J

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public final insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->eventId:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "eventId"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->serviceId:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "serviceId"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->clientStatusCode:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "clientStatusCode"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->timestamp:J

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v1, "timestamp"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "Result"

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    .line 47
    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 48
    .line 49
    .line 50
    return-void
.end method
