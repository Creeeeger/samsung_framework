.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;


# instance fields
.field public final mGlobalObservers:Ljava/util/HashMap;

.field public final mSystemObservers:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method


# virtual methods
.method public final unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V
    .locals 2

    .line 1
    const-class v0, Landroid/provider/Settings$System;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-class v0, Landroid/provider/Settings$Global;

    .line 9
    .line 10
    if-ne p2, v0, :cond_2

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    .line 13
    .line 14
    :goto_0
    const-string p2, "edge_lighting"

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object p3, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    const-string p0, "EdgeLightingSettingsObserver"

    .line 45
    .line 46
    const-string/jumbo p1, "unregisterContentObserver : wrong table"

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method
