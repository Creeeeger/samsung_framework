.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

.field public final currentClockId:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$mapNotNull$1;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final selectedClockSize:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 9
    .line 10
    sget-object p2, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    .line 11
    .line 12
    const-string p3, "lockscreen_use_double_line_clock"

    .line 13
    .line 14
    filled-new-array {p3}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/SettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$selectedClockSize$1;

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-direct {p2, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$selectedClockSize$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 33
    .line 34
    invoke-direct {v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$map$1;

    .line 38
    .line 39
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;->selectedClockSize:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$map$1;

    .line 43
    .line 44
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$currentClockId$1;

    .line 45
    .line 46
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$currentClockId$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$mapNotNull$1;

    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;->currentClockId:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository$special$$inlined$mapNotNull$1;

    .line 59
    .line 60
    return-void
.end method
