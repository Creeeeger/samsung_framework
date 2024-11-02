.class final Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $surface:Landroid/view/SurfaceControl;

.field final synthetic $transaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic $visible:Z

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->$surface:Landroid/view/SurfaceControl;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->$visible:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 2
    .line 3
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->$surface:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->$visible:Z

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v3, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->surfaceTransactionApplier$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 33
    .line 34
    filled-new-array {v1}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->$visible:Z

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isExpandedChangedListener:Lkotlin/reflect/KFunction;

    .line 52
    .line 53
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    .line 56
    .line 57
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method
