.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$7;
.super Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$7;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final networkCacheUpdated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$7;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleQosScoreCacheUpdated()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
