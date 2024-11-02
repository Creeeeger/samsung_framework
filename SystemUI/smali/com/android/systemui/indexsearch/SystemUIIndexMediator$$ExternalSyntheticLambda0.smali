.class public final synthetic Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
