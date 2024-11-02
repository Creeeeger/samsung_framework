.class public final synthetic Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/MemoryMonitor;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->f$1:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v2, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, v0, p0, v3}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V

    .line 20
    .line 21
    .line 22
    const-string p0, "MemoryMonitor"

    .line 23
    .line 24
    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;->f$1:Z

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/MemoryMonitor;->printMemoryInfo(Z)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    iput-boolean p0, v0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 46
    .line 47
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 48
    .line 49
    invoke-direct {p0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/util/Date;

    .line 53
    .line 54
    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iput-object p0, v0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoLogTime:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iput-object p0, v0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    .line 72
    .line 73
    return-void

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
