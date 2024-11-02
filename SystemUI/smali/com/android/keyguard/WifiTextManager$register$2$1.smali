.class public final Lcom/android/keyguard/WifiTextManager$register$2$1;
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
    iput-object p1, p0, Lcom/android/keyguard/WifiTextManager$register$2$1;->this$0:Lcom/android/keyguard/WifiTextManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/WifiTextManager$register$2$1;->$update:Lkotlin/jvm/functions/Function2;

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
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 2
    .line 3
    instance-of p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/keyguard/WifiTextManager$register$2$1;->this$0:Lcom/android/keyguard/WifiTextManager;

    .line 6
    .line 7
    iput-boolean p1, p2, Lcom/android/keyguard/WifiTextManager;->connected:Z

    .line 8
    .line 9
    iget-object p2, p2, Lcom/android/keyguard/WifiTextManager;->ssid:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/WifiTextManager$register$2$1;->$update:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method
