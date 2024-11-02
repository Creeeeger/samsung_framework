.class final Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;-><init>(Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.viewmodel.AuthBiometricFingerprintViewModel$iconAsset$1"
    f = "AuthBiometricFingerprintViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

    .line 18
    .line 19
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    iput-boolean p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$0:Z

    .line 23
    .line 24
    iput-boolean p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$1:Z

    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$0:Z

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$1:Z

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;->rotation:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p0, v1, :cond_5

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq p0, v1, :cond_2

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const p0, 0x7f12000d

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const p0, 0x7f120008

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const p0, 0x7f12000a

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const p0, 0x7f12000e

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    if-eqz p1, :cond_4

    .line 47
    .line 48
    const p0, 0x7f120007

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const p0, 0x7f12000b

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    if-eqz v0, :cond_6

    .line 57
    .line 58
    const p0, 0x7f12000f

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    if-eqz p1, :cond_7

    .line 63
    .line 64
    const p0, 0x7f120009

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_7
    const p0, 0x7f12000c

    .line 69
    .line 70
    .line 71
    :goto_0
    new-instance p1, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method
