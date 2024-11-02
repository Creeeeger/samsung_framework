.class public final synthetic Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/MemoryMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/MemoryMonitor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/Thread;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p0, "printMemoryInfo"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    const v1, 0x36ee80

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/util/MemoryMonitor;->startMonitoring(IZ)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    .line 55
    .line 56
    return-void

    .line 57
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-string v0, "check again after GC"

    .line 63
    .line 64
    const-string v7, "MemoryMonitor"

    .line 65
    .line 66
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance v2, Landroid/os/Debug$MemoryInfo;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 75
    .line 76
    .line 77
    const-class v0, Landroid/view/View;

    .line 78
    .line 79
    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    const-class v0, Landroid/view/ViewRootImpl;

    .line 84
    .line 85
    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    move-object v1, p0

    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/util/MemoryMonitor;->isLeakSuspect(Landroid/os/Debug$MemoryInfo;JJ)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lcom/android/systemui/HeapDumpHelper;->dump(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    const-string p0, "no issue"

    .line 105
    .line 106
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
