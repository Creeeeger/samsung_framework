.class final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 10
    .line 11
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerTotalDrawCount:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerTotalDrawCount:I

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogTime:J

    .line 18
    .line 19
    sub-long v2, v0, v2

    .line 20
    .line 21
    const-wide/16 v4, 0x3e8

    .line 22
    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    if-ltz v2, :cond_0

    .line 26
    .line 27
    iget v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogCount:I

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogTime:J

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    iput v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogCount:I

    .line 38
    .line 39
    const-string p0, "DOZE_SUSPEND draw count="

    .line 40
    .line 41
    const-string v0, " totalCount="

    .line 42
    .line 43
    const-string v1, "\n"

    .line 44
    .line 45
    invoke-static {p0, v2, v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "UiThreadMonitor"

    .line 50
    .line 51
    invoke-static {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method
