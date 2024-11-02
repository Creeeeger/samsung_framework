.class public final Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mRingBellOfTowerRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const-wide/16 v4, 0x3e8

    .line 22
    .line 23
    add-long/2addr v2, v4

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    rem-long/2addr v6, v4

    .line 29
    sub-long/2addr v2, v6

    .line 30
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
