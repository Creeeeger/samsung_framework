.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final MAX_BUF_COUNT:I

.field public static final MAX_DURATION:J

.field public static final STRICT_MODE_ENABLED:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string/jumbo v0, "persist.sysui.ipc_monitor.enabled"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "persist.sysui.strictmode"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_0
    sput-boolean v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->STRICT_MODE_ENABLED:Z

    .line 28
    .line 29
    const-string v0, "debug.sysui.ipc_monitor.dur"

    .line 30
    .line 31
    const/16 v2, 0x1e

    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-long v2, v0

    .line 38
    const-wide/32 v4, 0xf4240

    .line 39
    .line 40
    .line 41
    mul-long/2addr v2, v4

    .line 42
    sput-wide v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    .line 43
    .line 44
    const-string v0, "debug.sysui.ipc_monitor.max"

    .line 45
    .line 46
    const/16 v2, 0x32

    .line 47
    .line 48
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_2

    .line 53
    .line 54
    const/16 v2, 0x3e8

    .line 55
    .line 56
    if-ge v0, v2, :cond_2

    .line 57
    .line 58
    move v1, v0

    .line 59
    :cond_2
    sput v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_BUF_COUNT:I

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
