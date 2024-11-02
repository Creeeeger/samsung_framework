.class public final Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# instance fields
.field public final mIsTopEdit:Z

.field public final mQSHost:Lcom/android/systemui/qs/QSHost;

.field public final mQSTileList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Ljava/util/List;Lcom/android/systemui/qs/QSHost;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Lcom/android/systemui/qs/QSHost;",
            "Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->this$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    .line 12
    .line 13
    iput-boolean p4, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mIsTopEdit:Z

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 30
    .line 31
    new-instance v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;-><init>(Lcom/android/systemui/plugins/qs/QSTile;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    .line 38
    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSHost:Lcom/android/systemui/qs/QSHost;

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    new-instance p2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    move v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;

    .line 23
    .line 24
    iget-boolean v5, v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    iget-object v5, v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 29
    .line 30
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isTileReady()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-interface {v5, p0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v5, p0, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    iput-boolean v1, v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-boolean v3, v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    .line 46
    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    move v2, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->this$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput-object v5, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 86
    .line 87
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-virtual {v2, v0, v5, v3, v1}, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance p1, Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-object v0, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {v0, v2, v4, p1}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;ZLjava/util/ArrayList;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSHost:Lcom/android/systemui/qs/QSHost;

    .line 122
    .line 123
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mIsTopEdit:Z

    .line 124
    .line 125
    invoke-direct {p1, v2, v0, p0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Lcom/android/systemui/qs/QSHost;Z)V

    .line 126
    .line 127
    .line 128
    iget-object p0, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 129
    .line 130
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void
.end method
