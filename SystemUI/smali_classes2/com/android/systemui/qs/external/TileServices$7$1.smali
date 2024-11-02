.class public final Lcom/android/systemui/qs/external/TileServices$7$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/external/TileServices$7;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$7$1;->this$1:Lcom/android/systemui/qs/external/TileServices$7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices$7$1;->this$1:Lcom/android/systemui/qs/external/TileServices$7;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServices$7;->this$0:Lcom/android/systemui/qs/external/TileServices;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices$7$1;->this$1:Lcom/android/systemui/qs/external/TileServices$7;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServices$7;->this$0:Lcom/android/systemui/qs/external/TileServices;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    new-instance v3, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda2;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/systemui/qs/external/CustomTile;

    .line 41
    .line 42
    iget-boolean v5, v3, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    iget-object v5, v3, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 47
    .line 48
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    new-instance v5, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda2;

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    invoke-direct {v5, v3, v6}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/external/CustomTile;I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$7$1;->this$1:Lcom/android/systemui/qs/external/TileServices$7;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$7;->this$0:Lcom/android/systemui/qs/external/TileServices;

    .line 68
    .line 69
    iput-boolean v4, p0, Lcom/android/systemui/qs/external/TileServices;->mIsBootCompleted:Z

    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p0
.end method
