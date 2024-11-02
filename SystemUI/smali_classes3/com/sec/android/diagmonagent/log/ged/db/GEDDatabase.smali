.class public final Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static volatile gedDatabase:Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;


# instance fields
.field public final context:Landroid/content/Context;

.field public final db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase$SQLiteHelper;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase$SQLiteHelper;-><init>(Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase$1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->context:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->gedDatabase:Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/sec/android/diagmonagent/log/ged/db/DataController;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->gedDatabase:Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->gedDatabase:Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->gedDatabase:Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
