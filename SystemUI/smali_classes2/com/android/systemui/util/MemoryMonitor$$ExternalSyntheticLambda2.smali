.class public final synthetic Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/MemoryMonitor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/MemoryMonitor;->startMonitoring(IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
