.class final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;
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
.field final synthetic $flags:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;->$flags:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;

    .line 20
    .line 21
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;->$flags:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 24
    .line 25
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;-><init>(ILcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
