.class public final Lcom/android/systemui/flags/ScreenIdleCondition;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/flags/ConditionalRestarter$Condition;


# instance fields
.field public listenersAdded:Z

.field public final observer:Lcom/android/systemui/flags/ScreenIdleCondition$observer$1;

.field public retryFn:Lkotlin/jvm/functions/Function0;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/flags/ScreenIdleCondition;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/flags/ScreenIdleCondition$observer$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/flags/ScreenIdleCondition$observer$1;-><init>(Lcom/android/systemui/flags/ScreenIdleCondition;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/flags/ScreenIdleCondition;->observer:Lcom/android/systemui/flags/ScreenIdleCondition$observer$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final canRestartNow(Lkotlin/jvm/functions/Function0;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/flags/ScreenIdleCondition;->listenersAdded:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/flags/ScreenIdleCondition;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/flags/ScreenIdleCondition;->listenersAdded:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/flags/ScreenIdleCondition;->observer:Lcom/android/systemui/flags/ScreenIdleCondition$observer$1;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/flags/ScreenIdleCondition;->retryFn:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    iget p0, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    return v1
.end method
