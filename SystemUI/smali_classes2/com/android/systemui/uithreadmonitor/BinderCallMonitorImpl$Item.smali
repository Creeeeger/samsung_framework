.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final compareDuration:J

.field public stackTrace:Ljava/lang/String;

.field public final startTime:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->compareDuration:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->startTime:J

    return-void
.end method

.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;-><init>(J)V

    return-void
.end method
