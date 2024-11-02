.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public duration:J

.field public enabled:Z

.field public infinite:Z

.field public timeOut:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->infinite:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;-><init>()V

    return-void
.end method
