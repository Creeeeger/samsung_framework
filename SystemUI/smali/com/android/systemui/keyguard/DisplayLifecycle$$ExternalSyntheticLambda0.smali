.class public final synthetic Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final synthetic f$1:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;Ldagger/Lazy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;->f$1:Ldagger/Lazy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;->f$1:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;I)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
