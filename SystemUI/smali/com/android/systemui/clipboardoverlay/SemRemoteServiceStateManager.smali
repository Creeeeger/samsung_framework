.class public final Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final remoteServiceKeySet:Ljava/util/ArrayList;


# instance fields
.field public final mBoardcasteSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mClipboardClearHandler:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

.field public final mContext:Landroid/content/Context;

.field public final mRemoteServiceStateMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "ltw_clipboard_sync_state"

    .line 4
    .line 5
    const-string/jumbo v2, "multi_control_connection_state"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "mcf_continuity_nearby_device_state"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v4, "samsungflow_clipboard_sync_state"

    .line 12
    .line 13
    .line 14
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->remoteServiceKeySet:Ljava/util/ArrayList;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mBoardcasteSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 7
    .line 8
    new-instance p2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "dexonpc_connection_state"

    .line 21
    .line 22
    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->initStateMap()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string/jumbo v1, "mcf_continuity_nearby_device_state"

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$McfContinuityConnectionStateChangeObserver;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$McfContinuityConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string/jumbo v1, "samsungflow_clipboard_sync_state"

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$SamsungFlowConnectionStateChangeObserver;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$SamsungFlowConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string v1, "ltw_clipboard_sync_state"

    .line 87
    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$LinkToWindowConnectionStateChangeObserver;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$LinkToWindowConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string/jumbo p2, "multi_control_connection_state"

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    new-instance v1, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$MultiControlConnectionStateChangeObserver;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$MultiControlConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Landroid/os/HandlerThread;

    .line 120
    .line 121
    const-string p2, "SemRemoteServiceStateManager"

    .line 122
    .line 123
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance p2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;Landroid/os/Looper;)V

    .line 140
    .line 141
    .line 142
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mClipboardClearHandler:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public final initStateMap()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->remoteServiceKeySet:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
