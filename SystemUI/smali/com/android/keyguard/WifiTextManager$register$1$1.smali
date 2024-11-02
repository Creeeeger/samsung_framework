.class public final Lcom/android/keyguard/WifiTextManager$register$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $update:Lkotlin/jvm/functions/Function2;

.field public final synthetic this$0:Lcom/android/keyguard/WifiTextManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/WifiTextManager;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/WifiTextManager;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->this$0:Lcom/android/keyguard/WifiTextManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->$update:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->this$0:Lcom/android/keyguard/WifiTextManager;

    .line 4
    .line 5
    iput-object p1, p2, Lcom/android/keyguard/WifiTextManager;->ssid:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean p2, p2, Lcom/android/keyguard/WifiTextManager;->connected:Z

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->$update:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method
