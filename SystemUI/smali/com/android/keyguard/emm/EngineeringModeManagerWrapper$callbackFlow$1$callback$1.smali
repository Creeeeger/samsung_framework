.class public final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 14
    .line 15
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method
