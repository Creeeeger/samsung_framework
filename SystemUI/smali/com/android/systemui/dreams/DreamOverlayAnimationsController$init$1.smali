.class final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.dreams.DreamOverlayAnimationsController$init$1"
    f = "DreamOverlayAnimationsController.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dreams/DreamOverlayAnimationsController;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    check-cast p2, Landroid/view/View;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance p2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 12
    .line 13
    invoke-direct {p2, v0, p0, p3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 36
    .line 37
    sget v4, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->$r8$clinit:I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$ConfigurationBasedDimensions;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const v4, 0x7f07031f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-direct {v1, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$ConfigurationBasedDimensions;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 67
    .line 68
    invoke-direct {v3, v1, v4, v5}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 74
    .line 75
    check-cast v4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 81
    .line 82
    new-instance v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    invoke-direct {v5, v1, v6, v7}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V

    .line 88
    .line 89
    .line 90
    iput-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    iput v2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->label:I

    .line 93
    .line 94
    invoke-static {p1, v4, v5, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_2

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_2
    move-object v0, v3

    .line 102
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 105
    .line 106
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p0
.end method
