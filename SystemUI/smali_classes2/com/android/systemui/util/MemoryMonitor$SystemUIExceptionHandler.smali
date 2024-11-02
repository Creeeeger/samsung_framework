.class public final Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/MemoryMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/util/MemoryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/util/MemoryMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;-><init>(Lcom/android/systemui/util/MemoryMonitor;)V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    instance-of p1, p2, Ljava/lang/OutOfMemoryError;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    .line 8
    .line 9
    const-string p2, "OutOfMemoryError"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/android/systemui/HeapDumpHelper;->dump(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/MemoryMonitor;->printMemoryInfo(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
