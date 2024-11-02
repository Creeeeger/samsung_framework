.class final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1"
    f = "EngineeringModeManagerWrapper.kt"
    l = {
        0x38
    }
    m = "emit"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;->emit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
