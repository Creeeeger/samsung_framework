.class public final Lcom/android/systemui/qs/SecAutoTileManager$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onManagedProfileChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->hasActiveProfile()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 17
    .line 18
    const-string v2, "WorkMode"

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 21
    .line 22
    monitor-enter v3

    .line 23
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    monitor-exit v3

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 36
    .line 37
    const-string v2, "WorkMode"

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/systemui/qs/AutoAddTracker;->restoredTiles:Ljava/util/Map;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget v0, v0, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;->index:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, -0x1

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 58
    .line 59
    const-string v3, "WorkMode"

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v4, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    invoke-direct {v4, v2, v3, v0, v5}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v2, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 78
    .line 79
    const-string v0, "WorkMode"

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 82
    .line 83
    monitor-enter v2

    .line 84
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    const-string v0, ","

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_2
    monitor-exit v2

    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    monitor-exit v2

    .line 109
    throw p0

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    monitor-exit v3

    .line 112
    throw p0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 116
    .line 117
    const-string v2, "WorkMode"

    .line 118
    .line 119
    iget-object v3, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 120
    .line 121
    monitor-enter v3

    .line 122
    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 128
    monitor-exit v3

    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    return-void

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 135
    .line 136
    const-string v2, "WorkMode"

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 144
    .line 145
    const-string v0, "WorkMode"

    .line 146
    .line 147
    iget-object v2, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 148
    .line 149
    monitor-enter v2

    .line 150
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 151
    .line 152
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    const-string v0, ","

    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 161
    .line 162
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 166
    :cond_5
    monitor-exit v2

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_1
    return-void

    .line 173
    :catchall_2
    move-exception p0

    .line 174
    monitor-exit v2

    .line 175
    throw p0

    .line 176
    :catchall_3
    move-exception p0

    .line 177
    monitor-exit v3

    .line 178
    throw p0
.end method

.method public final onManagedProfileRemoved()V
    .locals 0

    .line 1
    return-void
.end method
