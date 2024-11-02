.class public final Lcom/android/keyguard/clock/ClockManager$AvailableClocks;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public final mClockInfo:Ljava/util/List;

.field public final mClocks:Ljava/util/Map;

.field public mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

.field public final synthetic this$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    return-void
.end method


# virtual methods
.method public final addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v0, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    .line 25
    .line 26
    new-instance v1, Lcom/android/keyguard/clock/ClockInfo$Builder;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/android/keyguard/clock/ClockInfo$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v3, p1, v1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/ClockPlugin;I)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v5, p1, v1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/ClockPlugin;I)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    invoke-direct {v6, p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Lcom/android/keyguard/clock/ClockInfo;

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v1, p0

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/clock/ClockInfo;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;I)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    move p2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p2, v1

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 19
    .line 20
    if-ne p1, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    if-nez p2, :cond_2

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->-$$Nest$mreload(Lcom/android/keyguard/clock/ClockManager;)V

    .line 31
    .line 32
    .line 33
    :cond_3
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v1, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    .line 21
    .line 22
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ge v2, v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/keyguard/clock/ClockInfo;

    .line 35
    .line 36
    iget-object v4, v4, Lcom/android/keyguard/clock/ClockInfo;->mId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    move v0, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v0, v1

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 63
    .line 64
    if-ne p1, v3, :cond_3

    .line 65
    .line 66
    move v1, v2

    .line 67
    :cond_3
    if-nez v0, :cond_4

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->-$$Nest$mreload(Lcom/android/keyguard/clock/ClockManager;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    return-void
.end method

.method public final reloadCurrentClock()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager;->isDocked()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/keyguard/clock/ClockManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object v1, v3

    .line 16
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v4, v0, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 23
    .line 24
    const-string v5, "docked_clock_face"

    .line 25
    .line 26
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    move-object v4, v2

    .line 33
    check-cast v4, Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/systemui/plugins/ClockPlugin;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :cond_1
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v4, v0, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    .line 53
    const-string v5, "lock_screen_custom_clock_face"

    .line 54
    .line 55
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v0, v4, v3}, Lcom/android/keyguard/clock/SettingsWrapper;->decode(Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    check-cast v2, Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    .line 72
    .line 73
    move-object v1, v0

    .line 74
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 75
    .line 76
    return-void
.end method
