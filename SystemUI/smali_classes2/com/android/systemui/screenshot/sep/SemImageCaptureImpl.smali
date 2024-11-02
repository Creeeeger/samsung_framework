.class public final Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;
.super Lcom/android/systemui/screenshot/ImageCaptureImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final atmService:Landroid/app/IActivityTaskManager;

.field public final bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final useIdentityTransform:Z

.field public final windowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/view/IWindowManager;Landroid/app/IActivityTaskManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/android/systemui/screenshot/ImageCaptureImpl;-><init>(Landroid/view/IWindowManager;Landroid/app/IActivityTaskManager;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->windowManager:Landroid/view/IWindowManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->atmService:Landroid/app/IActivityTaskManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    .line 14
    const-string p1, "Screenshot"

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->useIdentityTransform:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final semCaptureTask(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;-><init>(Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;

    .line 57
    .line 58
    invoke-direct {p2, p0, p1, v3}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;-><init>(Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;ILkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    iput-object p0, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    iput v4, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 66
    .line 67
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-ne p2, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    :goto_1
    check-cast p2, Landroid/window/TaskSnapshot;

    .line 75
    .line 76
    if-nez p2, :cond_4

    .line 77
    .line 78
    new-instance p0, Lkotlin/Pair;

    .line 79
    .line 80
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-direct {p0, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_4
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p1, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->containsSecureLayers()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->TAG:Ljava/lang/String;

    .line 105
    .line 106
    const-string/jumbo v0, "semCaptureTask: snapshot is a secure layer."

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_5
    new-instance p0, Lkotlin/Pair;

    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p0, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object p0
.end method
