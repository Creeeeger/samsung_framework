.class public abstract Lcom/android/systemui/util/condition/ConditionalCoreStartable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field public final mConditionSet:Ljava/util/Set;

.field public final mMonitor:Lcom/android/systemui/shared/condition/Monitor;

.field public mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;-><init>(Lcom/android/systemui/shared/condition/Monitor;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/condition/Monitor;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mConditionSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onBootCompleted()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/condition/ConditionalCoreStartable;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mConditionSet:Ljava/util/Set;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->build()Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 35
    .line 36
    return-void
.end method

.method public abstract onStart()V
.end method

.method public final start()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/condition/ConditionalCoreStartable;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mConditionSet:Ljava/util/Set;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->build()Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 35
    .line 36
    return-void
.end method
