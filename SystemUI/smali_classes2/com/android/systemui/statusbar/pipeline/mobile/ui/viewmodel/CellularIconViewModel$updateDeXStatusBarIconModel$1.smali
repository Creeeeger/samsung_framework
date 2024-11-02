.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;-><init>(ILcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$updateDeXStatusBarIconModel$1"
    f = "MobileIconViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;

    .line 8
    .line 9
    check-cast p3, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 10
    .line 11
    check-cast p4, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 12
    .line 13
    check-cast p5, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 14
    .line 15
    check-cast p6, Lkotlin/coroutines/Continuation;

    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    .line 20
    .line 21
    invoke-direct {v0, p0, p6}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->Z$0:Z

    .line 25
    .line 26
    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$1:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$2:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$3:Ljava/lang/Object;

    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->Z$0:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$2:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$3:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 27
    .line 28
    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    .line 31
    .line 32
    iget v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->slotId:I

    .line 33
    .line 34
    iget v5, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->subscriptionId:I

    .line 35
    .line 36
    instance-of v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;

    .line 42
    .line 43
    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->iconId:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p1, v6

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget v0, v0, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v0, v6

    .line 53
    :goto_1
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget v1, v1, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    .line 56
    .line 57
    move v8, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v8, v6

    .line 60
    :goto_2
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget v1, v2, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    .line 63
    .line 64
    move v9, v1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move v9, v6

    .line 67
    :goto_3
    move-object v1, v10

    .line 68
    move v2, v7

    .line 69
    move v3, v4

    .line 70
    move v4, v5

    .line 71
    move v5, p1

    .line 72
    move v6, v0

    .line 73
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;-><init>(ZIIIIZII)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    .line 77
    .line 78
    invoke-static {p0, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->access$sendDeXStatusBarIconModel(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;)V

    .line 79
    .line 80
    .line 81
    return-object v10

    .line 82
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method
